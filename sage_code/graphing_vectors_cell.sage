# Enter data here:
var("x,y,z")
variable_vector=vector([x,y,z])
zero=vector([0,0,0])
v=vector([3,2,-1])
u=vector([17,3,-1])
R=matrix([[cos(pi/4),sin(pi/4),0],[-sin(pi/4),cos(pi/4),0],[0,0,1]])

# Create the equation for a plain perpendicular to v
plain_equation = v.dot_product(variable_vector)==2
pretty_print(plain_equation)

# Generate plot objects
plain_plot=implicit_plot3d(plain_equation,(x,-5,5),(y,-5,5),(z,-5,5),color="orangered",opacity=0.5)
v_plot=arrow(zero,v,width=5,arrowhead=10,color="blue")
u_plot=arrow(zero,u,width=5,arrowhead=10,color="green")

# Plot objects
plain_plot+v_plot
