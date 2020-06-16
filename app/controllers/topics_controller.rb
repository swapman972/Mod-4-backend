class TopicsController < ApplicationController
    def index
        topics = Topic.all
        render :json => topics.to_json(:include => { :comments => {:include => :user} })
    end

    def show
        topic = Topic.find_by(id: params[:id])
        render json: topic, except: [:created_at, :updated_at]
    end

    def new
        @topic = Topic.new 
    end

    def create
        @topic = Topic.create(topic_params)
        render json: @topic, except: [:created_at, :updated_at]
    end

    def edit
        @topic = Topic.find(params[:id])
    end

    def update
        @topic = Topic.find(params[:id])
        @topic.update(topic_params)
        render json: @topic, except: [:created_at, :updated_at]
    end

    def destroy
        @topic = Topic.find(params[:id])
        @topic.destroy
        render json: @topic, except: [:created_at, :updated_at]
    end

    private
        def topic_params
            params.require(:topic).permit!
        end
end
