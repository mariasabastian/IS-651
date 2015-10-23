for $x in doc("catalog.xml")/catalog/cd return if ($x/@category="CHILDREN")
then <child>{data($x/title)}</child> else <adult>{data($x/title)}</adult>