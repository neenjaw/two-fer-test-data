defmodule TwoFer do
  @doc """
  Two-fer or 2-fer is short for two for one.
  """
  @spec two_fer(String.t()) :: String.t()
  def two_fer(name \\ "you") do
    do_two_fer(name)
  end

  def do_two_fer(name) when is_bitstring(name), do: "One for #{name}, one for me"
  def do_two_fer(name) when is_atom(name), do: raise(FunctionClauseError)
  def do_two_fer(name) when is_integer(name), do: raise(FunctionClauseError)
  def do_two_fer(name) when is_list(name), do: raise(FunctionClauseError)
end
