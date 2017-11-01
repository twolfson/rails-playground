class ArticlesController < ApplicationController
  def new
    # Do nothing
  end

  def create
    # Create our article
    @article = Article.new(params.require(:article).permit(:title, :text))

    # Save our article
    # TODO: What's the difference between `save()` and `save!()`?
    @article.save()

    # Redirect to our article's page
    # TODO: What's the magic method for the article's URL and what does the magic in `redirect_to` look like?
    return redirect_to(@article)
  end
end
