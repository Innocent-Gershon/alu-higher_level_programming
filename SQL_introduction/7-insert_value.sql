if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <database_name>"
  exit 1
fi

# Assign the argument to a variable
DATABASE_NAME=$1

# Insert the new row into the table
mysql -u root -p -e "
USE $DATABASE_NAME;
INSERT INTO first_table (id, name) VALUES (89, 'Best School');
