#!/usr/bin/ruby
require_relative"Talkable.rb"
require_relative"Person.rb"
class User < Person
    include Talkable
    attr_accessor :email, :phone
    def initialize(name,email,phone)
        super(name)
        self.email = email
        self.phone = phone
    end

    def create()
        if valid_name(name)
            File.open('users.txt','a') do |file1|
                file1.puts "#{self.name }:#{self.email}:#{self.phone}"
            end
            puts "user created successfully"
        else
        puts "user creation failed"
        end
    end
    
    
    def self.list(*args)
        if (args[0] == 0)
            File.open('users.txt','r') do |file2|
                while usr_read = file2.gets
                word = usr_read.split(':')    
                user = User.new(word[0],word[1],word[2])
                puts "#{user.name}**#{user.contacts}"
                end
            end
        elsif (args[0] > 0)
            counter = 0
            File.open('users.txt','r') do |file2|
                while usr_read = file2.gets and counter < args[0]
                    word = usr_read.split(':')    
                    user = User.new(word[0],word[1],word[2])
                    puts "#{user.name}**#{user.contacts}"
                    counter += 1
                    end
            end

        end
        
    end



    

end

