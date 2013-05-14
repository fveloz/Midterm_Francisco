#required gems
require 'JSON'
require 'RestClient'
	
#creates ActorData class
class ActorData
	#pulls data using the movie title entered. Creates variable @actors
	#if @actors is empty due to title movie title entered not existing it returns a message
	#otherwise it will print the list of starring actors. 
	def self.gets(title)
		 movie_data = JSON.load(RestClient.get('http://www.omdbapi.com/?t='+title))
		 @actors = movie_data["Actors"]
		 if @actors == nil
		 	puts "Sorry no such movie title availible"
		 else
		 	puts @actors
		 	puts "There you have it, the stars of your favorite movie. Supporting cast who needs them. Am I right!?!?!"
		 end
	end
end