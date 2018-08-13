import random

def rand_vector():
    v1 = random.randint(-5,5)
    v2 = random.randint(-5,5)
    v3 = random.randint(-5,5)
    v4 = random.randint(-5,5)
    return vector(ZZ, [v1,v2,v3,v4])

@interact
def _(values=input_grid(1,4,default=[2,1,0,1],type=int,width=2),
		action = selector(['Hide Solution','Show Solution'], buttons=True)):
    v = vector(values[0])
    print "Try to find the magnitude and unit vector for\n\n\tv=",v
    if action=="Show Solution":
    	n = v.norm()
        print "\nThe magnitude of v is",n,"or approximately",float(n)
        try:
            u=1/n*v
        except:
            print "Error encountered, possibly division by zero."
        print "\nThe unit vector is \n\n\tu=",u
    v=rand_vector()
    print "\nAfter solving finind the values for the first one,\ntry to find the magnitude and unit vector for\n\n\tv=",v,".\n\nYou can enter it above to check your work."