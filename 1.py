import psycopg2 as pg2

conn = pg2.connect(database='dvrental',user='postgres', password= 'root', host='localhost', port=5432)

cur = conn.cursor()

# cur.execute('SELECT * FROM payment')
# print(cur.fetchone())
# print(cur.fetchall())

cur.execute('''
            CREATE TABLE course1(
                course_id SERIAL PRIMARY KEY,
                course_name VARCHAR(50) UNIQUE NOT NULL,
                course_instructor VARCHAR(140) NOT NULL,
                topic VARCHAR(150) NOT NULL);
            ''')

conn.commit()
cur.close()


