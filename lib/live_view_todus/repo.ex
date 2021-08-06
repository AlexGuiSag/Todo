defmodule LiveViewTodus.Repo do
  use Ecto.Repo,
    otp_app: :live_view_todus,
    adapter: Ecto.Adapters.Postgres
end
