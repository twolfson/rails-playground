# Load in our dependencies
require("rails_helper")

# Start our tests
RSpec.describe("GET /404", :type => :feature) do
  # non_existent: yes, non_owner: N/A, logged_out: N/A
  describe("to a non-existent route") do
    it("raises a routing error") do
      expect {
        visit("/does-not-exist")
      }.to(raise_error(ActionController::RoutingError))
    end
  end
end
