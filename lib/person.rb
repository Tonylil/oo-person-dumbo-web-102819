require 'pry'
class Person
#Get Paid/Recieve Payments
#Take a bath
#Call a friend
#Start a Conversation
#State if they are happy and/or clean

    attr_accessor  :bank_account, :happiness, :hygiene
    attr_reader    :name
    def initialize(name)
        @name  = name
        @bank_account = 25.0
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happy)
        if happy > 10 
            @happiness = 10
        elsif happy < 0
            @happiness = 0
        else
            @happiness = happy
        end
    end 

    def hygiene=(hygiene)
        if hygiene > 10 
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end 

    def happy?
        @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = @hygiene + 4
    
        '♪ Rub-a-dub just relaxing in the tub ♫'
        
    end

    def work_out
        self.hygiene = @hygiene - 3
        self.happiness = @happiness + 2
        '♪ another one bites the dust ♫'
    end 

    def call_friend(friend)
        self.happiness = @happiness + 3
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness= @happiness - 2
            person.happiness= person.happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness= @happiness + 1
            person.happiness= person.happiness + 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end