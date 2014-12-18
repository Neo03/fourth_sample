include ApplicationHelper
include ValidSigninUser
include HaveErrorMessage

def sign_in(user, options={})
	if options[:no_capybara]
		remember_token = User.new_remember_token
		cookies[:remember_token] = remember_token
		user.update_attribute(:remember_token, User.encrypt(remember_token))		
	else
		visit signin_path
		valid_signin(user)
	end
end
