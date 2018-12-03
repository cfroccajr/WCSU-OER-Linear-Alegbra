import random

def rand_eMatrix():
    p1=random.randint(-2,2)
    p2=random.randint(-2,2)
    p3=random.randint(-2,2)
    p4=random.randint(-2,2)
    P=matrix([[p1,p2],[p3,p4]])
    if P.det()<>0:
        l1=random.randint(1,5)
        s1=random.choice([1,-1])
        l2=random.randint(1,5)
        s2=random.choice([1,-1])
        D=matrix([[s1*l1,0],[0,s2*l2]])
        return P.det()*P*D*P^-1
    else:
        print "crap"
        return rand_eMatrix()
