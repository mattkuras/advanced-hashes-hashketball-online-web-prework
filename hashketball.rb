
require 'pry'
def game_hash
  hash = {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22, 
          rebounds: 12,
          assists: 12, 
          steals: 3,
          blocks: 1,
          slam_dunks: 1 
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12, 
          rebounds: 12,
          assists: 12, 
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17, 
          rebounds: 19,
          assists: 10, 
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26, 
          rebounds: 11,
          assists: 6, 
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19, 
          rebounds: 2,
          assists: 2, 
          steals: 4,
          blocks: 11,
          slam_dunks: 1 
        }
        ]
    }, 
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise","Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10, 
          rebounds: 1,
          assists: 1, 
          steals: 2,
          blocks: 7,
          slam_dunks: 2 
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12, 
          rebounds: 4,
          assists: 7, 
          steals: 22,
          blocks: 15,
          slam_dunks: 10 
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24, 
          rebounds: 12,
          assists: 12, 
          steals: 4,
          blocks: 5,
          slam_dunks: 5 
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33, 
          rebounds: 3,
          assists: 2, 
          steals: 1,
          blocks: 1,
          slam_dunks: 0 
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6, 
          rebounds: 12,
          assists: 12, 
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
        ]
    }
  }
end

def num_points_scored(name)
game_hash.each do |home_away, hashes|
    hashes[:players].each do |players|
      if players[:player_name] == name
        return players[:points]
      end
    end
  end
end


def shoe_size(name)
game_hash.each do |home_away, hashes|
    hashes[:players].each do |players|
      if players[:player_name] == name
        return players[:shoe]
      end
    end
  end
end


def team_colors(team)
  game_hash.each do |home_away, hashes|
    if hashes[:team_name] == team 
      return hashes[:colors]
    end
  end
end


def team_names 
  array = []
  game_hash.each do |home_away, hashes|
    array << hashes[:team_name]
  end
  array
#binding.pry 
end

def player_numbers(team)
  array = []
  game_hash.each do |home_away, hashes|
    if hashes[:team_name] == team 
    hashes[:players].each do |player|
     array << player[:number]
    end
  end
end
  array 
end

def player_stats(name)
  game_hash.each do |home_away, hashes|
    hashes[:players].each do |player|
      if player[:player_name] == name
        return player.delete_if {|key, value| key == :player_name} 
      end
    end
  end
end




def big_shoe_rebounds
    largest_shoe = 0 
    rebound_king = 0
  game_hash.each do |home_away, hashes|
    hashes[:players].each do |player|
     if player[:shoe] > largest_shoe
       largest_shoe = player[:shoe]
       rebound_king = player[:rebounds]
    end
  end
end
rebound_king
end

def most_points_scored
  max_points = 0 
  baller = "matt"
  game_hash.each do |home_away, hashes|
    hashes[:players].each do |player|
      if player[:points] > max_points
        max_points = player[:points]
        baller = player[:player_name]
      end
    end
  end
  baller
  
end


def long_name_steals_a_ton?
  steal_king = "me"
  name_king = "me"
  max_name = 0 
  max_steals = 0 
  
  game_hash.each do |home_away, hashes|
    hashes[:players].each do |player|
      if player[:steals] > max_steals
        max_steals = player[:steals]
        steal_king = player[:player_name]
     
      end
       
      if player[:player_name].count > max_name
        max_name = player[:player_name].count 
        name_king = player[:player_name]
      binding.pry 
      end
    end
  end
  

  name_king == steal_king 

end