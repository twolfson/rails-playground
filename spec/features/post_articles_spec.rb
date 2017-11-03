# Load in our dependencies
require("rails_helper")

# Start our tests
RSpec.describe("POST /articles", :type => :feature) do
  # non_existent: N/A, non_owner: N/A, logged_out: N/A
  describe("with valid data") do
    before do
      # Load our form-based page
      visit("/articles/new")

      # Fill out our form and submit it
      within("form[action=\"/articles\"][method=post]") do
        # TODO: Replace checking text for field with `name`
        fill_in("Title", :with => "Test title")
        fill_in("Text", :with => "Test text")
      end
      click_button(:visible => "input[type=submit]")
    end

    it("redirects to article's page") do
      expect(page.current_path).to(match(/^\/articles\/\d+$/))
    end

    it("creates a new article in our database") do
      articles = Article.all().to_ary()
      expect(articles.size).to(eq(1))
      expect(articles[0].title).to(eq("Test title"))
      expect(articles[0].text).to(eq("Test text"))
    end
  end

  describe("with invalid data") do
    before do
      # Load our form-based page
      visit("/articles/new")

      # Fill out our form and submit it
      within("form[action=\"/articles\"][method=post]") do
        # TODO: Replace checking text for field with `name`
        fill_in("Title", :with => "foo")
        fill_in("Text", :with => "Test text")
      end
      click_button(:visible => "input[type=submit]")
    end

    it("re-renders the same page with errors") do
      # TODO: Is it possible for Rails to submit to the same page?
      #   I feel like this is REST targeted which is impractical for HTML forms
      #   i.e. People can't submit and later refresh their page
      expect(page.current_path).to(match(/^\/articles$/))
      # TODO: Verify same values are in our form elements
    end
  end
end
