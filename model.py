import web
from config import db

def extract():
	cad = 'select * from usuarios;'
	a = db.query(cad)
	print str(a[0])
	return db.query(cad)