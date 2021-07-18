class Backer
    attr_accessor :name

    @@all = []
    
    def initialize(name)
        self.name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        pbs = ProjectBacker.all.filter { |pb| pb.backer == self }
        pbs.map { |pb| pb.project }
    end

    def self.all
        @@all
    end
end