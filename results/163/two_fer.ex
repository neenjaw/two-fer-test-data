defmodule TwoFer do
  @doc """
  Two-fer or 2-fer is short for two for one. One for you and one for me.
  """
  @spec two_fer(name :: String.t()) :: String.t() | no_return
  def two_fer(name) do
    unless name |> is_bitstring do
      raise FunctionClauseError
    end
    "One for #{name}, one for me"
  end
  def two_fer() do
    "One for you, one for me"
  end
end
