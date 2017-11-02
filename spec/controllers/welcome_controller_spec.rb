require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
  context("GET index") do
    it("has no errors") do
      get(:index)
      assert_response(:success)
    end
  end
end
