require("rails_helper")

RSpec.describe("GET /articles", :type => :request) do
  # logged_out: N/A, non_existent: N/A, not_found: yes
  describe("with no articles") do
    it("has no errors") do
      get(articles_path)
      expect(response).to have_http_status(200)
    end
  end

  describe("with articles") do
    it("lists article content") do
      get(root_path)
      expect(response).to(have_http_status(200))
      expect(response.body).to(include("foo"))
    end
  end
end
