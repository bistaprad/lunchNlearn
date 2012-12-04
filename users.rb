class Users
  attr_accessor :user_name, :votes_used, :topics_on_bucket, :user_id
  attr_reader :total_users
  @@total_users = 0
  def initialize(user_name, topic =nil)
    if topic == nil
      @votes_used = 0 
    else
      @votes_used = 1
    end
    @@total_users = @@total_users+1
    @topics_on_bucket = []
    @user_name = user_name
    @topics_on_bucket  = @topics_on_bucket.push(topic)
    #@user_id = @@total_users+1
  end
  
  def add_topics(topic)
    if @votes_used >= 5
      puts "#{@user_name} : There are already five topics in your bucket"
    else
      @topics_on_bucket  = @topics_on_bucket.push(topic)
      @votes_used = @votes_used+1
    end
  end

  def display_all
    puts "***********************************************"
    puts "User Name: #{@user_name.upcase}"
    puts "Votes Used: #{@votes_used}"
    puts "Topics in bucket: #{@topics_on_bucket}"
    puts "***********************************************"
  end

  def self.get_total_users
	puts ""
    puts "Total Number of Users: #{@@total_users}"
  end
end



=begin
    

#user 1
user1 = Users.new("ram", "Ant Colony \t")
user1.add_topics("Game of Life \t")
user1.add_topics("Game of Throne \t")

#user 2
user2 = Users.new("khoste", "Human behaviour \t")
user2.add_topics("Barun ko katha")


Users.get_total_users
user1.display_all
user2.display_all

=end
