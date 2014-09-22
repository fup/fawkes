defmodule Fibonacci do
  @moduledoc """
  F(n)/F(n-1) ~> 1.618 aka (phi)
  """

  def fastfib(0), do: 0
  def fastfib(1), do: 1
  def fastfib(n) do
    sqrt5 = :math.sqrt(5)
    res = (1/sqrt5) * ( :math.pow((1+sqrt5)/2 , n) - :math.pow((1-sqrt5)/2, n) )
    round(res)
  end

  defp fib(0), do: 0
  defp fib(1), do: 1
  defp fib(n), do: fib(n-1)+fib(n-2)
end
