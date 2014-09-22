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
    r = fastfib(n)
    render conn, "fibonacci", [nnumber: n,result: r]
  end

  defp fastfib(0), do: 0
  defp fastfib(1), do: 1
  defp fastfib(n) do
    sqrt5 = :math.sqrt(5)
    res = (1/sqrt5) * ( :math.pow((1+sqrt5)/2 , n) - :math.pow((1-sqrt5)/2, n) )
    round(res)
  end

  defp fib(0), do: 0
  defp fib(1), do: 1
  defp fib(n), do: fib(n-1)+fib(n-2)
end
