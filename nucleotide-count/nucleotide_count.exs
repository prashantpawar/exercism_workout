defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]

  @doc """
  Counts individual nucleotides in a NucleotideCount strand.

  ## Examples

  iex> NucleotideCount.count('AATAA', ?A)
  4

  iex> NucleotideCount.count('AATAA', ?T)
  1
  """
  @spec count([char], char) :: non_neg_integer
  def count(strand, nucleotide) do

    Enum.count(strand, &(&1 == nucleotide))

  end


  @doc """
  Returns a summary of counts by nucleotide.

  ## Examples

  iex> NucleotideCount.histogram('AATAA')
  %{?A => 4, ?T => 1, ?C => 0, ?G => 0}
  """
  @spec histogram([char], map) :: map
  def histogram(_, accumulator \\ %{?A => 0, ?T => 0, ?C => 0, ?G => 0})
  def histogram([], accumulator), do: accumulator
  def histogram([head | tail], accumulator) do

    {_, hist} = Map.get_and_update(accumulator, head, fn current_value ->
      {current_value, current_value + 1}
    end)

    histogram(tail, hist)

  end
end
