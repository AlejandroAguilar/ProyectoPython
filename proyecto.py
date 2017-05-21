import web
        
urls = (
    #'/(.*)', 'hello'
    '/', 'Login'
)
app = web.application(urls, globals())
render = web.template.render('templates/')

class Index:
	def GET( self ):
		return render.index()

class Login:
	def GET( self ):
		return render.login()

	def POST( self ):
		Login.user = web.input()
		Login.pswd = web.input()

class hello:        
    def GET(self, name):
        if not name: 
            name = 'World'
        return 'Hello, ' + name + '!'

if __name__ == "__main__":
    app.run()