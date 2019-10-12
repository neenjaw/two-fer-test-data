defmodule TwoFer do
  @doc """
  Two-fer or 2-fer is short for two for one. One for you and one for me.
  """
  @spec two_fer(String.t()) :: String.t()
  
  def two_fer(), do: "you" |> say_it
  def two_fer(name) when is_binary(name), do: name |> say_it
  def two_fer(_), do: raise FunctionClauseError

  defp say_it(name) do
    "One for #{name}, one for me"
  end
end
