import random

def rand_vector():
    v1 = random.randint(-5,5)
    v2 = random.randint(-5,5)
    return vector(ZZ, [v1,v2])

@interact
def _(v=('Vector v',input_grid(1,2,default=[2,1],type=int,width=2)),
        u=('Vector u',input_grid(1,2,default=[3,-1],type=int,width=2)),
        B=('Coef. a',input_grid(1,1,default=[3],type=int,width=2)),
        A=('Coef. b',input_grid(1,1,default=[3],type=int,width=2)),
        action = selector(['Hide Solution','Show Solution'], buttons=True)):
    V=vector(v[0])
    U=vector(u[0])
    a=A[0][0]
    b=B[0][0]
    cdot = u"\u00b7"
    product = "v"+cdot+"u"
    if b<0:
        combination = str(a)+"v"+str(b)+"u"
    else:
        combination = str(a)+"v+"+str(b)+"u"
    print "Given the vector v=",V," and u=",U,"\ntry to find the linear combination ",combination,"the \ndot product",product,", and the angle between u and v."
    if action=='Show Solution':
        solution1 = a*V+b*U
        solution2 = V.inner_product(U)
        print "\nThe linear combination",combination,"=",solution1
        print "and the dot product is ",solution2," and finally"
        try:
            solution3 = arccos(solution2*1/V.norm()*1/U.norm())
            print "the angle between the vectors is",float(solution3*180/pi),"degrees"
        except:
            print "Error, likely division by zero."
    print "\nOnce, you answer that one enter these new \nvectors and coefficients and try again."
    print "v =",rand_vector(),", u =",rand_vector(),", a =",random.randint(-5,5),", and b =",random.randint(-5,5)