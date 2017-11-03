# Load in our dependencies
require("rails_helper")

# Start our tests
RSpec.describe("POST /articles", :type => :request) do
  # non_existent: N/A, non_owner: N/A, logged_out: N/A
  describe("with valid data") do
    before do
      # Load our form-based page
      # TODO: Consolidate status check into initial load
      get("/articles/new")
      expect(response).to have_http_status(200)

      # Fill out our form and submit it
    end

    it("redirects to articles listing") do
    end

    skip("creates a new article in our database") do
    end
  end

  describe("with invalid data") do
    skip("re-renders the same page with errors") do
    end
  end
end
