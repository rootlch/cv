require 'spec_helper'

describe "Notes" do
  subject { page }

  describe "Home page" do
    it "a get request should be successful" do
      get root_path
      expect(response).to be_success
    end

    before { visit root_path }
    it { should have_selector('h1', text: 'CV') }
    it { should have_selector('h2', text: "Personal Details") }
    it { should have_selector('h2', text: "Education and Qualification") }
    it { should have_selector('h2', text: "Work Experience") }
    it { should have_selector('h2', text: "Interest and Achievements") }
    it { should have_selector('h2', text: "Skills") }
    it { should have_content("Reference available upon request") }
  end
end
