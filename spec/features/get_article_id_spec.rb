# Load in our dependencies
require("rails_helper")

# Start our tests
RSpec.describe("GET /article/:id", :type => :feature) do
  # non_existent: yes, non_owner: N/A, logged_out: N/A
  describe("for a non-existent article") do
    it("returns a 404") do
      expect {
        visit("/articles/does-not-exist")
      }.to(raise_error(ActiveRecord::RecordNotFound))
    end
  end

  describe("for an existent article") do
    it("renders article's content") do
      # Set up our fixtures
      # DEV: We require page value assertion so our future checks are valid
      article = create(:article)
      expect(article.id).to(eq(1))

      # Make our request
      visit("/articles/#{article.id}")
      expect(page.status_code).to(eq(200))

      # Verify our content
      # TODO: Add page title assertion
      expect(page).to(have_content("First title"))
      expect(page).to(have_content("First text"))
    end
  end
end
