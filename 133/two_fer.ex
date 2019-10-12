defmodule TwoFer do
  @doc """
  Two-fer or 2-fer is short for two for one. One for you and one for me.
  """
  @spec two_fer(String.t()) :: String.t()
  def two_fer(name) do
    if not is_bitstring(name), do: raise(FunctionClauseError)
    "One for #{name}, one for me"
  end

  def two_fer() do
    "One for you, one for me"
  end
end
