defmodule TwoFer do
  @doc """
  Two-fer or 2-fer is short for two for one. One for you and one for me.
  """
  def two_fer() do
    "One for you, one for me"
  end

  @spec two_fer(String.t()) :: String.t()

  def two_fer(name) do
    "One for " <> name <> ", one for me"
  end
end