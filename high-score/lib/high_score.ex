defmodule HighScore do
  def new(), do: %{}

  def add_player(scores, name), do: Map.put(scores, name, 0)
  def add_player(scores, name, score), do: Map.put(scores, name, score)

  def remove_player(scores, name), do: Map.delete(scores, name)

  def reset_score(scores, name), do: Map.put(scores, name, 0)

  def update_score(scores, name, score) do
    # Please implement the update_score/3 function
  end

  def get_players(scores) do
    # Please implement the get_players/1 function
  end
end
