class Customer

    @@all = []

    def initialize(username, password, status)
        @username = username
        @password = password
        @status = status

        @@all << self
    end
#status has to be logged in in order to interact
end