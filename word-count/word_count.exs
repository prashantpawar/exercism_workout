defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
    word_freq = Regex.scan(~r/[\p{L}\p{N}]+/u, sentence)
    |> Enum.map(fn [x] -> x end)
    |> Enum.group_by(fn x -> x end, fn x -> x end) 

    Map.keys(word_freq)
    |> Enum.reduce(%{}, fn (x, acc) ->
      Map.put(acc, x,
        Map.get(word_freq, x)
        |> Enum.count()
      )
    end)
  end
end
