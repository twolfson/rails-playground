# Load in our dependencies
require("rails_helper")

# Start our tests
RSpec.describe("GET /", :type => :feature) do
  # non_existent: N/A, non_owner: N/A, logged_out: N/A
  before() do
    visit("/")
  end

  it("has no errors") do
    expect(page.status_code).to(eq(200))
  end

  it("links to articles") do
    expect(page.title).to(eq("Welcome!"))
    expect(find_link(:href => articles_path)).not_to(eq(nil))
  end
end
