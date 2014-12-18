module HaveErrorMessage 
	#In Bootstrap3 alert-error renamed at alert-danger
	RSpec::Matchers.define :have_error_message do |message|
		match do |page|
			expect(page).to have_selector('div.alert.alert-danger', text: message)  
		end
	end
end