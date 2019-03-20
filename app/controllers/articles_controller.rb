class ArticlesController < InheritedResources::Base

  def create
    @article = Article.new(article_params)
    binding.pry
    @article.author = current_user
    create!
  end

  private

    def article_params
      params.require(:article).permit(:title, :body)
    end
end

