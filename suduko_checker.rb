# Determine if a 9 x 9 Sudoku board is valid. Only the filled cells need to be validated according to the following rules:

# Each row must contain the digits 1-9 without repetition.
# Each column must contain the digits 1-9 without repetition.
# Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9 without repetition.
# Note:

# A Sudoku board (partially filled) could be valid but is not necessarily solvable.
# Only the filled cells need to be validated according to the mentioned rules.
 
# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
    board_2 = col_to_row(board)
    board_3 = sub_box_to_rows(board)
    row_checker(board) && row_checker(board_2) && row_checker(board_3) ? true : false

end

def col_to_row(board)
    new_board = []
    i = 0
    while i < 9
        j = 0
        new_row = []
        while j < 9
            new_row << board[j][i]
            j += 1
        end
        new_board << new_row
        i += 1
    end
    new_board
end

def row_checker(board)
    board.each do |row|
    #    return false if row.all?{|el| el == '.'}

        row.each do |col|
            if col == '.'
                next
            elsif !row.one?{ |el| el == col}
                return false
            end
        end
    end
end

def sub_box_to_rows(board)
    box_board = []
    i = 3
    j = 0
    while j < 9
        new_arr = []
        box_board << box_to_row(i,j,new_arr,board)
        j += 3
    end
    
    i += 3
    j = 0
    while j < 9
        new_arr = []
        box_board << box_to_row(i,j,new_arr,board)
        j += 3
    end
    
    i += 3
    j = 0
    while j < 9
        new_arr = []
        box_board << box_to_row(i,j,new_arr,board)
        j += 3
    end   

    box_board
end

def box_to_row(i,j,new_arr,board)
    x = i - 3
    while x < i
        y = j - 3
        while y < j
            new_arr << board[x][y]
            y += 1
        end
        x += 1
    end
    new_arr
end

