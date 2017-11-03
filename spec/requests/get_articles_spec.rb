# Load in our dependencies
require("rails_helper")

# Start our tests
RSpec.describe("GET /articles", :type => :request) do
  # non_existent: yes, non_owner: N/A, logged_out: N/A
  describe("with no articles") do
    it("has no errors") do
      get("/articles")
      expect(response).to have_http_status(200)
    end
  end

  describe("with articles") do
    it("lists article content") do
      # Set up our fixtures
      create(:article)
      create(:article2)

      # Make our request
      get("/articles")
      expect(response).to(have_http_status(200))

      # Verify our content
      expect(response.body).to(include("First title"))
      expect(response.body).to(include("First text"))
      expect(response.body).to(include("Second title"))
    end
  end
end
