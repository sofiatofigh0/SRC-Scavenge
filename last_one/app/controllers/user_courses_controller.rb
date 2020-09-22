class UserCoursesController < ApplicationController
    def index
        @users = UserCourse.all
        render json: @users
    end
    
    def show
        @user = UserCourse.find(params[:id])
        render json: @user
    end

    def create
        @user = UserCourse.create(strong_params)
        render json: @user
     
    end

    def edit
        @user= UserCourse.find(params[:id])
     end
     
     def update
         @user= UserCourse.find(params[:id])

        @user.update(strong_params)
        render json: @user
    end

    def destroy
        @user = UserCourse.find(params[:id])
        @user.destroy
        render json: {message: "user Deleted"}

        
    end

    def strong_params
        params.require(:user_course).permit(:user_id,:course_id)
    end
end
