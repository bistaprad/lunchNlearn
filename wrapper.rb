require 'topic'
require 'users'

def add_vote_topic(user, topic)
	user.add_topics(topic.discussion_topic)
	 topic.vote_topic

end