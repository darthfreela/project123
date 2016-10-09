module ControllerMacros
  def login_with(user, mapping)
    before(:each) do
      @request.env['devise.mapping'] = Devise.mappings[mapping]
      sign_in FactoryGirl.create(user)
    end
  end
end