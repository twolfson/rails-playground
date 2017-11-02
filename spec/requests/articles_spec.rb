require("rails_helper")

RSpec.describe("Articles", :type => :request)do
  describe("GET /articles") do
    it("has no errors") do
      get(articles_index_path)
      expect(response).to have_http_status(200)
    end
  end
end
