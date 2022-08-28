defmodule NarutoDuel.Ninja do
  @required_keys [:atk, :def, :heal, :life, :name]
  @max_life 100

  @enforce_keys @required_keys
  defstruct @required_keys

  def build(name, atk, def, heal ) do
    %NarutoDuel.Ninja{
      atk:atk,
      def: def,
      heal: heal,
      life: @max_life,
      name:name
    }
  end
end
