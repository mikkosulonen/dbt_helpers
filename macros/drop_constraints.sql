{% macro drop_constraints(this) %}

{% set results = run_query(
    "select constraint_name 
    from information_schema.table_constraints 
    where constraint_catalog ilike '" ~ target.database ~ "'
    and constraint_schema ilike '" ~ this.schema ~ "'
    and table_name ilike '" ~ this.table ~ "'
    and constraint_name ilike 'pk%'") %}

{% if execute %}   
{% set results_list = results.columns[0].values() %}
{% endif %}

{% for CONSTRAINT_NAME in results_list %}
    {% set query %}
        alter table {{ this }} drop constraint {{ CONSTRAINT_NAME }}
    {% endset %}
    {% do run_query(query) %}
{% endfor %}

{% endmacro %}
