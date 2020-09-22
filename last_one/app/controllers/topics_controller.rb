class TopicsController < ApplicationController
    def index
        @topics = Topic.all
        render json: @topics
    end
    
    def show
        @topic = Topic.find(params[:id])
        render json: @topic
    end

    def create
        @topic = Topic.create(strong_params)
        render json: @topic
    end

    def edit
        @topic= Topic.find(params[:id])
     end
     
     def update
         @topic= Topic.find(params[:id])

        @topic.update(strong_params)
        render json: @topic
    end

    def destroy
        @topic = Topic.find(params[:id])
        @topic.destroy
        render json: {message: "Topic Deleted"}

        
    end

    def strong_params
        params.require(:topic).permit(:name,:course_id)
    end

end

