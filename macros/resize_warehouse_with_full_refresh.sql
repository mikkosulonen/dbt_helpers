{% macro resize_warehouse_with_full_refresh() %}

{% if flags.FULL_REFRESH %}

    ALTER WAREHOUSE {{ target.WAREHOUSE }} SET WAREHOUSE_SIZE = {{ var('full_refresh_warehouse_size') }}

    {% else %}

    ALTER WAREHOUSE {{ target.WAREHOUSE }} SET WAREHOUSE_SIZE = {{ var('dataload_warehouse_size') }}

{% endif %}

{% endmacro %}
