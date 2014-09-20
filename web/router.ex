defmodule Fawkes.Router do
  use Phoenix.Router

  get "/", Fawkes.PageController, :index, as: :pages

end
