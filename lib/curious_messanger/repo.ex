defmodule CuriousMessanger.Repo do
  use Ecto.Repo,
    otp_app: :curious_messanger,
    adapter: Ecto.Adapters.Postgres
end
