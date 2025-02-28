defmodule ExMon.Player do
  @requisitos [:life, :moves, :name]
  @max_life 100

  @enforce_keys @requisitos #enforce_keys indica as chaves obrigatórias

  defstruct @requisitos

  def build(name, move_rnd, move_avg, move_heal) do  #Método construtor (build)
    %ExMon.Player{
      life: @max_life,
      moves: %{
        move_avg: move_avg,
        move_heal: move_heal,
        move_rnd: move_rnd
      },
      name: name
    }
  end
end
