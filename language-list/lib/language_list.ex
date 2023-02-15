defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    [language | list]
  end

  def remove([_ | tail]) do
    #List.delete_at(list, 0)
    tail
  end

  def first([head | _]) do
    #List.first(list)
    head
  end

  def count(list) do
    length(list)
  end

  def functional_list?(list) do
    "Elixir" in list
  end
end
