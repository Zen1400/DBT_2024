
{% macro operational_margin(mar, shipping_fee, logcost, ship_cost) %}
    ROUND({{mar}} + {{shipping_fee}} - ({{logcost}} + CAST({{ship_cost}} AS FLOAT64))) 
{% endmacro %}

