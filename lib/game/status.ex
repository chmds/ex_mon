defmodule ExMon.Game.Status do
  alias ExMon.Game

  def print_round_message() do
    IO.puts("\n===== O Jogo começou! =====\n")
    IO.inspect(Game.info())
    IO.puts("--------------------------------------")
  end

  def print_wrong_move_message(move) do
    IO.puts("\n===== Movimento invalido: #{move} =====\n")
  end
end
