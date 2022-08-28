defmodule NarutoDuel.Ninja do
  @enforce_keys[:life, :name]
  defstruct [:life, :name, :suiton, :fuuton, :katon, :raiton, :doton, :heal]
end
