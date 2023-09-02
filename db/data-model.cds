namespace task.tracker.db;

using {reusable.types as types} from './ReusableTypes';
using {managed} from '@sap/cds/common';


/**
 * Below is the entity for all the Task Details. And a Task can
 * be assigned to one person at a time.
 * task.tracker.db-Tasks.csv
 */
entity Tasks : managed {
  key ID          : UUID;
      name        : String;
      description : String;
      status      : types.Status;
      dueDate     : Date;
      user        : Association to Users;
}


/**
 * Below entity will be represnt the User Details
 * task.tracker.db-Users.csv
 */
entity Users : managed {
  key ID    : UUID @title: '{i18n>ID}';
      name  : String;
      email : String;
      task  : Association to many Tasks
                on task.user = $self;
}