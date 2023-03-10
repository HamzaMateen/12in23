defmodule BirdCount do
  def today(list) when length(list) == 0 do
    nil
  end

  def today(list) when length(list) > 0 do
    Kernel.hd(list)
  end


  def increment_day_count(list) when length(list) == 0, do: [1]
  def increment_day_count(list) when length(list) > 0, do: [hd(list) + 1 | tl(list)]


  def has_day_without_birds?(list) do
    cond do
      0 in list -> true
      true -> false
    end
  end

  def total([]), do: 0
  def total([head | tail]), do: head + total(tail)

  def busy_days([]), do: 0
  def busy_days([head]) do
    cond do
      head > 4 -> 1
      true -> 0
    end
  end

  def busy_days([head | tail]), do: busy_days([head]) + busy_days(tail)
end
