with 
    dates_raw as (
    {{ dbt_utils.date_spine(
        datepart="day",
        start_date="cast('2015-01-01' as date)",
        end_date="cast('2025-01-01' as date)"
        )
    }}
)
select * from dates_raw