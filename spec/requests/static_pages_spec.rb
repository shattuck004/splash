require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1',    text: 'Sample App') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector 'title', text: '| Home' }
  end

  describe "Signup page" do
    before { visit signup_path }

    it { should have_selector('h1',    text: 'SignUp') }
    it { should have_selector('title', text: full_title('SignUp')) }
  end
end
