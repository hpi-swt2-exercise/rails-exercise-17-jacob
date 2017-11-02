require 'rails_helper'

describe "Authors index page", type: :feature do

  it "should render without error" do
    visit authors_path
  end

  it "should link to new Author page" do
    visit authors_path

    expect(page).to have_link("Add author")
  end

  it "should link to author page with text show" do
    @author = create(:author)

    visit authors_path

    expect(page).to have_link("Show")
  end

  it "should have link destroy" do
    @author = create(:author)

    visit authors_path

    expect(page).to have_link("Destroy")
  end
end