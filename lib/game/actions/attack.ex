defmodule ExMon.Game.Actions.Attack do
  alias ExMon.Game

  @move_avg_power 18..25 # ataque avg varia de 18 a 25
  @move_rnd_power 10..35 # ataque rnd varia de 10 a 35

  def attack_opponent(opponent, move) do
    damage = calculate_power(move)
    # Recuperando a vida do oponente
    opponent
    |> Game.fetch_player()
    |> Map.get(:life)
    |> calculate_total_life(damage)
    |> update_opponent_life(opponent)
  end

  defp calculate_power(:move_avg), do: Enum.random(@move_avg_power)
  defp calculate_power(:move_rnd), do: Enum.random(@move_rnd_power)

  # Lógica para garantir que a vida não vá para um valor negativo
  defp calculate_total_life(life, damage) when life - damage < 0, do: 0
  defp calculate_total_life(life, damage), do: life - damage

  # Função que atualiza a vida do oponente no estado do jogo
  defp update_opponent_life(life, opponent) do
    opponent
    |>Game.fetch_player()
    |>Map.put(:life, life)
  end
end
