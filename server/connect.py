import psycopg2

conn = psycopg2.connect("\
	dbname='askandtrust'\
	user='postgres'\
	host='localhost'\
	password='postgres'\
");
c = conn.cursor()
