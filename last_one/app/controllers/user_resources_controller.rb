class UserResourcesController < ApplicationController

    def index
        @user_resource = UserResource.all
        render json: @user_resource
    end


    def show
        @user_resource = UserResource.find(params[:id])
        render json: @user_resource
    end

    def create
        @user_resource = UserResource.create(strong_params)
        render json: @user_resource
     
    end

    def destroy
        @user_resource = UserResource.find_by(id: params[:id])
        if @user_resource
            @user_resource.destroy
            render json: @user_resource
        else 
            render json: {error: "Nice try, you can only delete your own"}
        end
    end

    def strong_params
        params.require(:user_resource).permit(:user_id,:resource_id,:name,:link,:description,:creator_category,:creator_name,:creator_id)
    end
end
