# Matrices
A=matrix([[1,0,1,5],
          [3,1,0,15],
          [0,1,-2,0],
          [2,3,-7,11]])

II=identity_matrix(4)

# Augment A
B=A.augment(II, subdivide=True)


# Display
pretty_print("Let A=",A)
pretty_print("Then, augment with\nthe identity to get:",B)
pretty_print("Row reduce this\nand get:\t",B.rref())
pretty_print("Thus we have\t",LatexExpr("A^{-1}="),A^-1)