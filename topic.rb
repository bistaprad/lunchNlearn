require 'date'

class Topic	
	attr_accessor :discussion_topic, :total_vote_count, :date, :topic_id, :interested_users
	attr_reader :total_topics
	@@total_topics = 0
	def initialize(discussion_topic, date)
		@@total_topics = @@total_topics+1
		@total_vote_count = 0
		@interested_users =[]
		@discussion_topic = discussion_topic			
		@date = date
		@topic_id = @@total_topics+1
	end

	def display_all()
		puts "***********************************************"
		puts "Topic Name: #{@discussion_topic.upcase}"
		#puts "Total Topics: #{@@total_topics}"
		puts "Vote for this topic:  #{@total_vote_count}"
		puts "Interested People: #{@interested_users}"
		puts @date.strftime("Created on /%m/%d/%Y")
		puts "***********************************************"
	end
	def self.get_total_topics
		puts "Total Topics:  #{@@total_topics}"
	end

	def vote_topic(user)
		if @total_vote_count >= 5 
			puts "Vote for (#{@discussion_topic}) Already reached the maximum number"
		else
		@total_vote_count = @total_vote_count+1
		@interested_users = @interested_users.push(user)
		end		
	end
end


=begin
	
rescue Exception => e
	
end

topic1 = Topic.new("Dijkistras Algo", DateTime.new)
topic2 = Topic.new("Nash Equilibria", DateTime.new)
topic3 = Topic.new("Dymanic equilibria", DateTime.new)
topic4 = Topic.new("Prime Numbers", DateTime.new)

Topic.get_total_topics

topic1.display_all
topic2.display_all
topic3.display_all
topic4.display_all

=end
