-- plsql retorna sequences

               SELECT pg_namespace.nspname AS schemaname
                    , pg_class.relname     AS sequence_name
                 FROM pg_catalog.pg_class
                 JOIN pg_catalog.pg_namespace
                   ON pg_class.relnamespace = pg_namespace.oid
                WHERE pg_class.relkind = 'S'
