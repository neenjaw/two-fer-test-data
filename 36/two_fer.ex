defmodule TwoFer do

  defp is_string(x) do
    if is_atom(x) or is_number(x) or is_list(x) do
      false
    else
      true
    end
  end

  @doc """
  Two-fer or 2-fer is short for two for one. One for you and one for me.
  """

  def two_fer(), do: two_fer("")
  @spec two_fer(String.t()) :: String.t()
  def two_fer(name) do
    if !is_string(name) do
      raise FunctionClauseError
    end

    if name == "" do
      "One for you, one for me"
    else
      "One for " <> name <> ", one for me"
    end
  end
end
