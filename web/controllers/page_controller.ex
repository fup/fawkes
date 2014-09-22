defmodule Fawkes.PageController do
  use Phoenix.Controller

  def index(conn, _params) do
    render conn, "index"
  end

  def not_found(conn, _params) do
    render conn, "not_found"
  end

  def error(conn, _params) do
    render conn, "error"
  end

  def fibonacci(conn, _params) do
    {n,_} = Integer.parse(_params["nth"])
    r = Fibonacci.fastfib(n)
    render conn, "fibonacci", [nnumber: n,result: r]
  end
end
