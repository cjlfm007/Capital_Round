class HomeController < ApplicationController
	def index

	end
	
	def contacts
  
	end
	
	
	
end

class Makecount
	def self.make_counter(i=0)
		lambda {i +=1}
	end
end