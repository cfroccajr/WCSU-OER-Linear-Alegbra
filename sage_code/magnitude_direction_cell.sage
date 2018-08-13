import random

def rand_vector():
    v1 = random.randint(-5,5)
    v2 = random.randint(-5,5)
    v3 = random.randint(-5,5)
    return vector(ZZ, [v1,v2,v3])

@interact
def _(values=input_grid(1,4,default=[2,1,0,1],type=int,width=2),
		action = selector(['Hide Solution','Show Solution'], buttons=True)):
    v = vector(values[0])
    print "Try to find the magnitude and corresponding\n unit vector for v=",v
    if action=="Show Solution":
	    print "The magnitude of v is",v.norm()
