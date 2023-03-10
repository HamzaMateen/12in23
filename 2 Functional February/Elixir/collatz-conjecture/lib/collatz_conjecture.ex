defmodule CollatzConjecture do
  @doc """
  calc/1 takes an integer and returns the number of steps required to get the
  number to 1 when following the rules:
    - if number is odd, multiply with 3 and add 1
    - if number is even, divide by 2
  """

  @spec calc(input :: String.t()) :: String.t()
  def calc(_input), do: "hello"

  @spec calc(input :: pos_integer()) :: non_neg_integer()
  def calc(input) when input < 1, do: raise FunctionClauseError
  def calc(input) when input == 1, do: 0
  def calc(input) when rem(input, 2) == 0 do
    new_value = trunc(input / 2)
    1 + calc(new_value)
  end
  def calc(input) do
    new_value = input * 3 + 1
    1 + calc(new_value)
  end

end
