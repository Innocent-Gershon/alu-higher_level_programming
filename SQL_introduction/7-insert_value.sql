-- nserts a new row in the table first_table
INSERT INTO first_table(id,name) VALUES(89, "Holberton School");
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <database_name>"
  exit 1
fi
DATABASE_NAME=$1
mysql -u root -p $DATABASE_NAME < insert_row.sql
echo "New row inserted into table 'first_table' in database '$DATABASE_NAME'."
