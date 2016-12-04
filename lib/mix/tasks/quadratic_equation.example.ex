defmodule Mix.Tasks.QuadraticEquation.Example do
  use Mix.Task

  @shortdoc "QuadraticEquation. Example of calculation."

  def run(_) do
    QuadraticEquation.calculation(2, 3, 1)
  end
end
