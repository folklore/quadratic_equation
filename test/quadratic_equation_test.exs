defmodule QuadraticEquationTest do
  use ExUnit.Case
  doctest QuadraticEquation

  test "when discriminant less than zero" do
    assert QuadraticEquation.calculation(1, 2, 3) ==
      {:fail, [error: "Discriminant less than zero!"]}
  end

  test "when discriminant equal zero" do
    assert QuadraticEquation.calculation(2, 4, 2) ==
      {:success, [x1: -1.0, x2: -1.0, d: 0.0]}
  end

  test "when discriminant more than zero" do
    assert QuadraticEquation.calculation(2, 3, 1) ==
      {:success, [x1: -0.5, x2: -1.0, d: 1.0]}
  end
end
