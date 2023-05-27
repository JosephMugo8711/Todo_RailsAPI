class TodosController < ApplicationController


    
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
