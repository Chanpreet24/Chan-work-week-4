class SecretDiary

    def initialize 
        @lock = true
    end

    def lock
        @lock = true
    end

    def unlock
        @lock = false
    end

    def add_entry(user_input)
        if @lock
        fail 'failed to add entry as diary is locked'
        else
        @entry = user_input
        end
    end

    def get_entries   
        if @lock
            fail 'failed to get entry as diary is locked'
            else
            @entry
            end
        end
end

