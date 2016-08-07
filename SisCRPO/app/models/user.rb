class User < ActiveRecord::Base
  devise :database_authenticatable, :trackable, :validatable
  validates :name, :username, presence: true
  validates :username, uniqueness: true

  def email_required?
    false
  end

  def email_changed?
    false
  end

  def enable=(enable)
    self.locked_at = true.to_s != enable ? DateTime.now : nil
  end

  def enable
    locked_at.nil?
  end

  def enable?
    locked_at.nil?
  end
end
