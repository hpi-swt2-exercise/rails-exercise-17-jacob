require 'rails_helper'

describe "Edit author page", type: :feature do

  before do
    @author = create(:author)
  end

  it "should render without error" do
    visit edit_author_path(@author)
  end
end