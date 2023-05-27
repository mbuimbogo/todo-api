class TasksController < ApplicationController
        rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
        wrap_parameters format: []
        rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

        # GET /tasks
        def index
          tasks = Task.all
          render json: tasks
        end
      
        # POST /tasks
        def create
          task = Task.create!(task_params)
          render json: task, status: :created
        end
      
        # GET /tasks/:id
        # def show
        #   task = find_task
        #   render json: task
        # end
      
        # PATCH /tasks/:id
        def update
          task = find_task
          task.update!(task_params)
          render json: task
        end
      
        # DELETE /tasks/:id
  def destroy
    task = find_task
    task.destroy
    head :no_content
  end

  private

  def find_task
    Task.find(params[:id])
  end

  def task_params
    params.permit(:description, :completed)
  end

  def render_not_found_response
    render json: { error: "Task not found" }, status: :not_found
  end
      
  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors }, status: :unprocessable_entity
  end
end
