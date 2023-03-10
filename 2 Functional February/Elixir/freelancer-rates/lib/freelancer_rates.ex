defmodule FreelancerRates do
  def daily_rate(hourly_rate) do

    8.0 * hourly_rate
  end

  def apply_discount(before_discount, discount) do

    before_discount - before_discount * (discount / 100)
  end

  def monthly_rate(hourly_rate, discount) do

    undiscounted_rate = 22 * daily_rate(hourly_rate)
    trunc(Float.ceil(apply_discount(undiscounted_rate, discount)))
  end

  def days_in_budget(budget, hourly_rate, discount) do

    daily_price = apply_discount(daily_rate(hourly_rate), discount)
    Float.floor(budget / daily_price, 1)
  end
end
