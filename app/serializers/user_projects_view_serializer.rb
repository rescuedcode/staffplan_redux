class UserProjectsViewSerializer < ActiveModel::Serializer

  attributes :project_id, :user_id, :company_id, :assignment_id, :assignment_proposed, :assignment_archived,
             :client_id, :client_name, :project_name, :project_active, :work_weeks,
             :estimated_total, :actual_total, :diff

  has_many :work_weeks, serializer: AssignmentWorkWeekSerializer

  def estimated_total
    object.assignment_totals.estimated_total rescue 0
  end

  def actual_total
    object.assignment_totals.actual_total rescue 0
  end

  def diff
    object.assignment_totals.diff rescue 0
  end
end
