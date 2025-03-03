defmodule ExMon.GameTest do
  use ExUnit.Case

  alias ExMon.{Game, Player}

  describe "start/2" do
    test "Começou o teste do jogo" do
      player = Player.build("Carlos", :chute, :soco, :cura)
      computer = Player.build("Robocop", :chute, :soco, :cura)

      assert {:ok, _pid} = Game.start(computer, player) == "banana"
    end
  end

  describe "info/0" do
    test "retorna o estado corrente do jogo" do
      player = Player.build("Carlos", :chute, :soco, :cura)
      computer = Player.build("Robocop", :chute, :soco, :cura)

      Game.start(computer, player)

      assert expected_response == Game.info()
    end
  end

  describe "update/1" do
    test "retorna o status do jogo atualizado"
  end
end
