require("rails_helper")

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
      article = create(:article)

      # Make our request
      get("/articles/#{article.id}")
      expect(response).to(have_http_status(200))

      # Verify our content
      expect(response.body).to(include("First title"))
      expect(response.body).to(include("First text"))
    end
  end
end