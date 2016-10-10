class Function < ActiveRecord::Base

  validates :initials, presence: true, length: {minimum:3, maximum: 6}
  validates :name, presence: true, length: {maximum: 50}
  validates :vacancies, presence: true, numericality: { :greater_than_or_equal_to => 0 }
  # formata a data na tela
  Time::DATE_FORMATS[:format_date] = "%d/%m/%y- %H:%Mhrs"

  has_many :users

end
