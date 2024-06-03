defmodule ArenaDuel.Game.Status do
  alias ArenaDuel.Game

  def print_round_message() do
    IO.puts("\n ---- The fight is started ----\n")
    IO.inspect(Game.info())
    IO.puts("-------------------------")
  end
end
