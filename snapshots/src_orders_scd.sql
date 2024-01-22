{% snapshot orders_hist %}
    {{
        config(
            target_schema='DBT_History',
            unique_key='ID',
            strategy='timestamp',
            updated_at='_ETL_LOADED_AT'
        )
    }}

    select * from {{ source('jaffle_shop', 'orders') }}
 {% endsnapshot %}