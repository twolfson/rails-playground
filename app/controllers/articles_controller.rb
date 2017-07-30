class ArticlesController < ApplicationController
  def new
    @article = Article.new()
  end

  def create
    # Create and save our article
    @article = Article.new(article_params())
    if @article.save()
      # Redirect to our article's page to avoid double submissions
      redirect_to(@article)
    else
      render('new')
    end
  end

  def show
    @article = Article.find(params.require(:id))
  end

  def index
    @articles = Article.all()
  end

  private
    def article_params
      return params.require(:article).permit(:title, :text)
    end
end
