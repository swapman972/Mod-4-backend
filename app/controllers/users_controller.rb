class UsersController < ApplicationController
    def index
        users = User.all
        render json: users, except: [:created_at, :updated_at]
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user, except: [:created_at, :updated_at]
    end

    def new
        @user = User.new 
    end

    def create
        user = User.create(user_params)
        if user.valid?
          render json: @user, except: [:created_at, :updated_at], status: :created
        else 
          render json: { error: "failed to created user" }, status: :not_acceptable
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        render json: @user, except: [:created_at, :updated_at]
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: @user, except: [:created_at, :updated_at]
    end

    private
        def user_params
            params.require(:user).permit!
        end
end
