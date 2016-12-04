defmodule QuadraticEquation.Mixfile do
  use Mix.Project

  @version "0.1.0"

  def project do
    [app: :quadratic_equation,
     version: @version,
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package,
     homepage_url: "https://hexdocs.pm/quadratic_equation",
     source_url: "https://github.com/folklore/quadratic_equation",
     description: "Example of creating a Mix-application - from initialization to publication.",
     docs: [extras: ["README.md"]],
     deps: deps]
  end

  def package do
    [name: :quadratic_equation,
     files: ["lib", "mix.exs", "README.md"],
     maintainers: ["Stanislav Gordanov"],
     licenses: ["MIT"],
     links: %{"Github" => "https://github.com/folklore/quadratic_equation"}]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev}]
  end
end
