class ArticlesController < InheritedResources::Base
  load_and_authorize_resource except: [:show, :index]
  def create
    @article = Article.new(article_params)
    @article.author = current_user
    create!
  end

  private

    def article_params
      params.require(:article).permit(:title, :body)
    end
end

