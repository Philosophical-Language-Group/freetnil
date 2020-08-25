# $name$

$full$

| Abbrev | Value | Gloss |
|--------|-------|-------|
$for(values)$
| $it.abbrev/uppercase$ | [$it.name$] | $it.brief/nowrap$ |
$endfor$

Table: The $values/length$ values of $name$

$for(values)$
$it:category-value.md()$
$endfor$
