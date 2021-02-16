class Backer
    attr_reader :name, :backed_projects

    def initialize(name)
        @name=name

    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def projectbackerlist
        ProjectBacker.all.select do |projectbacker|
            projectbacker.backer==self
        end
    end

    def backed_projects
        projectbackerlist.collect do |project|
            project.project
        end
    end

end