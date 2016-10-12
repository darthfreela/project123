class Trainee < ActiveRecord::Base
    validates :email, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/, on: :create }
    validates :cpf, uniqueness: true, presence: true
    validates :name, presence: true
    validates :birth, presence: true
    validates :bank_agency_wallet, presence: true
    validates :worked_days, presence: true
    validates :date_final_contract, presence: true
end
