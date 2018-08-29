# Variables:
var("x,y")

# Zero and Elementary Vectors:
zero=vector([0,0])
e1=vector([1,0])
e2=vector([0,1])

# Data to Enter:
v=vector([2,3])

# Generate plot objects
e1_plot=arrow(zero,e1,width=3,color="red")
e2_plot=arrow(zero,e2,width=3,color="blue")
v_plot=arrow(zero,v,width=3,color="purple")

# Plot objects
v_plot+e1_plot+e2_plot