defmodule TwoFer do
  @spec two_fer() :: String.t()
  def two_fer do
    "One for you, one for me"
  end

  def two_fer(arg) when is_binary(arg), do: "One for #{arg}, one for me"
  def two_fer(arg) when is_number(arg), do: raise FunctionClauseError
  def two_fer(arg) when is_atom(arg), do: raise FunctionClauseError
end
