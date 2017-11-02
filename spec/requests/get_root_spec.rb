require("rails_helper")

RSpec.describe("GET /", :type => :request) do
  # logged_out: N/A, non_existent: N/A, not_found: N/A
  before() do
    get(root_path)
  end

  it("has no errors") do
    expect(response).to(have_http_status(200))
  end

  it("links to articles") do
    expect(response.body).to(include("href="))
  end
end
