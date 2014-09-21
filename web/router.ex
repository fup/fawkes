defmodule Fawkes.Router do
  use Phoenix.Router

  get "/", Fawkes.PageController, :index, as: :pages
  get "/fibonacci", Fawkes.PageController, :fibonacci
end
