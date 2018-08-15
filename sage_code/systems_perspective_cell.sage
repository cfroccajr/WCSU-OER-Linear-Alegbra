@interact
def _(row=('Matrix A',input_grid(2,2,default=[[1,3],[2,-1]],type=int,width=2)),
      coef=('Vector v',input_grid(2,1,default=[[2],[1]],type=int,width=2)),
      action = selector(['Hide Solution','Show Solution'], buttons=True)):
    # Basic Information or Constants
    zero=vector([0,0])
    var('x,y')
    var_vector=vector([x,y])

    # Entered Information
    A=matrix([row[0],row[1]])
    A1=matrix(A.column(0))
    A2=matrix(A.column(1))
    x_1=coef[0][0]
    x_2=coef[1][0]
    v=vector([x_1,x_2])
    
    equations = A*var_vector

    # Problem Setup
    pretty_print("\nTry to rewrite the matrix equation as a vector equation \nand a system of equations:")
    pretty_print(A,matrix(var_vector).transpose()," = ",matrix(v).transpose())

    # Solution Calculations
    if action=='Show Solution':
        pretty_print("\nSolutions:")
        pretty_print("Vector Equation:\t")
        pretty_print(A1.transpose(),x,"+",A2.transpose(),y," = ",matrix(v).transpose())
    # Interpreted as Equations
        show("System of Equations:")
        show(equations[0]," = ",v[0])
        show(equations[1]," = ",v[1])
    
    # Next Problem
    show("Once you get that try it again with this set of values:\n")
    show("A = ",random_matrix(ZZ,2,2)," and v = ",random_matrix(ZZ,2,1))