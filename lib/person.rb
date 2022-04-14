# your code goes here
class Person
attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
        @hygiene = 8
        @friend
        @happiness = 8 
        @take_bath
    end
    def happiness=(num)
        @happiness = num
        if @happiness > 10
        @happiness = 10 

        elsif @happiness < 0
        @happiness = 0
        end
    end

    def hygiene=(num)
        @hygiene = num
        if @hygiene > 10
        @hygiene = 10

        elsif @hygiene < 0
        @hygiene = 0
        end

     end
     def happy?
        if happiness > 7 
            true
        else
            false
       end
     end

     def clean?
        if hygiene > 7 
            true 
        else 
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        @happiness += 1
    "all about the benjamins"
    end
     
    def take_bath 
       self.hygiene += 4

        "♪ Rub-a-dub just relaxing in the tub ♫"

    end

    def work_out
        self.hygiene -= 3 
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        [friend, self].each {|o| o.happiness += 3 }
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    # def start_conversation(person, topic)
    #     if topic == "politics"
           
    #         object = [person, self]
    #         object.each do |o|
    #         o.happiness -= 2
    #         first, second = ["partisan", "lobbyist"]

    #         end
    #         elsif topic == "weather"
            
    #         object.each do |o|
    #          o.happiness += 1
    #             end
    #             first,second = ["sun", "rain"]
           
    #         else
              
             
    #     end
    #     first ||= "blah"
    #     second ||= "blah"

    #     "blah, blah, #{first}, blah, #{second}"
    # end
    def start_conversation(person, topic)
        objects = [self, person]
        if topic == "politics"
          objects.each { |o| o.happiness -= 2}
          first, second = ["partisan", "lobbyist"]
        elsif topic == "weather"
          objects.each { |o| o.happiness += 1}
          first, second = ["sun", "rain"]
        end
        first ||= "blah"
        second ||= "blah"
        base_string = "blah blah #{first} blah #{second}"
      end
end