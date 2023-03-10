defmodule NameBadge do
  def print(id, name, nil) do
    if id == nil do
      "#{name} - OWNER"
    else
      "[#{id}] - #{name} - OWNER"
    end
  end

  def print(nil, name, department) do
    "#{name} - #{String.upcase(department)}"
  end

  def print(id, name, department) do
    # Please implement the print/3 function
    "[#{id}] - #{name} - #{String.upcase(department)}"
  end
end
