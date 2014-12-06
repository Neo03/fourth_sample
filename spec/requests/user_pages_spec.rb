require 'rails_helper'

describe "User pages" do
	subject { page }

	describe "profile page" do
	  let(:user) { FactoryGirl.create(:user) }
	  before { visit user_path(user) }

	  it { should have_content(user.name) }
	  it { should have_title(user.name) }
	end

	describe "signup page" do
		before { visit signup_path }
		let(:submit) { "Create my account" }

		it { should have_content('Sign up') }
		it { should have_title(full_title('Sign Up')) }

		describe "with invalid information" do
		  it "should not create a user" do
		  	expect { click_button submit }.not_to change(User, :count)
		  end
		end

		describe "with valid information" do
		  before do
		    fill_in "Name",          with: "Simakov Vasiliy"
		    fill_in "Email",         with: "vasim67@yandex.ru"
		    fill_in "Password",      with: "foobar"
		    fill_in "Confirmation",  with: "foobar"
		  end
		  it "should create a user" do
		  	expect { click_button submit }.to change(User, :count).by(1)
		  end
		end
	end
end
