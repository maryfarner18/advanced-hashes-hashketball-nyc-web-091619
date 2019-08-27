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
        { name: "Mason Plumlee", stats: { number: 1, shoe: 19, points: 26 rebounds: 11, assists: 6, steals: 3, blocks: 8, slam_dunks: 5}},
        { name: "Jason Terry", stats: { number: 31, shoe: 15, points: 19, rebounds: 2, assists: 2, steals: 4, blocks: 11, slam_dunks: 1}}
       
        ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        { name: "Jeff Adrien", stats: { number: 4, shoe: 18, points: 10, rebounds: 1, assists: 1, steals: 2, blocks: 7, slam_dunks: 2}},
        { name: "Bismack Biyombo", stats: { number: 11, shoe: 17, points: 17, rebounds: 19, assists: 10, steals: 3, blocks: 1, slam_dunks: 15}},
        { name: "DeSagna Diop", stats: { number: 1, shoe: 19, points: 26 rebounds: 11, assists: 6, steals: 3, blocks: 8, slam_dunks: 5}},
        { name: "Ben Gordon", stats: { number: 31, shoe: 15, points: 19, rebounds: 2, assists: 2, steals: 4, blocks: 11, slam_dunks: 1}}
          
        ]
    } 
    
  }
  
end


def num_points_scored(name)
  game_hash.each do |location, team_data|
    game_hash[location][:players].each_with_index do |player, index|
      if player[:name] == name then
        return player[:stats][:points]
      end
    end
  end
end



