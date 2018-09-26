# Constants and Variable Names:
var("x,y,z,a,b,c")
variable_vector=vector([x,y,z])
zero=vector([0,0,0])

# Row Space Vectors
v=vector([1,3,-1])
u=vector([0,1,-1])

# Null Space Vector
n=vector([-2,1,1])

# Create the equation for the plain of the row space
plain_equation = a*v+b*u
pretty_print(LatexExpr("Row(A) = a\\vec{v}+b\\vec{u}="),plain_equation)

# Create the equation for the line of the null space
line_equation = c*n
pretty_print(LatexExpr("Null(A) = c\\vec{n}="),line_equation)

# Generate plot objects
plain_plot=parametric_plot3d(plain_equation,(a,-1,1),(b,-1,1),color="orangered",opacity=0.5)
line_plot=parametric_plot3d(line_equation,(c,-1,2),(b,-1,1),color="red")
v_plot=arrow(zero,v,width=2,arrowhead=5,color="blue")
u_plot=arrow(zero,u,width=2,arrowhead=5,color="green")
n_plot=arrow(zero,n,width=2,arrowhead=5,color="red")


# Plot objects
plain_plot+v_plot+u_plot+n_plot+line_plot