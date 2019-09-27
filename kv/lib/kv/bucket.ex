defmodule KV.Bucket do
  use Agent

  @doc """
  Starts a new Agent Bucket.
  """
  def start_link(_opts) do
    Agent.start_link(fn -> %{} end)
  end

  @doc """
  Put item in an agent bucket key => value
  """
  def put(bucket, key, value) do
    Agent.update(bucket, &Map.put(&1, key, value))
  end

  @doc """
  Get item from an agent bucket by key.
  """
  def get(bucket, key) do
    Agent.get(bucket, &Map.get(&1, key))
  end

  @doc """
  Delete an item from an agent bucket by key.
  """
  def delete(bucket, key) do
    Agent.update(bucket, &Map.put(&1, key, nil))
  end
end
