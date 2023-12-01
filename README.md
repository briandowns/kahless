# kahless 

kahless (KAY-less) is an attempt at an ORM for Dictu.

## Drivers

* SQLite
* MySQL (coming soon...)

## Models

Kahless provides a base class model that can be used in user models. 

The fields included:

* id: INTEGER PRIMARY KEY, AUTOINCREMENT
* created_at: DATETIME
* updated_at: DATETIME
* deleted_at: DATETIME

### Class Annotations

`@Table("TABLE_NAME")`

This annotation is **required** to be applied to any class used as a model.

### Field Annotations

None of the field annotations are required.

`@Type("type")`

Explicitly set the type of the field. Kahless will attempt to determine the type of the field for you if left off.

`@Column("column_name")`

This annotations is **required**. It tells Kahless the name of the column associated with the field.

`@PrimaryKey`

Indidates that the field is to be used as the primary key for the table.

`@AutoIncrement`

Automatically increments the value for the field. This is used in conjunction to the `@PrimaryKey` annotation.

## Examples

For a full example, check out the example.du file.

## API

### Retrieving Records

* first - returns the first record in the table
* last - returns the last record in the table
* find - gets all records from the table

### Deleting Records

* delete

If the model contains a field called `deletedAt`, you receive soft delete ability automatically. If the model doesn't contain this field, the record is deleted permanently.

### Updating Records

* update

### Raw Queries

* rawQuery - takes an SQL query, executes it, and returns the results in list form

## Contact

Brian Downs [@bdowns328](http://twitter.com/bdowns328)

## License

Kahless source code is available under the BSD 3 Clause [License](/LICENSE).
