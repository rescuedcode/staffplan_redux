function Client(attributes) {
  var self = this;

  if(attributes == null) {
    attributes = {}
  }

  self.id = attributes.client_id;
  self.client_name = ko.observable(attributes.client_name);
  self.company_id = attributes.company_id;
  self.assignments = ko.observableArray();
  self.addAssignmentRecord(attributes)
}

_.extend(Client.prototype, {
  addAssignmentRecord: function(attributes) {
    this.assignments.push(
      new Assignment(
        _.pick(attributes,
          "user_id", "actual_total", "assignment_id", "diff", "estimated_total", "project_active", "client_name", "client_id",
          "assignment_archived", "assignment_proposed", "project_id", "project_name", "work_weeks"
        )
      )
    )
  }
})
