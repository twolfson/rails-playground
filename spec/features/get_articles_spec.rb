# Load in our dependencies
require("rails_helper")

# Start our tests
RSpec.describe("GET /articles", :type => :feature) do
  # non_existent: yes, non_owner: N/A, logged_out: N/A
  describe("with no articles") do
    it("has no errors") do
      visit("/articles")
      expect(page.status_code).to(eq(200))
    end
  end

  describe("with articles") do
    it("lists article content") do
      # Set up our fixtures
      create(:article)
      create(:article2)

      # Make our request
      visit("/articles")
      expect(page.status_code).to(eq(200))

      # Verify our content
      expect(page.title).to(eq("Articles"))
      expect(page).to(have_content("First title"))
      expect(page).to(have_content("First text"))
      expect(page).to(have_content("Second title"))
    end
  end
end
