defmodule Hello do
  def build(filename) do
    file = File.read(filename)
    IO.inspect(file)
  end
end
