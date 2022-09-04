defmodule NarutoDuel do
  alias NarutoDuel.{Ninja, Game}

  def create_ninja(name, atk, def, heal) do
    Ninja.build(name, atk, def, heal)
  end

  def start_game(player) do
    "Madara"
    |> create_ninja(:katon, :rinnegan, :heal)
    |> Game.start(player)
  end
end
