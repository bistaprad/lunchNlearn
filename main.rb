require 'topic'
require 'users'
require 'wrapper'

#List of topics

title = ["Dijkistras Algo::", "Dymanic equilibria::", "Football::",
		 "Continue your work::","Human Psychology::","Nationalist VS Patriotit::"]

#list of user name
user_name = ["Barun Thapa  ", "Nikita Aacharya  ", "Susan Joshi  ",
			 "Bhanu Bhakta Sigdel  ", "Rojesh Shrestha  ",
			 "Amit Shrestha ","Pradeep Bista "]


#CREATE TOPIC OBJECTS
topic1 = Topic.new(title[0],Date.new)
topic2 = Topic.new(title[1],Date.new)
topic3 = Topic.new(title[2],Date.new)
topic4 = Topic.new(title[3],Date.new)
topic5 = Topic.new(title[4],Date.new)
topic6 = Topic.new(title[5],Date.new)

#CREATE USER OBJECTS
user1 = Users.new(user_name[0])
user2 = Users.new(user_name[1])
user3 = Users.new(user_name[2])
user4 = Users.new(user_name[3])
user5 = Users.new(user_name[4])
user6 = Users.new(user_name[5])
user7 = Users.new(user_name[6])

#Users are pick the topic of their interest
add_vote_topic(user1, topic1)
add_vote_topic(user3, topic1)
add_vote_topic(user4, topic1)
add_vote_topic(user5, topic1)
add_vote_topic(user6, topic1)
add_vote_topic(user6, topic3)

add_vote_topic(user2, topic2)
add_vote_topic(user2, topic4)
add_vote_topic(user3, topic5)

add_vote_topic(user3, topic3)
add_vote_topic(user4, topic3)
add_vote_topic(user5, topic5)

add_vote_topic(user7, topic4)
add_vote_topic(user7, topic1)
add_vote_topic(user7, topic2)
add_vote_topic(user7, topic3)
add_vote_topic(user7, topic5)
add_vote_topic(user7, topic6)

#DISLAY TOTAL NUMBERS OF TOPIC
Topic.get_total_topics

#array of topics and users objects
topics = [topic1, topic2, topic3, topic4, topic5, topic6]
users = [user1, user2, user3, user4, user5, user6, user7]

#display_topics(topics)
#topics = Topic.find(:all)
sorted_topic = topics.sort_by{|a| -a.total_vote_count}
sorted_topic.each{|t| t.display_all }

#DISPLAY TOTAL NUMBERS OF USERS
Users.get_total_users

sorted_users = users.sort_by{|a| -a.votes_used}
sorted_users.each{|u| u.display_all}





#DISLAY ALL TOPIC INFORMATION
=begin
topic1.display_all
topic2.display_all
topic3.display_all
topic4.display_all
topic5.display_all
topic6.display_all
#DISPLAY ALL USER INFORMATION
user1.display_all
user2.display_all
user3.display_all
user4.display_all
user5.display_all
user6.display_all
user7.display_all

=end
