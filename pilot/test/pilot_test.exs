defmodule PilotTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      expected_response = {:ok, [1, 2, :hello, 4, :world, :world, :hello_world, :world, :hello_world, :world,
      :hello_world, :world, :hello, :hello]}
      assert Pilot.build("test.txt") == expected_response
    end

    test "when a invalid file is provided, returns an error" do
      expected_response = {:error, "Error reading the file: enoent"}
      assert Pilot.build("notfound.txt") == expected_response
    end
  end
end
