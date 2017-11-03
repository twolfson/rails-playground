require("rails_helper")

RSpec.describe("GET /", :type => :request) do
  # non_existent: N/A, non_owner: N/A, logged_out: N/A
  before() do
    get(root_path)
  end

  it("has no errors") do
    expect(response).to(have_http_status(200))
  end

  it("links to articles") do
    # TODO: Replace with CSS selector, likely via Capybara
    expect(response.body).to(include("href=\"#{articles_path}\""))
  end
end
