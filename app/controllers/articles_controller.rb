class ArticlesController < ApplicationController
  def index
  end

  def new
    @article = Article.new

  end
  def create
    @article = Article.new(content: params[:content, link: "lampen"])

    respond_to do |format|
      if @article.save
        redirect_back(fallback_location: root_url)
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end 
  end
  private
  def article_params
    params.require(:article).permit(:content)
  end
end
