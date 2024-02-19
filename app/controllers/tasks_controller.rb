class TasksController < ApplicationController
    before_action :find_task,only: [:edit,:update,:destroy]
    def index
        if params[:category].blank? 
            @tasks=Task.all.order("created_at DESC")
        else
            @category_id=Category.find_by(name: params[:category]).id
            puts @category_id
            @tasks=Task.where(category_id: @category_id).order("created_at DESC")
        end
    end
    def show
        @task=Task.find(params[:id])
    end
    def new
        @task=Task.new
    end
    def create
        @task=Task.new(task_params)
        if @task.save
            flash[:notice]="Task created successfully"
            redirect_to task_path(@task)
        else
            render 'new',status: :unprocessable_entity
        end
    end
    def edit
    end
    def update
        if @task.update(task_params)
            flash[:notice]= "Task updated successfully."
            redirect_to task_path(@task)
        else
            render 'edit', status: :unprocessable_entity
        end 
    end
    def destroy
        @task.destroy
        flash[:notice]="Task Deleted Successfully"
        redirect_to  tasks_path
    end
    private 
    def task_params
        params.require(:task).permit(:title,:desc,:company,:url, :category_id)
    end
    def find_task
        @task=Task.find(params[:id])
    end
end
