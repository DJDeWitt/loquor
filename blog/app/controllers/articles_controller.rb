class ArticlesController < ApplicationController

  include SessionsHelper

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)

    unless @article.valid?
       flash[:error] = @article.errors.full_messages.join("<br>").html_safe
     else
       flash[:success] = "Todo added successfully"
     end
    redirect_to :action => 'index'

    # if @article.save
    #   redirect_to :action => :index
    # else
    #   render 'new'
    # end
  end

  def article_params
    params.require(:article).permit(:hed, :dek, :body).merge(author_id: current_user.id)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end


end