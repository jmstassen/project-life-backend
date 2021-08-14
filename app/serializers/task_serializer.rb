class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :size, :date, :status, :project_id
end
