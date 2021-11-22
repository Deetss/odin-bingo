module BoardsHelper
    def squareActive?(square)
        if square.active
            return "active"
        else 
            return
        end
    end
end
