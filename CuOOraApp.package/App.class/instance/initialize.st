initialization
initialize
	| p d j |
	questions:= OrderedCollection new.
	topics:= OrderedCollection new.
	users:= OrderedCollection new.
	self createUser: 'pedro@cuoora.com' password: 'pedro@cuoora.com' name: 'Pedro'.
	self createUser: 'diego@cuoora.com' password: 'diego@cuoora.com' name: 'Diego'.
	self createUser: 'juan@cuoora.com' password: 'juan@cuoora.com' name: 'Juan'.
	p:= self getUser: 'pedro@cuoora.com'.
	d:= self getUser: 'diego@cuoora.com'.
	j:= self getUser: 'juan@cuoora.com'.
	self createFollowingUser: j to: d.
	self createFollowingUser: p to: j.
	