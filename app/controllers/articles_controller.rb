class ArticlesController < ApplicationController
  def index
    @articles = Article.all()
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    # Define a base article to detect errors on
    @article = Article.new()
  end

  def create
    # Create our article
    @article = Article.new(article_params)

    # If our article saves with no validation errors, redirect to its new page
    # TODO: What's the difference between `save()` and `save!()`?
    # TODO: What's the magic method for the article's URL and what does the magic in `redirect_to` look like?
    if @article.save()
      return redirect_to(@article)
    # Otherwise, render our page with its errors
    # TODO: Can we use a symbol for new?
    else
      render("new")
    end
  end

  private
    def article_params
      return params.require(:article).permit(:title, :text)
    end
end
