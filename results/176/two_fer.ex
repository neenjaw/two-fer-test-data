defmodule TwoFer do
  @spec two_fer() :: String.t()
  def two_fer() do
    "One for you, one for me"
  end

  @spec two_fer(List) :: Exception.t
  def two_fer(name) when is_list(name)  do
    raise FunctionClauseError
  end

  @spec two_fer(Atom) :: Exception.t
  def two_fer(name) when is_atom(name)  do
    raise FunctionClauseError
  end

  @spec two_fer(Number) :: Exception.t
  def two_fer(name) when is_number(name)  do
    raise FunctionClauseError
  end

  @doc """
  Two-fer or 2-fer is short for two for one. One for you and one for me.
  """
  @spec two_fer(String.t()) :: String.t()
  def two_fer(name) when is_binary(name) do
    "One for #{name}, one for me"
  end
end
