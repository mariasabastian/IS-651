for $x in doc("bookstore.xml")/bookstore/book return if ($x/@category="CHILDREN")
then <child>{data($x/title)}</child> else <adult>{data($x/title)}</adult>