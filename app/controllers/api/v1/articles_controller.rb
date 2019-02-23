class API::V1::ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :update, :destroy]

    def index
        articles = Article.all
        render json: articles, status: 200
    end

    def create
        @article = Article.new(article_params)
        if @article.save
            render json: @article, status: 201
        else
            render_json_error_messages
        end
    end

    def show
        render json: @article, status: 200
    end

    def update
        if @article.update(article_params)
            render json: @article, status: 200
        else
            render_json_error_messages
        end
    end

    def destroy
        @article.destroy
        :no_content
    end

    private

    def set_article
        @article = Article.find_by(id: params[:id])
        if !@article
            render json: {
                errors: {
                    message: {
                        article: "can't be found."
                    }
                }
            }, status: 404
        end
    end

    def render_json_error_messages
        render json: {
            errors: {
                messages: @article.errors.messages 
            }
        }, status: 422
    end


    def article_params
        params.require(:article).permit(:title, :author, :description, :content, :url)
    end
end
