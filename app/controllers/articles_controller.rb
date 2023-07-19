class ArticlesController < ApplicationController
  def show
    debugger
    @article = Article.find(params[:id])
    @title = @article.title
    @description = @article.description
  end
end
