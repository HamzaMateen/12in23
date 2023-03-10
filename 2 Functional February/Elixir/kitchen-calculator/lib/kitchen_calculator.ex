defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    {_, amount} = volume_pair
    amount
  end

  def to_milliliter({:cup, us_amount} = _volume_pair) do
    {:milliliter, us_amount*240}
  end
  def to_milliliter({:fluid_ounce, us_amount} = _volume_pair) do
    {:milliliter, us_amount*30}
  end
  def to_milliliter({:teaspoon, us_amount} = _volume_pair) do
    {:milliliter, us_amount*5}
  end
  def to_milliliter({:tablespoon, us_amount} = _volume_pair) do
    {:milliliter, us_amount*15}
  end
  def to_milliliter({:milliliter, us_amount} = _volume_pair) do
    {:milliliter, us_amount}
  end

  def from_milliliter({_, value} = _volume_pair, :cup = unit) do
    {unit, value / 240}
  end
  def from_milliliter({_, value} = _volume_pair, :fluid_ounce = unit) do
    {unit, value / 30}
  end
  def from_milliliter({_, value} = _volume_pair, :teaspoon = unit) do
    {unit, value / 5}
  end
  def from_milliliter({_, value} = _volume_pair, :tablespoon = unit) do
    {unit, value / 15}
  end
  def from_milliliter({_, value} = _volume_pair, :milliliter = unit) do
    {unit, value}
  end

  def convert(volume_pair, unit) do
    from_milliliter(to_milliliter(volume_pair), unit)
  end
end
