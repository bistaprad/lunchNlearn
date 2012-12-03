class Users
  attr_accessor :user_name, :votes_used, :topics_on_bucket, :user_id
  
  def initialize(user_name, votes_used, topic)
    @@total_users = 0
    @topics_on_bucket = []
    @user_name = user_name
    @votes_used = votes_used
    @topics_on_bucket  = @topics_on_bucket.push(topic)
    @user_id = @@total_users+1
  end
  
  def add_topics(topic)
    @topics_on_bucket  = @topics_on_bucket.push(topic)
  end
  
  
end

#user 1
user1 = Users.new("ram", 2, "dijkistras algo")
user1.add_topics("game of life")

puts user1.user_name



#user 2
user2 = Users.new("barun bander", 4, "nash equilibira")

puts user2.user_name