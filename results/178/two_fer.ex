defmodule TwoFer do
  @doc """
  Two-fer or 2-fer is short for two for one. One for you and one for me.
  """
  @spec two_fer(String.t()) :: String.t()
  def two_fer(), do: "One for you, one for me"
  def two_fer(name) when is_bitstring(name), do: "One for #{name}, one for me"
  def two_fer(arg), do: raise(FunctionClauseError)
end
