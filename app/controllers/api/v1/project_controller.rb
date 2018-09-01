class Api::V1::ProjectController<ApplicationController

before_action:authorize,only:[:new,:create,:edit,:update,:destroy]
before_action:find_category,only:[:show,:edit,:update,:destroy]

def show
@projects=Project.all
@stripdown=Redcarpet::Markdown.new(Redcarpet::Render::StripDown,\:space_after_headers=>true)
end

def new
end

def create
@project=Project.new(:project=>params[:name])
if@project.save!
redirect_to '/admin'
else
render 'new'
end
end

def edit
end

def update
name=project_params[:name]
@project.update(:project=>name)
end


def destroy
@project.destroy
redirect_to '/admin'
end

private
def find_project
@project=Project.find(params[:idproject])
end

def project_params
params.require(:project)
end


end