require 'pry'
require 'time'
puts ""

puts "Créer un evenement : event = Event.new(date de l'evenement, durée , titre de l'evenement, les invitées) "
puts "vous pouvez decaler votre evenement en faisans: event.decaler_de_24h"
puts " "
puts " ***************************************************************************** "
puts " "


class Event
    @@list = [ ]

    attr_accessor :start_date, :durations, :title , :list
 
        def initialize (present_day, durations_of_event, title_of_event, les_invites )
            @start_date = Time.parse("#{present_day}")
            @durations = durations_of_event
            @title = title_of_event
            @@list = les_invites


        end
        def date_begin
            return "Date de debut : #{@start_date}"

        end

        def duree
            puts "Durée : #{@durations}"
        end


        def Title
            puts "Titre : #{@title}"
        end

        def les_invites
            print "Les invités : "
            for i in 0...@@list.length
                print "#{@@list[i]}, "
            end
            puts " "
        end


        def decaler_de_24h

            time = @start_date + 60 * 60 * 24  # 60secs * 60mn * 24h
            puts time
        end


        def end_date
            line = @start_date + @durations * 60
            puts "Date du fin : #{line} "
        end


        def is_past
            if Time.now > @start_date
                puts "=> L'evenement n'est pas encore passée"
            elsif Time.now == @start_date
                puts "=> L'evenement est pour Aujourd'hui"
            else
                puts "=> L'evenement est encor dans le futur"
            end
        end


        def in_soon
            if @start_date == @start_date - 60 * 30
                puts "=> Event begin around 30 minutes"
            else
                puts "=> L'evenement est encor loin"
            end
            

        end






end


event = Event.new("2015-02-13 13:00", 30, "monday",["mark@dol.com","mano@j.com"])
event.date_begin
event.Title
event.duree
event.les_invites
event.end_date
puts "     ***** Detailes sur l'evenement *****       "
event.is_past
event.in_soon