{% snapshot customers_hist %}
    {{
        config(
            target_schema='DBT_History',
            unique_key='ID',
            strategy='check',
            check_cols=['FIRST_NAME','LAST_NAME']
        )
    }}

    select * from {{ source('jaffle_shop', 'customers') }}
 {% endsnapshot %}