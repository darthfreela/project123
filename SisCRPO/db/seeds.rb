admin = User.new(id: -2,
                 name: 'ad',
                 username: 'ad',
                 password: 'admin123',
                 password_confirmation: 'admin123',
                 )

unless User.where(username: admin.username).exists?
  admin.save!
end
