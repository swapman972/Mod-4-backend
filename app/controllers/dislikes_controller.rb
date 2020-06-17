class DislikesController < ApplicationController
    skip_before_action :authorized

    def index
        dislikes = Dislike.all
        render json: dislikes, except: [:created_at, :updated_at]
    end

    def show
        dislike = Dislike.find_by(id: params[:id])
        render json: dislike, except: [:created_at, :updated_at]
    end

    def new
        @dislike = Dislike.new 
    end

    def create
        @dislike = Dislike.create(dislike_params)
        render json: @dislike, except: [:created_at, :updated_at]
    end

    def destroy
        @dislike = Dislike.find(params[:id])
        @dislike.destroy
        render json: @dislike, except: [:created_at, :updated_at]
    end

    private
        def dislike_params
            params.require(:dislike).permit!
        end
end