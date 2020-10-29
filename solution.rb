class Deck
    attr_accessor :cards
    def initialize
        @cards = []
        outer_loop = 0
        inner_loop = 1
        rank = ""
        suit = ""
        while(outer_loop < 4)
            case outer_loop
            when 0
                suit = "Hearts"
            when 1
                suit = "Diamonds"
            when 2
                suit = "Clubs"
            when 3
                suit = "Spades"
            end

            while(inner_loop < 14)
                case inner_loop
                when 1
                    rank = "A"
                when 2..10
                    rank = inner_loop
                when 11
                    rank = "J"
                when 12
                    rank = "Q"
                when 13
                    rank = "K"
                end

                new_card = Card.new(suit,rank)
                @cards << new_card
                inner_loop+=1

            end
            inner_loop = 1
            outer_loop+=1
        end
    end

    def choose_card
        random_index = rand(0...(@cards.size))
        @cards.delete_at(random_index)
    end
end

class Card
    attr_accessor :rank, :suit
    def initialize(suit, rank)
        @rank =  rank
        @suit = suit
    end 
end
