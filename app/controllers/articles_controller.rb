#ArticlesController is the Controller created from scratch
#Active record invoked by 'rails generate migration create_articles'
class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update, :show, :destroy]

#Invokes the GET /articles
  def index
    @articles = Article.all
  end

#Invokes the GET /articles/new
  def new
    @article = Article.new
  end

#Invokes the GET /articles/:id/edit
  def edit
  end

#Invokes the POST /articles
#Active Records accepts a constructor parameter either in hash or a block
  def create
    debugger
    #render plain: params[:article].inspect
    @article = Article.new(article_params)
    @article.user = User.first
    if @article.save
      flash[:success] = "Article was successfully created"
      redirect_to article_path(@article)
    else
      #Redirect back to form, failed to save article.
      #Can use :new instead [syntax]
      render 'new'
    end
  end

  def update
    if @article.update(article_params)
      flash[:success] = "Article was successfully updated"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  def show
  end

  def destroy
    @article.destroy
    flash[:danger] = "Article was successfully deleted"
    redirect_to articles_path
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :description)
    end

end
