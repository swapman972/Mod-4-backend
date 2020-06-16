class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

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
          token = encode_token(user_id: user.id)
          # render json: @user, except: [:created_at, :updated_at], status: :created
          render json: { user: user, jwt: token }, status: :created
        else 
          render json: { error: user.errors.full_messages }, status: :not_acceptable
        end
    end

    def profile
      render json: current_user, status: :accepted
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
