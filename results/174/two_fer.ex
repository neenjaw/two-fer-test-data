defmodule TwoFer do
  @doc """
  Two-fer or 2-fer is short for two for one. One for you and one for me.
  """
  @spec two_fer(String.t()) :: String.t()

  # the \\ denotes default value. if a name isn't passed in we'll default to "you"
  def two_fer(name \\ "you")

  # using is_binary to assert that name is a string
  def two_fer(name) when is_binary(name) do
    "One for #{name}, one for me"
  end
end
