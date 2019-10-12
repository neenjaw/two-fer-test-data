defmodule TwoFer do
  @doc """
  Two-fer or 2-fer is short for two for one. One for you and one for me.
  """
  @spec two_fer(String.t()) :: String.t()
  def two_fer(name) do
  	sentence_builder(name)
  end
  def two_fer() do
  	sentence_builder("you")
  end
  def sentence_builder(name) do
  	"One for " <> name <> ", one for me"
  end
end
