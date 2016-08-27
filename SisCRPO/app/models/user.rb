class User < ActiveRecord::Base


  devise :database_authenticatable, :trackable, :validatable
validates :name, :username, presence: true, length: { minimum: 8, maximun: 30 } ,numericality: false
    validates :name, :username, presence: true, length: { minimum: 5, maximun: 30 } ,numericality: false
    validates :username, uniqueness: true, numericality: false
    validates :password, presence: true, length: { minimum: 8, maximun: 16 }, format: { with: /\A^(?=.*\d)(?=.*([a-z]|[A-Z]))([\x20-\x7E]){8,16}$\z/, on: :create }
    validates :password_confirmation, presence: true, length: { minimum: 8, maximun: 16 }
    validates :idFunc, uniqueness: true, numericality: true
    validates :email, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/, on: :create }
    validates :cpf, uniqueness: true, numericality: true, presence: true, length: { minimum: 11, maximun: 11 }
    validates :cpf, uniqueness: true, numericality: true, presence: true
    validates :nomeGuerra, presence: true
    validates :imagemUsuario, presence: true
    validates :idFuncao, numericality: true

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


#    def check_cpf(cpf=nil)
#      return false if cpf.nil?
#
#      winvalidos = %w{12345678909 11111111111 22222222222 33333333333 44444444444 55555555555 66666666666 77777777777 88888888888 99999999999 00000000000}
#      wvalor = cpf.scan /[0-9]/
#      if wvalor.length == 11
#        unless winvalidos.member?(wvalor.join)
#          wvalor = wvalor.collect{|x| x.to_i}
#          wsoma = 10*wvalor[0]+9*wvalor[1]+8*wvalor[2]+7*wvalor[3]+6*wvalor[4]+5*wvalor[5]+4*wvalor[6]+3*wvalor[7]+2*wvalor[8]
#          wsoma = wsoma - (11 * (wsoma/11))
#          wresult1 = (wsoma == 0 or wsoma == 1) ? 0 : 11 - wsoma
#          if wresult1 == wvalor[9]
#            wsoma = wvalor[0]*11+wvalor[1]*10+wvalor[2]*9+wvalor[3]*8+wvalor[4]*7+wvalor[5]*6+wvalor[6]*5+wvalor[7]*4+wvalor[8]*3+wvalor[9]*2
#            wsoma = wsoma - (11 * (wsoma/11))
#            wresult2 = (wsoma == 0 or wsoma == 1) ? 0 : 11 - wsoma
#            return true if wresult2 == wvalor[10] # CPF validado
#          end
#        end
#      end
#      return false # CPF invalidado
#    end