defmodule Bob do
  @not_recognized "Whatever."
  @shouting "Whoa, chill out!"
  @silence "Fine. Be that way!"
  @question "Sure."

  def hey(input) do
    cond do
      input =~ ~r/^\s*$/u -> @silence
      input =~ ~r/^.*\?$/u -> @question
      input =~ ~r/^\p{Lu}+\P{Ll}+\p{Lu}*$/u -> @shouting
      true -> @not_recognized
    end
  end
end
