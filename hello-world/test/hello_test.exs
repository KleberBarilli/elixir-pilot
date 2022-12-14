defmodule HelloTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      expected_response = {:ok, [1, 2, :k, 4, :b, :k, 8, 11, :kb, :b, :kb, :kb, :kb]}
      assert Hello.build("numbers.txt") == expected_response
    end

    test "when a invalid file is provided, returns an error" do
      expected_response = {:error, "Error reading the file: enoent"}
      assert Hello.build("notfound.txt") == expected_response
    end
  end
end
