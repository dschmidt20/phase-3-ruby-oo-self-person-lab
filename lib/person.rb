# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def name
        @name
      end
    def bank_account
        @bank_account
    end
    def happiness=(num)
        @happiness =  if num > 10
                        10
                      elsif num < 0
                        0
                      else
                        num
                      end
    end
    def hygiene=(num)
        @hygiene =  if num > 10
            10
          elsif num < 0
            0
          else
            num
          end
    end
    def happy?
        @happiness > 7 ? true : false
    end
    def clean?
        hygiene > 7 ? true : false
    end
    def get_paid amount
        @bank_account += amount
        'all about the benjamins'
    end
    def take_bath
        @hygiene <= 6 ? @hygiene += 4 : @hygiene += 10 - @hygiene
        hygiene
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        @hygiene >=3 ? @hygiene -= 3 : @hygiene -= @hygiene
        @happiness <=8 ? @happiness += 2 : @happiness += 10 - @happiness
        "♪ another one bites the dust ♫"
    end
end