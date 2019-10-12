defmodule TwoFer do
  @phrase "One for you, one for me"

  @doc """
  Two-fer or 2-fer is short for two for one. One for you and one for me.
  """
  @spec two_fer(String.t()) :: String.t()
  def two_fer(name \\ "") do
    case String.valid?(name) do
      false ->
        raise FunctionClauseError

      true ->
        case name do
          "" -> @phrase
          _ -> String.replace(@phrase, "you", name)
        end
    end
  end
end
