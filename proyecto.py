import web
import demjson

urls = (
    #'/(.*)', 'hello'
    '/', 'Login',
    '/inicio', 'Start',
)
app = web.application(urls, globals())
render = web.template.render('templates/')

class Index:
	def GET( self ):
		return render.index()

class Login:
	user = ''
	paswd = ''
	
	def GET( self ):
		return render.login()

	def POST( self ):
		jsonvar =  web.input()
		Login.user = str( jsonvar['usuario'] )
		Login.pswd = str( jsonvar['pass'] )
		print "User " + Login.user
		print "Pass " + Login.pswd
		jsonvar = { "resultado": True}
		obj = demjson.encode( jsonvar )
		print type( obj )
		print obj 
		return obj

class Start:
	def GET( self ):
		print "I'm here!!!"
		return render.inicio()


class hello:        
    def GET(self, name):
        if not name: 
            name = 'World'
        return 'Hello, ' + name + '!'

if __name__ == "__main__":
    app.run()