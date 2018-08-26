puts "TODO Implement the game of blackjack."

# Hint: for starters, read bin/blackjack.rb

class Card
    attr_accessor :rank, :suit, :other_card

    def initialize (rank, suit)
        @card = []
        @rank = rank
        @suit = suit
        @face_value = [:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K]
    end

    def value
        @face_value.index(rank)
    end

    def == (other_card)
        self.rank == other_card.rank &&
        self.suit == other_card.suit
      end

    def greater_than? (other_card)
        self.value > other_card.value
    end

end

class Deck
    attr_accessor 

    def initialize
        @deck = []
        @rank_values = [:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K]
        @suit_values = [:clubs, :diamonds, :hearts, :spades]

        builder
    end

    def builder
        @suit_values each do |suit|
            @rank_values each do |rank|
                card = Card.new(rank, suit)
                @deck << card
            end
        end
    end

    def draw
        @deck.shift
    end

    def shuffle
        @deck.shuffle!
    end

    def cards_left
        @deck.length
    end

end

