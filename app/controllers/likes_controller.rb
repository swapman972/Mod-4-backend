class LikesController < ApplicationController
    skip_before_action :authorized

    def index
        likes = Like.all
        render json: likes, except: [:created_at, :updated_at]
    end

    def show
        like = Like.find_by(id: params[:id])
        render json: like, except: [:created_at, :updated_at]
    end

    def new
        @like = Like.new 
    end

    def create
        @like = Like.create(like_params)
        render json: @like, except: [:created_at, :updated_at]
    end

    def destroy
        @like = Like.find(params[:id])
        @like.destroy
        render json: @like, except: [:created_at, :updated_at]
    end

    private
        def like_params
            params.require(:like).permit!
        end
end
