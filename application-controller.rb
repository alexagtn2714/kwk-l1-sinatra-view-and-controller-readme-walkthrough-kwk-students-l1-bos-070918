
class App < Sinatra::Base
  get '/' do
    erb :front_page
  end
  
  get '/games' do
    erb :game_quizs
  end 
  
  get '/music' do
    erb :music_style
  end
  
  
  post  '/game_results' do
  answers = params.values
  @total= 0
  answers.each do |answer|
    @total += answer.to_i
  end
  puts @total
   
   
  if @total == 6
    #phone action
    erb :action2
  elsif @total == 2 
  #computer action
    erb :action1
  elsif @total == 3
  #computer puzzle
    erb :puzzle1
  elsif @total == 7
  #phone puzzle
    erb :puzzle2
  elsif @total == 4
  #computer dumb
    erb :Dumb1
  elsif @total == 8
  #phone dumb
    erb :dumb2
  elsif @total == 5
  #computer arcade
    erb :arcade1
  elsif @total == 9
  #phone arcade
    erb :arcade2
  end 
  
end 

 post  '/music_results' do
   answers = params.values
   
   if answers[0] == "1"
     erb :music_happy
   elsif answers[0] == "2" 
    erb :music_trappy
    elsif answers[0] == "3"
     erb :music_peaceful
   elsif answers[0] == "4" 
    erb :music_sad
  end
end

end 
