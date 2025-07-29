defmodule CodeAgentTest do
  use ExUnit.Case
  doctest CodeAgent

  test "greets the world" do
    assert CodeAgent.hello() == :world
  end
end
