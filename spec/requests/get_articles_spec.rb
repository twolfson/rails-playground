require("rails_helper")

RSpec.describe("GET /articles", :type => :request)do
  it("has no errors") do
    get(articles_path)
    expect(response).to have_http_status(200)
  end
end
