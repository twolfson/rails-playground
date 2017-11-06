# Load in our dependencies
require("rails_helper")

# Start our tests
RSpec.describe("GET /article/:id", :type => :request) do
  # non_existent: yes, non_owner: N/A, logged_out: N/A
  describe("for a non-existent article") do
    it("returns a 404") do
      expect {
        get("/articles/does-not-exist")
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
      get("/articles/#{article.id}")
      expect(response).to(have_http_status(200))

      # Verify our content
      # TODO: Add page title assertion
      expect(response.body).to(include("First title"))
      expect(response.body).to(include("First text"))
    end
  end
end
