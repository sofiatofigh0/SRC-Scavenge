class ResourcesController < ApplicationController
    def index
        @Resources = Resource.all
        render json: @Resources
    end
    
    def show
        @Resource = Resource.find(params[:id])
        render json: @Resource
    end

    def create
        @Resource = Resource.create(strong_params)
        render json: @Resource
     
    end

    def edit
        @Resource=Resource.find(params[:id])
     end
     
     def update
         @Resource=Resource.find(params[:id])

        @Resource.update(strong_params)
        render json: @Resource
    end

    def destroy
        @Resource = Resource.find(params[:id])
        @Resource.destroy
        render json: {message: "Resource Deleted"}

        
    end

    def strong_params
        params.require(:resource).permit(:name, :private, :description, :topic_id, :link,:creator_id)
    end
end
