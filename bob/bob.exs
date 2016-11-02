defmodule Bob do
  @not_recognized "Whatever."
  @shouting "Whoa, chill out!"
  @silence "Fine. Be that way!"
  @question "Sure."

  def hey(input) do
    cond do
      input =~ ~r/^.*\?$/u -> @question
      input =~ ~r/^.+\p{^Ll}.*$/u -> @shouting
      input == "" -> @silence
      true -> @not_recognized
    end
  end
end
