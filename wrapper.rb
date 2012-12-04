require 'topic'
require 'users'

def add_vote_topic(user, topic)
	user.add_topics(topic.discussion_topic.upcase)
	topic.vote_topic(user.user_name.upcase)
end
