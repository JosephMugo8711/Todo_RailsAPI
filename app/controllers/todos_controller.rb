class TodosController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :todo_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity


    def index
        render json: Todo.all, status: :ok    
    end

    def create
        todo = Todo.create!(todo_params) 
        render json: todo, status: :created   
    end

    def complete
        todo = find_todo
        todo.update(completed: true)
        render json: todo, status: :ok
    end
      

    def update
        todo = find_todo
        todo.update!(todo_params) 
        render json: todo, status: :accepted  
    end

    def destroy
        todo = find_todo
        todo.destroy
        head :no_content
    end


    
    private

    def todo_params
        params.require(:todo).permit(:name, :description, :done)
    end

    def find_todo
        Todo.find(params[:id])
    end
      

    def todo_not_found
        render json: {error: 'todo not found'}, status: :not_found
    end

    def unprocessable_entity invalid
        render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
    
end
