defmodule TwoFer do
  @doc """
  Two-fer or 2-fer is short for two for one. One for you and one for me.
  """
  @spec two_fer() :: String.t()
  def two_fer() do
    "One for you, one for me"
  end

  @spec two_fer(integer() | atom() | list()) :: no_return()
  def two_fer(param) when is_integer(param) or is_atom(param) or is_list(param) do
    raise FunctionClauseError
  end

  @spec two_fer(String.t()) :: String.t()
  def two_fer(name) do
    "One for #{name}, one for me"
  end
end
