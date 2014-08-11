require "rails_helper"

feature "Applcation" do
  scenario "Can do stuff" do
    visit "/"

    expect(page).to have_content "Welcome"
  end

  scenario "User can view abouts page" do
    visit "/"
    click_on "About"
    expect(page).to have_content "About"
    expect(page).to have_content "Not much to say here."
  end

  scenario "User can create a gif" do
    visit "/"
    click_on "New gif"
    expect(page).to have_content "New gif"
    fill_in "Url", with: "http://1-ps.googleusercontent.com/h/www.catgifpage.com/gifs/255.gif.pagespeed.ce.1sdv_2smpP.gif"
    fill_in "Description", with: "Cats"
    click_on "Create gif"
    expect(page).to have_content "Cats"
  end

end
