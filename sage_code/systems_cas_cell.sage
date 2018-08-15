
# Enter data here:
v=vector(...) # use the values provided
A=matrix(...) # use the values provided
u=vector([3,-1]) # enter another vector of your choice
a=7 # enter any number
b=-2 # enter any number


# Perform some simple operations:
Av_product = A*v
vA_product = v*A
linear_combo = a*v+b*u

print A,v,"=",Av_product
pretty_print(A,v,"=",Av_product)

print v,A,"=",vA_product
pretty_print(v,A,"=",vA_product)

print("av+bu=",linear_combo)
pretty_print("av+bu=",linear_combo)
