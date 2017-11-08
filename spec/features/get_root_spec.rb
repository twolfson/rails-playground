# Load in our dependencies
require("rails_helper")

# Start our tests
RSpec.describe("GET /", :type => :feature, :js => true) do
  # non_existent: N/A, non_owner: N/A, logged_out: N/A
  context("as a vanilla page") do
    before() do
      visit("/")
    end

    it("has no errors") do
      expect(page.status_code).to(eq(200))
    end

    it("links to articles") do
      expect(page.title).to(eq("Welcome!"))
      expect(find_link(:href => articles_path)).not_to(eq(nil))
    end
  end

  context("as an interactive page") do
    before() do
      visit("/")
      expect(page.status_code).to(eq(200))
    end

    fit("changes title on click") do
      expect(find("#message").text).to(eq("Hello, Rails!"))
      click_button(:id => "change_message")
      expect(find("#message").text).to(eq("Hallo, Rails!"))
    end
  end
end
