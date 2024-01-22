-- macros/populate_list.sql

{% macro drop_CICD_Schemas() %}
   
{% set my_list = run_query("SELECT DISTINCT array_agg(table_schema)  AS column_name FROM PC_DBT_DB.information_schema.tables where table_schema like 'DBT_CLOUD%'") %}
    {% for item in my_list %}
    drop schema {{item}} cascade;
        
    {% endfor %}


{% endmacro %}
