defmodule GrokkingAlgorithms.BinarySearch do
  def call(list, target) do
    search(list, target, 0, length(list) - 1)
  end

  defp search(list, target, left, right) do
    mid = floor((left + right) / 2)
    target_value = Enum.at(list, mid)

    cond do
      left > right -> -1
      target_value == target -> mid
      target_value < target -> search(list, target, mid + 1, right)
      target_value > target -> search(list, target, left, mid - 1)
    end
  end
end
