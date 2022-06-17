require "rails_helper"

feature "Contact Creations" do
  scenario "Alow access to contact page" do
    visit "/contacts/new"

    expect(page).to have_content I18n.t("contacts.contact_us")
  end

  scenario "Allow a guest to create contact" do
    visit "/contacts/new"
    fill_in :contact_email, :with => "Mike"
    fill_in :contact_message, :with => "Something"
    click_button "Send Message"

    expect(page).to have_content "Created"
  end
end