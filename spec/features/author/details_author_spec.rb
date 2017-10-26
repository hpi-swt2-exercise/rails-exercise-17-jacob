require 'rails_helper'

describe "Author details page", type: :feature do

  it "should show Alan in details page" do
    @author = create(:author)

    visit author_path(@author)

    expect(page).to have_text("Alan")
  end

end