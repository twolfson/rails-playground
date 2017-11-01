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
    # DEV: `save()` returns true/false for validation whereas `save!()` will raise an error
    #   https://apidock.com/rails/v2.3.8/ActiveRecord/Base/save
    #   https://apidock.com/rails/v2.3.8/ActiveRecord/Base/save!
    # DEV: Under the hood `redirect_to` will use `url_for` on `@article`
    #  `url_for` eventually returns `*_url(*)` (e.g. `article_url(article)`)
    #   https://apidock.com/rails/ActionController/Base/redirect_to
    #   https://apidock.com/rails/ActionController/Base/url_for
    #   https://apidock.com/rails/ActionController/PolymorphicRoutes/polymorphic_url
    if @article.save()
      return redirect_to(@article)
    # Otherwise, render our page with its errors
    # DEV: We could use a string for `render` but providing an action feels clearer
    else
      render(:action => :new)
    end
  end

  private
    def article_params
      return params.require(:article).permit(:title, :text)
    end
end
