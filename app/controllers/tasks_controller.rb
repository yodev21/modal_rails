class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    # binding.irb
    if @task.save
      redirect_to tasks_path, notice: '成功'
    else
      render :new
    end
  end

  def edit
  end

  private
  def task_params
    params.require(:task).permit(:title, :content)
  end
end
