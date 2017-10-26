require 'rails_helper'

describe "Authors index page", type: :feature do
  it "should render without error" do
    visit authors_path
  end
end