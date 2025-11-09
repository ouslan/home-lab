# coffee_db_staging
docker exec -it $CONTAINER psql -U master -c "CREATE DATABASE coffee_db_staging;"
docker exec -ti $CONTAINER /bin/sh -c "export PGPASSWORD='$POSTGRES_PASSWORD'; zcat backups/last/coffee_db_staging-latest.sql.gz | psql --username=$POSTGRES_USER --dbname=coffee_db_staging"

# fsdc_db_prod
docker exec -it $CONTAINER psql -U master -c "CREATE DATABASE fsdc_db_prod;"
docker exec -ti $CONTAINER /bin/sh -c "export PGPASSWORD='$POSTGRES_PASSWORD'; zcat backups/last/fsdc_db_prod-latest.sql.gz | psql --username=$POSTGRES_USER --dbname=fsdc_db_prod"

# fsdc_db_staging
docker exec -it $CONTAINER psql -U master -c "CREATE DATABASE fsdc_db_staging;"
docker exec -ti $CONTAINER /bin/sh -c "export PGPASSWORD='$POSTGRES_PASSWORD'; zcat backups/last/fsdc_db_staging-latest.sql.gz | psql --username=$POSTGRES_USER --dbname=fsdc_db_staging"

# jp_db_prod
docker exec -it $CONTAINER psql -U master -c "CREATE DATABASE jp_db_prod;"
docker exec -ti $CONTAINER /bin/sh -c "export PGPASSWORD='$POSTGRES_PASSWORD'; zcat backups/last/jp_db_prod-latest.sql.gz | psql --username=$POSTGRES_USER --dbname=jp_db_prod"

# jp_db_staging
docker exec -it $CONTAINER psql -U master -c "CREATE DATABASE jp_db_staging;"
docker exec -ti $CONTAINER /bin/s/h -c "export PGPASSWORD='$POSTGRES_PASSWORD'; zcat backups/last/jp_db_staging-latest.sql.gz | psql --username=$POSTGRES_USER --dbname=jp_db_staging"
