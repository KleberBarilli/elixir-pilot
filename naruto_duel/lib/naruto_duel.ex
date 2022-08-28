defmodule NarutoDuel do
  alias NarutoDuel.Ninja

  def create_ninja(name, atk, def, heal) do
    Ninja.build(name, atk, def, heal)
  end
end
