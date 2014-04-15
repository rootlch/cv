require 'spec_helper'

describe "Notes" do
  describe "Home page" do
    it "a get request should be successful" do
      get root_path
      expect(response).to be_success
    end
  end
end
