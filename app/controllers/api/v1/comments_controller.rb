class API::V1::CommentsController < ApplicationController
    before_action :set_article, only: [:index, :create, :destroy]
    before_action :set_comment, only: [:destroy]

    def index
        render json: @article.comments, status: 200
    end

    def create
        @comment = @article.comments.build(comment_params)
        if @comment.save
            render json: @comment, status: 201
        else
            render_json_error_messages
        end
    end

    def destroy
        @comment.destroy
    end

    private

    def set_article
        @article = Article.find_by(id: params[:article_id])
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

    def set_comment
        @comment = @article.comments.find_by(id: params[:id])
        if !@comment
            render json: {
                errors: {
                    message: {
                        comment: "can't be found."
                    }
                }
            }, status: 404
        end
    end

    def render_json_error_messages
        render json: {
            errors: {
                messages: @comment.errors.messages 
            }
        }, status: 422
    end

    def comment_params
        params.require(:comment).permit(:content, :review)
    end
end