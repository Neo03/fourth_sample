require 'rails_helper'

describe "Micropost pages" do
  subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }

  describe "micropost creation" do
    before { visit root_path }

    describe "with valid information" do
      it "should not create a micropost" do
      	expect {click_button "Post"}.not_to change(Micropost, :count)
      end
      describe "error messages" do
        before { click_button "Post" }
        it { should have_content('error') }
      end
    end

    describe "with valid information" do
      before { fill_in 'micropost_content', with: "Lorem ipsum" }
      it "should create a micropost" do
      	expect { click_button "Post" }.to change(Micropost, :count).by(1)
      end
    end
  end

  describe "micropost destruction" do
    before { FactoryGirl.create(:micropost, user: user) }
    describe "as correct user" do
      before { visit root_path }
      it "should delete a micropost" do
        expect { click_link "delete" }.to change(Micropost, :count).by(-1) 
      end
    end
  end

  describe "as not correct user" do      
      let(:another_user) { FactoryGirl.create(:user) }
      before do
        FactoryGirl.create(:micropost, user: user)
        sign_in another_user
        visit users_path

        it { should_not have_link('delete', href: user_path(Micropost.first)) }
      end    
  end

  describe "pagination" do
    it "should paginate the feed" do
      40.times { FactoryGirl.create(:micropost, user: user, content: "Consectetur add test") }
      visit root_path
      expect(page).to have_selector("div.pagination") 
    end
  end
end