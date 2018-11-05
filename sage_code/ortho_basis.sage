zero=vector([0,0,0])
b1=vector([2,0,1])
b2=vector([0,1,0])
b3=vector([-1,0,2])
a1=arrow(zero,b1,color="red",width=2)
a2=arrow(zero,b2,color="blue",width=2)
a3=arrow(zero,b3,color="green",width=2)
(a1+a2+a3).show(aspect_ratio=[1,1,1])


