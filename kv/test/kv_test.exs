defmodule KVTest do
  use ExUnit.Case
  doctest KV

  test "greets the world Fails" do
    assert KV.hello() == :oops
  end

  test "greets the world Success" do
    assert KV.hello() == :world
  end
end
