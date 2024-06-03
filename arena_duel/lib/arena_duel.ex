defmodule ArenaDuel do

  alias ArenaDuel.{Player, Game}
  alias ArenaDuel.Game.Status

  def create_player(name, atk, def, heal) do
    Player.build(name, atk, def, heal)
  end

  def start_game(player) do
    "Madara"
    |> create_player(:susanoo, :rinnegan, :heal)
    |> Game.start(player)

    Status.print_round_message()
  end
end
