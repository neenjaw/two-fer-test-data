defmodule TwoFer do
  @doc """
  Two-fer or 2-fer is short for two for one. One for you and one for me.
  """
  @spec two_fer(String.t()) :: String.t()
  def two_fer(name) do
    if is_bitstring(name) do
      "One for #{name}, one for me"
    else
      raise FunctionClauseError
    end
  end

  @spec two_fer(nil) :: String.t()
  def two_fer() do
    "One for you, one for me"
  end
end
