require "rails_helper"

feature "Contact Creations" do
  scenario "Alow guest to create account" do
    sign_up()
    expect(page).to have_content I18n.t("devise.registrations.signed_up")
  end
end
