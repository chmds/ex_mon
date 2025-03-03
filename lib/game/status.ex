defmodule ExMon.Game.Status do
  alias ExMon.Game

  def print_round_message(%{status: :started} = info) do
    IO.puts("\n===== O Jogo começou! =====\n")
    IO.inspect(info)
    IO.puts("--------------------------------------")
  end

  def print_round_message(%{status: :continue, turn: player} = info) do
    IO.puts("\n===== O turno é do #{player} =====\n")
    IO.inspect(info)
    IO.puts("--------------------------------------")
  end

  def print_round_message(%{status: :game_over} = info) do
    IO.puts("\n===== FIM DE JOGO! =====\n")
    IO.inspect(info)
    IO.puts("--------------------------------------")
  end

  def print_wrong_move_message(move) do
    IO.puts("\n===== Movimento invalido: #{move} =====\n")
  end

  def print_move_message(:computer, :attack, damage) do
    IO.puts("\n===== O jogador atacou o computador  DANO CAUSADO .:#{damage}:. =====\n")
  end

  def print_move_message(:player, :attack, damage) do
    IO.puts("\n===== O computador atacou o jogador  DANO CAUSADO .:#{damage}:. =====\n")
  end

  def print_move_message(player, :heal, life) do
    IO.puts("\n===== O #{player} curou #{life} pontos de vida! =====\n")
  end

end
