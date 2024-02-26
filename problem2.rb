class TodoList
    def initialize
      @todos = []
    end
  
    def add(todo)
      @todos << todo
    end
  
    def remove(todo)
      @todos.delete(todo)
    end
  
    def todos
      @todos.dup
    end
  end
  

 RSpec.describe TodoList do
  describe "#add" do
    it "adds a todo to the list" do
      todo_list = TodoList.new
      todo_list.add("Buy groceries")
      expect(todo_list.todos).to include("Buy groceries")
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      todo_list = TodoList.new
      todo_list.add("Buy groceries")
      todo_list.remove("Buy groceries")
      expect(todo_list.todos).not_to include("Buy groceries")
    end
  end

  describe "#todos" do
    it "returns all todos" do
      todo_list = TodoList.new
      todo_list.add("Buy groceries")
      todo_list.add("Clean the house")
      expect(todo_list.todos).to eq(["Buy groceries", "Clean the house"])
    end
  end
end
