defmodule LiveViewTodusWeb.TodoLive do
  use LiveViewTodusWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~L"Rendering LiveView"
  end
end
