class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :project_id, :status, :date, :size, :project
end
