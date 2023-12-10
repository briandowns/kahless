# kahless 

kahless (KAY-less) is a simple ORM for [Dictu](https://github.com/) programming language.

## Driver Support

Currently Haless support SQLite for the underlying database.

## Models

Kahless provides a base class model that can be used in user models. Kahless expects models to inheret this class. At some point this will not be a requirement but for now, `< kahless.Model` your models. `:)`

| Field      | Data Type | Additional                 |
| ---------- | --------- | -------------------------- |
| id         | INTEGER   | PRIMARY KEY, AUTOINCREMENT |
| created_at | DATETIME  |                            |
| updated_at | DATETIME  |                            |
| deleted_at | DATETIME  |                            |

### Class Annotations

This annotation is **required** to be applied to any class used as a model.

```cs
@Table("TABLE_NAME")
```

### Field Annotations

None of the field annotations are required.

```cs
@Type("type")
```

Explicitly set the type of the field. If this annotation isn't used, Kahless will attempt to determine the type of the field for you. 

The supported types and their mappings:

| SQL     | Dictu  |
| ------- | ------ |
| TEXT    | string |
| INTEGER | number |
| REAL    | bool   |

```cs
@Column("column_name")
```

This annotation tells Kahless the name of the column associated with the field. Kahless will use the name of the field of this annoation is not used.

```cs
@Index("idx_name")
```

Creates an index for the field the annotation is applied.

```cs
@UniqueIndex("idx_name")
```

Creates a unique index for the field the annotation is applied.

**NOTE** 

The below annotations are used internally by the framework.

```cs
@PrimaryKey
```

Indicates that the field is to be used as the primary key for the table.

```cs
@AutoIncrement
```

Automatically increments the value for the field. This is used in conjunction to the `@PrimaryKey` annotation.

## Examples

For a full example, check out the example.du file.

## API

### Retrieving Records

All methods that return data return a Result type. This type contains a field called "rows" which contains the data, an error field, and a "rowsAffected" field that holds the number of records returned from the query.

* first - returns the first record in the table
* last - returns the last record in the table
* find - gets all records from the table
* where - retrieves all records matching the given condition and values

### Deleting Records

* delete

If the model contains a field called `deletedAt`, you receive soft delete ability automatically. If the model doesn't contain this field, the record is deleted permanently.

### Updating Records

* update - updates a record for a given ID. The record's `updatedAt` field is set to the time of query execution.

### Raw Queries

* rawQuery - takes an SQL query, executes it, and returns the results in list form

## Contact

Brian Downs [@bdowns328](http://twitter.com/bdowns328)

## License

Kahless source code is available under the BSD 3 Clause [License](/LICENSE).
