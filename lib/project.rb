class Project

    attr_reader :title
    
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        my_backers = ProjectBacker.all.select do |proj_backer_obj|
            proj_backer_obj.project == self
        end
            my_backers.map do |my_backer|
                my_backer.backer
            end
        end


end