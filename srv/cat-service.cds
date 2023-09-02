using task.tracker.db as db from '../db/data-model';

service CatalogService {
    entity Tasks as projection on db.Tasks;
    entity Users as projection on db.Users;
}
