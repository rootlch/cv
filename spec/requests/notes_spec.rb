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
    it { should have_selector('h2#personal', text: "Personal Details") }
    it { should have_selector('h2#education', text: "Education and Qualification") }
    it { should have_selector('h2#experience', text: "Work Experience") }
    it { should have_selector('h2#skills', text: "Skills") }
    it { should have_selector('h2#objectives', text: "Objectives") }
    it { should have_content("Reference available upon request") }

    describe "variable" do
    end
  end
end
