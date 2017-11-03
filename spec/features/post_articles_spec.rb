# Load in our dependencies
require("rails_helper")

# Start our tests
RSpec.describe("POST /articles", :type => :feature) do
  # non_existent: N/A, non_owner: N/A, logged_out: N/A
  describe("with valid data") do
    before do
      # Load our form-based page
      visit("/articles/new")

      # Fill out our form and submit it
      within("form[action=\"/articles\"][method=post]") do
        fill_in("Title", :with => "Test title")
        fill_in("Text", :with => "Test text")
      end
      click_button("Create Article")
    end

    skip("redirects to articles listing") do
      expect(current_url).to(equal("/articles"))
    end

    skip("creates a new article in our database") do
    end
  end

  describe("with invalid data") do
    skip("re-renders the same page with errors") do
    end
  end
end