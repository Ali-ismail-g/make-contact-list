#!/usr/bin/ruby

class Person
    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def valid_name(name)
        return (name =~ /[a-zA-Z]/) ? true : false
        # if name =~ /\A[GCTA]+\z/
        #     return true
        # end
    end











end