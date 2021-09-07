{% macro foreign_key(model, source_column, reference_model, reference_column) %}

alter table {{ model }} add constraint fk_{{ source_column }}_on_{{ this.table }} 
    foreign key ({{ source_column }})
    references {{ reference_model }} ({{ reference_column }})

{% endmacro %}
