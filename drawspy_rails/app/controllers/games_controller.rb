class GamesController < ApplicationController
  def create
    @game = Game.new(title: "tom")
    i=0
    while !@game.save
      @game.title = @game.title + String(i)
      i+=1
    end
  end

  def new
    @game = Game.new
  end

  def join
    @game = Game.find_by(title: params['game_title'])
    if not @game
      puts "Game Doesn't exist"
    else
      Player.create(name: params['player_name'], game_id: @game.id)  
    end
  end
end
