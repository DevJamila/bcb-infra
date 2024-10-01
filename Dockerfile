FROM postgres

ENV POSTGRES_PASSWORD bcbtest
ENV POSTGRES_DB bcb_db

COPY bcb-db.sql /docker-entrypoint-initdb.d/