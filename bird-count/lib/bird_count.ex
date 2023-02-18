defmodule BirdCount do

  def today([]), do: nil
  def today([head | _]), do: head

  def increment_day_count([]), do: [1]
  def increment_day_count([today | tail]), do: [today + 1 | tail]

  def has_day_without_birds?(list), do: 0 in list

  def total([]), do: 0
  def total([head | tail]), do: head + total(tail)

  def busy_days([]), do: 0
  def busy_days([head | tail]) when head >= 5, do: 1 + busy_days(tail)
  def busy_days([_ | tail]), do:  busy_days(tail)
  
end
