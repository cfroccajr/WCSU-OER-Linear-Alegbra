# Enter data here, note that all the vectors should have three entries and the matrix should have dimensions 3x3:

# variables and variable vector
var('x,y,z')
variable_vector=vector([x,y,z])

# zero vector
zero=vector([0,0,0])

# coefficient matrix
A=matrix([[3,1,-1],[-1,7,0],[2,8,-1]])
pretty_print("A=",A)

# solving the equations

# step 0
A = A.augment(zero)
pretty_print("A=",A)

# step 1
A.swap_rows(0,1)
pretty_print(LatexExpr("\leadsto"),A)

# step 2
A.rescale_row(0,-1)
pretty_print(LatexExpr("\leadsto"),A)

# step 3
A.add_multiple_of_row(1,0,-3)
A.add_multiple_of_row(2,0,-2)
pretty_print(LatexExpr("\leadsto"),A)

# corresponding vectors for a vector equation
#A1 = A.column(0)
#A2 = A.column(1)
#A3 = ...

# Generate plot objects
#A1_plot = arrow(zero,A1,width=5,arrowhead=10,color="blue")
#A2_plot = arrow(zero,A3,width=5,arrowhead=10,color="green")
#A3_plot = ...

# Plot objects

#A.solve_right?