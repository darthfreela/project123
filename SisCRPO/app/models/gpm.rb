class Gpm < ActiveRecord::Base
<<<<<<< HEAD
validates :sigla, :nome, :cidade, presence: true


=======
    belongs_to :opm
    validates :opm_id, presence: true
    validates :sigla, presence: true
    validates :nome, presence: true
    validates :ativo, presence: true
>>>>>>> 5ee5273b707de87db1151e9b2460ae3ac285e0b2
end
