defmodule TwoFer do
  @doc """
  Two-fer or 2-fer is short for two for one. One for you and one for me.
  """
  def two_fer(name) when is_binary(name) do
    first = "One for "
    last = ", one for me"
    case name do
      "" -> first <> "you" <> last
      _ -> first <> name <> last
    end
  end

  def two_fer() do
    two_fer("")
  end
end
