defmodule LiveViewTodusWeb.TodoLive do
  use LiveViewTodusWeb, :live_view
alias LiveViewTodus.Todos

def mount(_params, _session, socket) do
  {:ok, assign(socket, todos: Todos.list_todos())}
end
end
