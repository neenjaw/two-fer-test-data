defmodule TwoFer do
  @doc """
  Two-fer or 2-fer is short for two for one. One for you and one for me.

  When X is a name or "you".

  If the given name is "Dunk", the result should be "One for Dunk, one for me".
  If no name is given, the result should be "One for you, one for me".
  """
  @spec two_fer() :: String.t()
  def two_fer() do
    "One for you, one for me"
  end

  @spec two_fer(String.t()) :: String.t() | no_return()
  def two_fer(name) when is_binary(name) do
    cond do
      String.valid?(name) ->
        "One for " <> name <> ", one for me"

      true ->
        raise FunctionClauseError
    end
  end
end
