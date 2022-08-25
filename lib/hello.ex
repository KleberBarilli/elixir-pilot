defmodule Hello do
  def build(filename) do
    {:ok, file} = File.read(filename)
    file
  end
end
