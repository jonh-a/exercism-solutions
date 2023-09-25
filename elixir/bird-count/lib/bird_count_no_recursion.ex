defmodule BirdCountNoRecursion do
  """
  Just say "NO" to recursion.
  """

  def today(list), do: List.first(list)

  def increment_day_count([]), do: [1]
  def increment_day_count([head | tail]), do: [1 + head | tail]

  def has_day_without_birds?(list), do: Enum.member?(list, 0)

  def total(list), do: Enum.sum(list)

  def busy_days(list) do
    list
    |> Enum.filter(fn x -> x >= 5 end)
    |> length()
  end
end
