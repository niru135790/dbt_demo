{% macro get_weather(x) %}

CASE WHEN MONTH(TRY_TO_TIMESTAMP({{x}})) in (12,1,2)
    THEN 'WINTER'
    WHEN MONTH(TRY_TO_TIMESTAMP({{x}})) in (3,4,5)
    THEN 'SPRING'
    WHEN MONTH(TRY_TO_TIMESTAMP({{x}})) in (6,7,8)
    THEN 'SUMMER'
    ELSE 'AUTUMN' 

{%endmacro%}