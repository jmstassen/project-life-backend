class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :tasks
end
