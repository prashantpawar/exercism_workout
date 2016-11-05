defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
    Regex.scan(~r/\p{L}+/u, sentence)
    |> Enum.group_by(fn x -> x end, fn x -> x end) 
    # |> Enum.map(fn [x] -> x end)
    # |> Enum.map(&Enum.count/1)
  end
end
