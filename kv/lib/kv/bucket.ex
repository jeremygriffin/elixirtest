defmodule KV.Bucket do
  use Agent

  @doc """
  Starts a new Agent Bucket.
  """
  def start_link(_opts) do
    Agent.start_link(fn -> %{} end)
  end

  @doc """
  Put item in an agent bucket
  """

  @doc """
  Get item from an agent bucket
  """
end
