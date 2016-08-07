admin = User.new(id: -1,
                 name: 'Administrador',
                 username: 'admin',
                 password: 'crpo@2016#ftec',
                 password_confirmation: 'crpo@2016#ftec'
                )

unless User.where(username: admin.username).exists?
  admin.save!
end
