require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
  describe "GET index" do
    get(:index)
    assert_response(:success)
  end
end
