admin = User.new(id: -1,
                 name: 'Administrador',
                 username: 'admin',
                 password: 'crpo@2016#ftec',
                 password_confirmation: 'crpo@2016#ftec',
                 idFunc: '123',
  	     email: 'email@email.com',
  	     cpf: '12345678901',
  	     nomeGuerra: 'Nome de Guerra',
  	     imagemUsuario: '/caminho/da/pasta',
  	     idFuncao: '5432',
  	     dataNascimento: '01/01/2016',
  	     sexo: 'Masculino',
  	     endereco: 'Rua: Qualquer Coisa, 1313',
  	     bairro: 'Centro',
  	     cidade: 'Caxias do Sul',
  	     estado: 'RS',
  	     cep: '95100000',
  	     ativo: '1',
            )

unless User.where(username: admin.username).exists?
  admin.save!
end
