defmodule Snippets do

  def binary_count(), do: binary_count([])
  def binary_count([]), do: [1]
  def binary_count(list) when is_list(list) do
    case list do
      [1|t] -> [0] ++ binary_count(t)
      [0|t] -> [1|t]
    end
  end

end
