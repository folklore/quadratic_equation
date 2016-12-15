# QuadraticEquation

**Example of creating a Mix-application from initialization to publication.**

http://folky.ru/posts/3

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `quadratic_equation` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:quadratic_equation, "~> 0.1.0"}]
    end
    ```

  2. Ensure `quadratic_equation` is started before your application:

    ```elixir
    def application do
      [applications: [:quadratic_equation]]
    end
    ```
