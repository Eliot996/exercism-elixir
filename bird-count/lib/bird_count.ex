defmodule BirdCount do

  def today([]), do: nil
  def today([first | _]), do: first

  def increment_day_count([]), do: [1]
  def increment_day_count([today | rest]), do: [today + 1 | rest]

  def has_day_without_birds?(list), do: 0 in list

  def total([]), do: 0
  def total([first | rest]), do: first + total(rest)

  def busy_days([]), do: 0
  def busy_days([first | rest]), do:  (if first >= 5, do: 1, else: 0) + busy_days(rest)
  
end
