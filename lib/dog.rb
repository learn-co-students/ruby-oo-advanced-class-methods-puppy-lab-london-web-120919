class Dog
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        Dog.all.push(self)
    end

    def self.all
        @@all
    end

    def self.print_all
        self.all.map { |dog| puts dog.name}
    end

    def self.clear_all
        self.all.clear
    end

end