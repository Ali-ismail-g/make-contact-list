#!/usr/bin/ruby
require_relative"Person.rb"
require_relative"User.rb"
require 'getoptlong'
person = Person.new("ali")
# p person.valid_name('ali')
options = GetoptLong.new(
    [ "--list", "-l",GetoptLong::OPTIONAL_ARGUMENT ],
    [ "--name", "-n",GetoptLong::OPTIONAL_ARGUMENT ],
    [ "--email", "-e", GetoptLong::OPTIONAL_ARGUMENT],
    [ "--phone", "-p", GetoptLong::OPTIONAL_ARGUMENT ] ) 
    
    name=email=phone=""
    list = ""
    options.each do |option, arg|
        case option
        when '--list'
        list = arg
        when '--name'
        name = arg
        when '--email'
        email = arg
        when '--phone'
        phone = arg
        end
        end

# p person

new_user = User.new(name,email,phone)
new_user.create()
User.list(list.to_i)
# p new_user