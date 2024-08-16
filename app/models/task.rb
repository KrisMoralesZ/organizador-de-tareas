class Task
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :description, type: String
  field :due_date, type: Date
  field :code, type: string

  belongs_to :category
  belongs_to :owner, class_name: 'User'
  has_many :participating_users, class_name: 'Participant', dependent: :destroy # Here we have to specify the model class name
  has_many :notes

  validates :participating_users, presence: true
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validate :due_date_not_in_past

  before_create :create_code
  after_create :send_email

  accepts_nested_attributes_for :participating_users, allow_destroy: true

  def participants
    participating_users.includes(:user).map(&:user)
  end
  def due_date_not_in_past
    return if due_date.blank?
    return if due_date > Date.today

    # errors.add() add an error message to the object errors collection for the model
    errors.add(:due_date, I18n.t('task.errors.due_date_not_in_past'))
  end
  def create_code
    self.code = "#{owner_id}#{Time.now.to_i.to_s(36)}#{SecureRandom.hex(8)}"
  end

  def send_email
    return
    return unless Rails.env.development?
    (participants + [owner]).each do |user|
      ParticipantMailer.with(user: user, task: self).new_task_email.deliver! # trigger the mailer
    end
  end
end
