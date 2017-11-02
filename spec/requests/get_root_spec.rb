require("rails_helper")

RSpec.describe("GET /", :type => :request)do
  it("has no errors") do
    get(root_path)
    expect(response).to have_http_status(200)
  end
end
