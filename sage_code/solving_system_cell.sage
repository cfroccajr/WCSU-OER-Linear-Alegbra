#
# Enter data here, note that all the vectors 
# should have three entries and the matrix 
# should have dimensions 3x3:
#

# variables and variable vector
var('x,y,z')
variable_vector=vector([...])

# zero vector
zero=vector([...])

# coefficient matrix
A=matrix([...])
pretty_print("A=",A)

# solving the equations

# step 0
Az = A.augment(zero)
pretty_print(LatexExpr("[A|0]="),Az)

# step 1
Az.swap_rows(0,1)
pretty_print(LatexExpr("\leadsto"),Az)

# step 2
Az.rescale_row(0,-1)
pretty_print(LatexExpr("\leadsto"),Az)

# step 3
Az.add_multiple_of_row(1,0,-3)
Az.add_multiple_of_row(2,0,-2)
pretty_print(LatexExpr("\leadsto"),Az)


# A Quicker Way?
#A.solve_right?
#A.rref()

# corresponding vectors for a vector equation
#A1 = A.column(0)
#A2 = A.column(1)
#A3 = ...

# Generate plot objects
#A1_plot = arrow(zero,A1,width=5,arrowhead=10,color="blue")
#A2_plot = arrow(zero,A2,width=5,arrowhead=10,color="green")
#A3_plot = ...
#var('t,s')
#plain_plot = parametric_plot3d(A1*t+A2*s,(t,-1,1),(s,-1,1))

# Plot objects
#A1_plot+A2_plot+plain_plot+A3_plot