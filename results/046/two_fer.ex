defmodule TwoFer do
  @doc """
  Two-fer or 2-fer is short for two for one. One for you and one for me.
  """
  @spec two_fer(String.t()) :: String.t()
  def two_fer(name \\ "you") do
    case is_binary(name) do
      true -> "One for #{name}, one for me"
      false -> raise FunctionClauseError
    end
  end
end
