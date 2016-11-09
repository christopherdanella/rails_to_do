class TasksController < ApplicationController

  def new
  end


  def create 
    @task = Task.new(task_params)
    if @task.save
      redirect_to(task)
    else
      @errors = @task.errors.full_messages
      redirect_to '/task/:id'
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  private

  def task_params
    params.require(:task).permit(:title, :complete)
  end

  def current_user
  end
end
