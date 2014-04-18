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

    it { should have_link("Personal Details", href: "#personal") }
    it { should have_link("Education and Qualification", href:"#education") }
    it { should have_link("Work Experience", href: "#experience") }
    it { should have_link("Skills", href: "#skills") }
    it { should have_link("Objectives", href: "#objectives") }
    it { should have_link("Send me an email", href:"mailto:chiahau300@gmail.com?Subject=Job%20Offer") }
  end
end
