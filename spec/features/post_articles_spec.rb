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
      # TODO: Define consolidated method for filling out forms (outside of this test file; a general helper method)
      within("form[action=\"/articles\"][method=post]") do
        fill_in(:name => "article[title]", :with => "Test title")
        fill_in(:name => "article[text]", :with => "Test text")
      end
      click_button(:value => "Create Article")
    end

    it("redirects to article's page") do
      expect(page.title).to(eq("Article 1"))
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
        fill_in(:name => "article[title]", :with => "foo")
        fill_in(:name => "article[text]", :with => "Test text")
      end
      click_button(:value => "Create Article")
    end

    it("re-renders the same page with errors") do
      expect(page.title).to(eq("New article"))
      expect(page.current_path).to(match(/^\/articles$/))
      # TODO: Verify same values are in our form elements
    end
  end
end
