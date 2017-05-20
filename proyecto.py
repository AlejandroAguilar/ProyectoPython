import web
        
urls = (
    #'/(.*)', 'hello'
    '/', 'Index'
)
app = web.application(urls, globals())
render = web.template.render('templates/')

class Index:
	def GET( self ):
		return render.index()


class hello:        
    def GET(self, name):
        if not name: 
            name = 'World'
        return 'Hello, ' + name + '!'

if __name__ == "__main__":
    app.run()