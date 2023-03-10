defmodule BoutiqueInventory do
  def sort_by_price(inventory) do
    # Please implement the sort_by_price/1 function
    # Enum.sort(inventory, &(&1.id > &2.id))
    Enum.sort_by(inventory, &(&1.price))
  end

  def with_missing_price(inventory) do
    # Please implement the with_missing_price/1 function
    Enum.filter(inventory,&(&1.price == nil))
  end

  def update_names(inventory, old_word, new_word) do
    # Please implement the update_names/3 function
    Enum.map(inventory, fn elem -> Map.replace(inventory, elem.name, String.replace(elem.name, old_word, new_word)) end)
  end

  def increase_quantity(item, count) do
    # Please implement the increase_quantity/2 function
  end

  def total_quantity(item) do
    # Please implement the total_quantity/1 function
  end
end
