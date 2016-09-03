class Gpm < ActiveRecord::Base
<<<<<<< HEAD
=======
    belongs_to :opm
    validates :opm_id, presence: true
    validates :sigla, presence: true
    validates :nome, presence: true
    validates :ativo, presence: true
>>>>>>> 049b34b3b9379c31c4732893449938521ac8e6ce
end
