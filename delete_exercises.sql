USE codeup_test_db;


-- Albums released after 1991
-- select * from albums where release_date > 1991;
delete from albums where release_date > 1991;

-- Albums with the genre 'disco'
-- select * from albums where genre = 'disco';
delete from albums where genre = 'disco';

-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
-- select * from albums where artist = 'James Horner';
delete from albums where artist = 'James Horner';



#
# VIVIAN CODE BELOW REVIEW COMPARE AND REFERENCE
# USE codeup_test_db;
#
# # Write SELECT statements for:
# -- Albums released after 1991
# SELECT * FROM albums
# WHERE release_date > '1991';
#
#
# -- Albums with the genre 'disco'
# SELECT * FROM albums
# WHERE genre LIKE '%disco%';
#
#
# -- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
# SELECT * FROM albums
# WHERE artist LIKE '%whitney houston%';
#
#
# # DELETEs
#
# DELETE FROM albums
# WHERE release_date > '1991';
#
#
#
# DELETE FROM albums
# WHERE genre LIKE '%disco%';
#
#
#
#
# DELETE FROM albums
# WHERE artist LIKE '%whitney houston%';
# SELECT * FROM albums;