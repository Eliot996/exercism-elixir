defmodule Darts do
  @type position :: {number, number}

  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position) :: integer
  def score({x, y}) do
    distance = distance_from_center(x, y)
    cond do
      distance <= 1  -> 10 # inner
      distance <= 5  -> 5  # middel
      distance <= 10 -> 1  # outer
      distance >  10 -> 0  # outside
    end
  end

  defp distance_from_center(x, y) do 
    :math.sqrt(:math.pow(x, 2) + :math.pow(y, 2))
  end
end
