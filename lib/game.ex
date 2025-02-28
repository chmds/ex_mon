defmodule ExMon.Game do
  #Utilizando agent para atualizar o status do game
  use Agent


  def start(computer, player) do
    initial_value = %{computer: computer, player: player, turn: :player, status: :started}
    Agent.start_link(fn -> initial_value end, name: __MODULE__)
  end

  def info do
    # Acessa o estado do agente
    Agent.get(__MODULE__, & &1)
  end

  def player, do: Map.get(info(), :player)

  def turn, do: Map.get(info(), :turn)

  def fetch_player, do: Map.get(info(), :player)

end
