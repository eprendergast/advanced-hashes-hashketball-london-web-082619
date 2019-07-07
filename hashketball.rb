require 'pry'

#Define a method game_hash which contains and returns a nested hash with information about home and away teams
def game_hash
  game_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [
        {"Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        }},
        {"Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        }},
        {"Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        }},
        {"Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 11,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        }},
        {"Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }}
      ]
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => [
        {"Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        }},
        {"Bismack Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 22,
          :blocks => 15,
          :slam_dunks => 10
        }},
        {"DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        }},
        {"Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        }},
        {"Kemba Walker" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 7,
          :blocks => 5,
          :slam_dunks => 12
        }}
      ]
    }
  }
  game_hash #return the game_hash hash
end

#returns number of points scored by player
def num_points_scored(player)
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |player_data|
          player_data.each do |name, stats|
            if name == player
              stats[:points]
            end
          end
        end
      end
    end
  end
end

def shoe_size(player)
  #returns the player's shoe size
end

#returns an array of the team colors
def team_colors(team_name)
  if game_hash[:home][:team_name] == team_name
    game_hash[:home][:colors]
  elsif game_hash[:away][:team_name] == team_name
    game_hash[:away][:colors]
  else
    puts "That team does not exist!"
  end
end

#operates on the game hash to return an array of the team names
def team_names
  team_names = []
  game_hash.each do |location, team_data|
    team_names.push(game_hash[location][:team_name])
  end
  team_names
end

def player_numbers(team_name)
  #returns an array of the jersey number's for that team
  jersey_numbers = []
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      data.each do |player_data|
        player_data.each do |player_name, stats|

        end
      end
    end
  end
end

#returns a hash of that player's stats
def player_stats(player)
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        player_stats = game_hash[location][attribute][player]
      end
    end
  end
  player_stats
end

def big_shoe_rebounds
  #return the number of rebounds associated with the player that has the largest shoe size

  #First, find the player with the largest shoe size
  #Then, return that player's number of rebounds
  #Remember to think about return values here.
  #Use binding.pry to drop into your method and understand what it is returning and why.

end

#-----BONUS QUESTIONS-----#

def most_points_scored
  #Which player has the most points?
end

def winning_team
  #Which team has the most points?
end

def player_with_longest_name
  #Which player has the longest name?
end

def long_name_steals_a_ton
  #Write a method that returns true if the player with the longest name had the most steals.
end
