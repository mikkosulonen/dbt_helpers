{% macro primary_key(this, column) %}

{{ drop_constraints(this) }}

alter table {{ this }} add constraint pk_{{ target.database }}_{{ column }}_on_{{ this.table }} primary key ({{ column }})

{% endmacro %}
