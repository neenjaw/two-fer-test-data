defmodule TwoFer do
  @moduledoc """
  Two-fer or 2-fer is short for two for one. One for you and one for me.
  """

  @doc """
  Default two-fer if no name is given
  """
  @spec two_fer() :: String.t()
  def two_fer(), do: "One for you, one for me"

  @doc """
  Two-fer with other person's name.
  """
  @spec two_fer(String.t()) :: String.t()
  def two_fer(name) when is_binary(name) do
    "One for #{name}, one for me"
  end
end
