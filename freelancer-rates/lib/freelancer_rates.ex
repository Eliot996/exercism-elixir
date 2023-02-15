defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8 / 1
  end

  def apply_discount(before_discount, discount) do
    discount_amount = before_discount * discount / 100
    before_discount - discount_amount
  end

  def monthly_rate(hourly_rate, discount) do
    standard_monthly_rate = 22 * daily_rate(hourly_rate) 
    discount_applied = apply_discount(standard_monthly_rate, discount)

    ceil(discount_applied)
  end

  def days_in_budget(budget, hourly_rate, discount) do
    effective_daily_rate =  apply_discount(daily_rate(hourly_rate), discount)
    Float.floor(budget / effective_daily_rate, 1)
  end
end
