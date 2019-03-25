FROM mdillon/postgis:10
#FROM kartoza/postgis

ADD ./dhis2-db.sql.gz /tmp/data/dhis2-db.sql.gz
ADD ./init-dhis2-db.sh /docker-entrypoint-initdb.d/
ADD ./create-target-db.sh /docker-entrypoint-initdb.d/
RUN gunzip /tmp/data/dhis2-db.sql.gz

EXPOSE 5433
