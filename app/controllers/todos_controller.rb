class TodosController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :task_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity


    
    private

    def todo_params
        params.permit(:name, :description, :completed)
    end

    def find_todo
        todo.find(params[:id])
    end

    def todo_not_found
        render json: {error: 'todo not found'}, status: :not_found
    end

    def unprocessable_entity invalid
        render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
    
end
