defmodule TwoFer do
  @doc """
  Two-fer or 2-fer is short for two for one. One for you and one for me.
  """
  @spec two_fer(String.t()) :: String.t()
  def two_fer() do "One for you, one for me" end
  def two_fer(name) do
    cond do
      is_binary(name) ->"One for #{name}, one for me"
      is_list(name) -> raise FunctionClauseError
      is_atom(name) -> raise FunctionClauseError
      is_integer(name) -> raise FunctionClauseError 
    end
  end
end
