defmodule QuadraticEquation do
  @moduledoc """
    The module with the logic of the solution of the quadratic equation.
  """

  @doc """
    See the description of the module.
  """
  def calculation(a, b, c) do
    print_equation(a, b, c)

    d = :math.pow(b, 2) - 4 * a * c

    if d >= 0 do
      x1 = (-1 * b + :math.sqrt(d)) / (2 * a)
      x2 = (-1 * b - :math.sqrt(d)) / (2 * a)

      print_success(x1, x2, d)

      {:success, [x1: x1, x2: x2, d: d]}
    else
      print_fail(d)

      {:fail, [error: "Discriminant less than zero!"]}
    end
  end

  defp print_equation(a, b, c) do
    first_part = if (a == 1), do: "x^2",
                              else: "#{a}*x^2"
    second_part = if (b == 0), do: "",
                               else: if (b > 0), do: " + #{b}*x",
                                                 else: " - #{abs(b)}*x"
    third_part = if (c == 0), do: "",
                              else: if (c > 0), do: " + #{c}",
                                                else: " - #{abs(c)}"
    IO.puts("#{first_part}#{second_part}#{third_part} = 0")
  end

  defp print_success(x1, x2, d) do
    string_result = if (x1 == x2), do: "x1, x2 = #{x1}",
                                   else: "x1 = #{x1} | x2 = #{x2}"
    IO.puts(string_result <> " | discriminant = #{d}")
  end

  defp print_fail(d) do
    message = "The quadratic equation has no solution"

    IO.puts(message <> " | discriminant = #{d}")
  end
end
