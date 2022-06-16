require "rails_helper"

feature "Contact Creations" do
  scenario "alows access to contact page" do
    visit "/contacts/new"

    expect(page).to have_content I18n.t("contacts.contact_us")
  end
end