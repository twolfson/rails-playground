class ArticlesController < ApplicationController
  def new
    # Do nothing
  end

  def create
    render(:plain => params[:article].inspect())
  end
end
