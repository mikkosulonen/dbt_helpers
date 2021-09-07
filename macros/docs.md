{% docs __dbt_utils__ %}
# Utility macros

[dbt-utils in Github](https://github.com/fishtown-analytics/dbt-utils)

Our dbt project heavily uses this suite of utility macros, especially:
- `surrogate_key`
{% enddocs %}

{% docs dbt_this %}

[dbt Jinja reference: this](https://docs.getdbt.com/reference/dbt-jinja-functions/this)

{% enddocs %}


{% docs drop_constraints %}

Checks information schema for constraints and drops them.
For usage, check the "Referenced by" part in this documentation.

{% enddocs %}

{% docs foreign_key %}

Create a foreign key reference.
For usage, check the "Referenced by" part in this documentation.

{% enddocs %}