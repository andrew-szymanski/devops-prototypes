from flask import Flask
from flask.ext.mysql import MySQL

app = Flask(__name__)
mysql = MySQL()
 
# MySQL configurations
app.config['MYSQL_DATABASE_USER'] = 'myuser'
app.config['MYSQL_DATABASE_PASSWORD'] = 'mysql'
app.config['MYSQL_DATABASE_DB'] = 'mydb'
app.config['MYSQL_DATABASE_HOST'] = '172.17.0.2'
mysql.init_app(app)


@app.route('/')
def hello_world():
    conn = mysql.connect()
    cur = conn.cursor()
    cur.execute('''SELECT * FROM mytable''')
    rv = cur.fetchall()
    return str(rv)

if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0')
    
    
