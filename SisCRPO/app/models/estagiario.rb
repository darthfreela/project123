class Estagiario < ActiveRecord::Base
    validates :email, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/, on: :create }
    validates :cpf, uniqueness: true, presence: true
    validates :cpf, uniqueness: true, presence: true
    validates :nome, presence: true
    validates :data_nascimento, presence: true
    validates :vigencia_contrato, presence: true
    validates :agcc, presence: true
    validates :dias_trabalhados, presence: true
end
