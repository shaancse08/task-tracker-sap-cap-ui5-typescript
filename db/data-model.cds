namespace task.tracker.db;

using {reusable.types as types} from './ReusableTypes';
using {managed} from '@sap/cds/common';

/**
 * The below entity we have for Project Details Here all the
 * projects will be listed. Data File Name:
 * task.tracker.db-Project.csv Columns: ID;name
 */

entity Project : managed {
  key ID    : UUID;
      name  : String;
      tasks : Composition of many Tasks
                on tasks.project = $self;
      user  : Association to many ProjectUser
                on user.ProjectId = $self;

}


/**
 * The below entity ProjectUser is the entity for n:n for
 * Project and User. So One user can have mutiple Project and
 * one project can have multiple users.
 */
entity ProjectUser {
  key UserId    : Association to Users;
  key ProjectId : Association to Project;
}


/**
 * Below is the entity for all the Task Details. And a Task can
 * be assigned to one person at a time.
 * task.tracker.db-Tasks.csv
 */
entity Tasks : managed {
  key ID          : UUID @title: '{i18n>ID}';
      name        : String;
      description : String;
      status      : types.Status;
      dueDate     : Date;
      priority    : types.Priority;
      user        : Association to Users;
      project     : Association to one Project;
}


/**
 * Below entity will be represnt the User Details
 * task.tracker.db-Users.csv
 */
entity Users : managed {
  key ID      : UUID @title: '{i18n>ID}';
      name    : String;
      email   : String;
      task    : Association to many Tasks
                  on task.user = $self;
      project : Association to many ProjectUser
                  on project.UserId = $self;
}
