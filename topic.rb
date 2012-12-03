require 'date'

class Topic	
	attr_accessor :discussion_topic, :total_vote_count, :date, :topic_id
	
	def initialize(discussion_topic, date)
		@@total_topics = 0
		@total_vote_count = 0
		@discussion_topic = discussion_topic			
		@date = date
		@topic_id = @@total_topics+1
	end

	def display_all()
		puts "Total Topics: #{@@total_topics}"	
	end


end

topic1 = Topic.new("dijkistras algo", DateTime.new)

# puts topic1.date.strftime("Created on /%m/%d/%Y")
# puts topic1.total_vote_count

topic1.display_all