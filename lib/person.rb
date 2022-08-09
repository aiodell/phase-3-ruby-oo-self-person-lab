require 'pry'
class Person

    attr_accessor :bank_account
    attr_reader :name, :hygiene, :happiness
      
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    # set happiness level - changes and needs separate setter
    def happiness=(happiness)
        @happiness = if happiness >= 10
                        10
                    elsif happiness <= 0
                        0
                    else
                        happiness
                    end
    end

    # set hygiene level - changes and needs separate setter
    def hygiene=(hygiene)
        @hygiene = if hygiene >= 10
                        10
                    elsif hygiene <= 0
                        0
                    else 
                        hygiene
                    end
    end

    # non-attribute instance methods
    
    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid(amount)
        self.bank_account += amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        [self, friend].each { |person| person.happiness +=3}
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            [self, friend].each { |person| person.happiness -=2}
           return "blah blah partisan blah lobbyist"
        when "weather"
            [self, friend].each { |person| person.happiness +=1}
           return "blah blah sun blah rain"
        else
           return "blah blah blah blah blah"
        end
    end
end