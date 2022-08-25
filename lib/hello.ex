defmodule Hello do
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

  defp handle_file_read({:ok, result}) do
    result
    |> String.split(",")
    |> Enum.map(&convert_and_evaluate_numbers/1)
  end

  defp handle_file_read({:error, reason}), do: "Error reading the file: #{reason}"

  defp convert_and_evaluate_numbers(elem) do
    elem
    |> String.to_integer()
    |> evaluate_numbers()
  end

  defp evaluate_numbers(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :kb
  defp evaluate_numbers(number) when rem(number, 3) == 0, do: :k
  defp evaluate_numbers(number) when rem(number, 5) == 0, do: :b
  defp evaluate_numbers(number), do: number
end
