defmodule HighScore do

  @doc "Initializes a new empty map"
  def new(), do: %{}

  @doc "Adds a new player to scores, default is 0, if not given a score"
  def add_player(scores, name), do: Map.put(scores, name, 0)
  def add_player(scores, name, score), do: Map.put(scores, name, score)

  @doc "removes a player from the map"
  def remove_player(scores, name), do: Map.delete(scores, name)

  @doc "sets the score of the name to 0"
  def reset_score(scores, name), do: Map.put(scores, name, 0)

  @doc "updates the score of the name, but if the name already has a score then the score is added to the old"
  def update_score(scores, name, score) do 
    if scores[name] != nil do
      Map.put(scores, name, score + scores[name])
    else
      Map.put(scores, name, score)
    end
  end

  @doc "gets a list of all the player names in the given list"
  def get_players(scores), do: Map.keys(scores)

end
