defmodule HighScore do
  @default_score 0

  def new() do
    Map.new()
  end

  def add_player(scores, name, score \\ @default_score) do
    Map.put(scores, name, score)
  end

  def remove_player(scores, name) do
    {_value, updated_map} = Map.pop(scores, name)
    updated_map
  end

  def reset_score(scores, name), do: Map.put(scores, name, @default_score)

  def update_score(scores, name, score) do
    Map.update(scores, name, score, fn pre_score -> pre_score + score  end)
  end

  def get_players(scores) do
    Map.keys(scores)
  end
end
