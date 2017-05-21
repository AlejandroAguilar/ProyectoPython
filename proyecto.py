import web
        
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
		return render.login(11)

	def POST( self ):
		jsonvar =  web.input()
		Login.user = str( jsonvar['usuario'] )
		Login.pswd = str( jsonvar['pass'] )
		print "User " + Login.user
		print "Pass " + Login.pswd
		raise web.seeother('/inicio')

class Start:
	def GET( self ):
		print "I'm here!!!"
		jsonvar = { 'resultado': 'true'}
		print jsonvar
		return jsonvar


class hello:        
    def GET(self, name):
        if not name: 
            name = 'World'
        return 'Hello, ' + name + '!'

if __name__ == "__main__":
    app.run()