{% for i in range(100) %}
    select {{ i }} as number
    {% if not loop.last %}
        union all
    {% endif %}
{% endfor %}

{% set myName = "Ali" %}
{{ myName }}

{% set age = 32 %}
{{ age }}

my name is {{ myName }} and age is {{ age }}
{% set trainings_list = ["Dtabricks", "Snowflake", "DBT", "Azure"] %}
{{ trainings_list[0] }}

{% for item in trainings_list %} {{ item }} {% endfor %}

{% set Age = 32 %}

{% if Age < 30 %} young
{% else %} older
{% endif %}

{%- set trainings_list = ["Databricks", "Snowflake", "DBT", "Azure"] -%}
{%- for item in trainings_list -%}
    {%- if item=='Databricks' -%}
        Passed
    {%else%}
    In-Progress
    {%-endif -%}
{%- endfor -%}

{% set names_dict={'Name':'Ali','Age':32 } %}
{{names_dict['Age']}}
