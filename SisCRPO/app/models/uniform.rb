class Uniform < ActiveRecord::Base

  validates :initials, presence: true, length: {minimum:3, maximum: 6}
  validates :name, presence: true, length: {maximum: 50}
  validates :description, presence: true, length: {maximum: 400}
  # formata a data na tela
  Time::DATE_FORMATS[:format_date] = "%d/%m/%y- %H:%Mhrs"

end
