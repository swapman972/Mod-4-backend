class GroupsController < ApplicationController
    skip_before_action :authorized
    
    def index
        groups = Group.all
        render json: groups, except: [:created_at, :updated_at]
    end

    def show
        group = Group.find_by(id: params[:id])
        render json: group, except: [:created_at, :updated_at]
    end
end
