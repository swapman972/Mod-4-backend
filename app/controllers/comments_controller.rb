class CommentsController < ApplicationController
    skip_before_action :authorized

    def index
        comments = Comment.all
        render json: comments, except: [:created_at, :updated_at]
    end

    def show
        comment = Comment.find_by(id: params[:id])
        render json: comment, except: [:created_at, :updated_at]
    end

    def new
        @comment = Comment.new 
    end

    def create
        @comment = Comment.create(comment_params)
        render json: @comment, except: [:created_at, :updated_at]
    end

    def edit
        @comment = Comment.find(params[:id])
    end

    def update
        @comment = Comment.find(params[:id])
        @comment.update(comment_params)
        render json: @comment, except: [:created_at, :updated_at]
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        render json: @comment, except: [:created_at, :updated_at]
    end

    private
        def comment_params
            params.require(:comment).permit!
        end
end
