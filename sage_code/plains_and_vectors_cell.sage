# Constants and Variable Names:
var("x,y,z,a,b")
variable_vector=vector([x,y,z])
zero=vector([0,0,0])

# Data to Enter
v=vector([2,3,0])
u=vector([-1,0,5])

# Create the equation for a plain perpendicular to v
plain_equation = a*v+b*u
pretty_print(LatexExpr("a\\vec{v}+b\\vec{u}="),plain_equation)

# Generate plot objects
plain_plot=parametric_plot3d(plain_equation,(a,-2,8),(b,-6,2),color="orangered",opacity=0.5)
v_plot=arrow(zero,v,width=5,arrowhead=10,color="blue")
u_plot=arrow(zero,u,width=5,arrowhead=10,color="green")
av_bu_point=point3d(7*v-5*u,color="green",size=20)
no_good_point=point3d((15,9,5),color="red",size=20)


# Plot objects
plain_plot+v_plot+u_plot+av_bu_point+no_good_point