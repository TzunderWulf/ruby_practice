class Computer
    @@users = {}
  
    def initialize(username, password)
      @username = username
      @password = password
      @@users[username] = password
      @files = {}
    end
  
    def create(filename)
      time = Time.now
      @files[filename] = time
      puts "File created: #{filename} at #{time} by #{@username}"
    end

    #update
    def update(old_filename, updated_filename)
      sleep 60
      time = Time.now
      @files[old_filename] = time
      puts "File created: #{updated_filename} at #{time} by #{@username}"
    end

    #delete

    #show all
  
    def Computer.get_users
      return @@users
    end
end
  
my_computer = Computer.new("user_1", "password")
my_computer.create("profile_picture")
my_computer.update("profile_picture", "image")