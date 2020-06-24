require 'set'
class TicTacToe

    attr_accessor :player1Name, :player2Name, :board

    @@winSpace = [
                [[0, 0], [0, 1], [0, 2]],
                [[1, 0], [1, 1], [1, 2]],
                [[2, 0], [2, 1], [2, 2]],
                [[0, 0], [1, 0], [2, 0]],
                [[0, 1], [1, 1], [2, 1]],
                [[0, 2], [1, 2], [2, 2]],
                [[0, 0], [1, 1], [2, 2]],
                [[0, 2], [1, 1], [2, 0]]]

    def initialize(player1Name, player2Name)
        @player1Name = player1Name
        @player2Name = player2Name
        @board = [['.', '.', '.'], 
                  ['.', '.', '.'],
                  ['.', '.', '.']]
    end

    def gameStatus()
        @@winSpace.each { |winSequence|
            playersWS = Set[]
            winSequence.each { |loc|
                row = loc[0]
                col = loc[1]
                playersWS.add(@board[row][col])
            }
            if playersWS.size() == 1 && !(playersWS.include?("."))
                if playersWS.include?("X")
                    return 0
                end
                return 1
            end
        }
        return -1
    end

    def printBoard()
        @board.each { |row|
            row.each { |e|
                print e
            }
            print "\n"
        }
    end

    def play()
        self.printBoard()
        playerToggle = 0
        while (gameStatus() == -1) do
            if playerToggle == 0
                puts "PLAYER: #{self.player1Name}\tTOKEN: X"
            else
                puts "PLAYER: #{self.player2Name}\tTOKEN: O"
            end
            puts "ENTER ROW:"
            row = gets.chomp.to_i - 1
            puts "ENTER COLUMN:"
            column = gets.chomp.to_i - 1

            @board[row][column] = (playerToggle == 0) ? "X" : "O"
            playerToggle = 1 - playerToggle
            self.printBoard()
        end
    end

end


testGame = TicTacToe.new("Neal", "Neal2")
testGame.play()