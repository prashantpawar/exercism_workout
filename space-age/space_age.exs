defmodule SpaceAge do
  @type planet :: :mercury | :venus | :earth | :mars | :jupiter | :saturn | :neptune | :uranus

  @seconds_in_year 31557600

  @planets %{
    :mercury => 0.2408467,
    :venus => 0.61519726,
    :earth => 1,
    :mars => 1.88088158,
    :jupiter => 11.862615,
    :saturn => 29.447498,
    :uranus => 84.016846,
    :neptune => 164.79132
  }

  @doc """
  Return the number of years a person that has lived for 'seconds' seconds is
  aged on 'planet'.
  """
  @spec age_on(planet, pos_integer) :: float
  def age_on(planet, seconds) do

    seconds / (@seconds_in_year * @planets[planet])

  end
end
