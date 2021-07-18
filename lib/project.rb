class Project
    attr_accessor :title

    @@all = []
    
    def initialize(title)
        self.title = title
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        pbs = ProjectBacker.all.filter { |pb| pb.project == self }
        pbs.map { |pb| pb.backer }
    end

    def self.all
        @@all
    end
end