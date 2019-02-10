class API::V1::ArticlesController < ApplicationController

    def index
        articles = Article.all
        render json: articles, status: 200
    end

    def create
        article = Article.new(article_params)
        if article.save
            render json: article, status: 201
        end
    end

    private

    def article_params
        params.require(:article).permit(:title, :author, :description, :url)
    end
end
