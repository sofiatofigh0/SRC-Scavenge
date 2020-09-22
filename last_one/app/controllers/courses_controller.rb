class CoursesController < ApplicationController
    
    def index
        @courses = Course.all
        render json: @courses
    end
    
    def show
        @course = Course.find(params[:id])
        render json: @course
    end

    def create
        @course = Course.create(strong_params)
        render json: @course
     
    end

    def edit
        @course=Course.find(params[:id])
     end
     
     def update
         @course=Course.find(params[:id])

        @course.update(strong_params)
        render json: @course
    end

    def destroy
        @course = Course.find(params[:id])
        @course.destroy
        render json: {message: "course Deleted"}

        
    end

    def strong_params
        params.require(:course).permit(:name)
    end
end
