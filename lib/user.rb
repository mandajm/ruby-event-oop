
require "pry"
class User
    attr_accessor :email
    @@all = []  #j'initialise le variable all pour contenir tous les emails des utilisateurs!
        def initialize (user_email)
            @email = user_email
            @@all << email
        end
        def self.all
            return @@all

        end

end
puts "end of lines"
