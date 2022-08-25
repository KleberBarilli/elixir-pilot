defmodule Hello do
  def build(filename) do
    file = File.read(filename)
    handleFileRead(file)
  end

  def handleFileRead({:ok, result}), do: result
  def handleFileRead({:error, reason}), do: reason
end
