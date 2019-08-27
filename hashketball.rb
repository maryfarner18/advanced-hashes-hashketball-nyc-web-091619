# Write your code here!
require "pry"



def game_hash
  hash = { 
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [ 
        { name: "Alan Anderson", stats: { number: 0, shoe: 16, points: 22, rebounds: 12, assists: 12, steals: 3, blocks: 1, slam_dunks: 1}},
        
        { name: "Reggie Evans", stats: { number: 30, shoe: 14, points: 12, rebounds: 12, assists: 12, steals: 12, blocks: 12, slam_dunks: 7}},
        
        { name: "Brook Lopez", stats: { number: 11, shoe: 17, points: 17, rebounds: 19, assists: 10, steals: 3, blocks: 1, slam_dunks: 15}},
        
        { name: "Mason Plumlee", stats: { number: 1, shoe: 19, points: 26, rebounds: 11, assists: 6, steals: 3, blocks: 8, slam_dunks: 5}},
        
        { name: "Jason Terry", stats: { number: 31, shoe: 15, points: 19, rebounds: 2, assists: 2, steals: 4, blocks: 11, slam_dunks: 1}}
        ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        { name: "Jeff Adrien", stats: { number: 4, shoe: 18, points: 10, rebounds: 1, assists: 1, steals: 2, blocks: 7, slam_dunks: 2}},
        { name: "Bismack Biyombo", stats: { number: 0, shoe: 16, points: 12, rebounds: 4, assists: 7, steals: 22, blocks: 15, slam_dunks: 10}},
        
        { name: "DeSagna Diop", stats: { number: 2, shoe: 14, points: 24, rebounds: 12, assists: 12, steals: 4, blocks: 5, slam_dunks: 5}},
        
        { name: "Ben Gordon", stats: { number: 8, shoe: 15, points: 33, rebounds: 3, assists: 2, steals: 1, blocks: 1, slam_dunks: 0}},
        
        { name: "Kemba Walker", stats: { number: 33, shoe: 15, points: 6, rebounds: 12, assists: 12, steals: 7, blocks: 5, slam_dunks: 12}}
        ]
    } 
    
  }
  
end

def find_player(name)
  game_hash.each do |location, team_data|
    game_hash[location][:players].each_with_index do |player, index|
      if player[:name] == name then
        return player
      end
    end
  end
end

def find_team(name)
   game_hash.each do |location, team_data|
     if team_data[:team_name] == name
       return team_data
     end
   end
end

def num_points_scored(name)
  find_player(name)[:stats][:points]
end

def shoe_size(name)
  find_player(name)[:stats][:shoe]
end

def team_colors(team)
  game_hash.each do |location, team_data|
    if team_data[:team_name] == team then
      return team_data[:colors]
    end
  end
end

def team_names
  result = []
  game_hash.each do |location, team_data|
    result.push(team_data[:team_name])
  end
  result
end

def player_numbers(team)
  info = find_team(team)
  result = []
  info[:players].each do |player|
    result.push(player[:stats][:number])
  end
  result
end

def player_stats(name)
  find_player(name)[:stats]
end


def big_shoe_rebounds
  biggest_foot = {}
  max = 0 
  game_hash.each do |location, team_data| # loop home/away
    team_data[:players].each do |player|
      if player[:stats][:shoe] > max then
        max = player[:stats][:shoe]
        biggest_foot = player
      end
    end
  end
  biggest_foot[:stats][:rebounds]
  
end

def most_points_scored
  most_scored = {}
  max = 0 
  game_hash.each do |location, team_data| 
    team_data[:players].each do |player|
      if player[:stats][:points] > max then 
        max = player[:stats][:points]
        most_scored = player
      end
    end
  end
  most_scored[:name]
end

def winning_team
  score = { home: 0, away: 0} 
  game_hash.each do |location, team_data| # loop home/away
    team_data[:players].each do |player|
       score[location] += player[:stats][:points]
    end
  end

  (score[:home] > score[:away]? game_hash[:home][team_name] : game_hash[:away][:team_name] )
end

def long_name_steals_a_ton?
end

