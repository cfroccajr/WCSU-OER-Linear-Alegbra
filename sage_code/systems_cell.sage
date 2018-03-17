@interact
def _(coef=input_grid(2,2,default=[[1,0],[2,-1]],type=int,width=2),
      values=input_grid(1,2,default=[2,1],type=int,width=2)):
    # Basic Information or Constants
    var('x,y')
    zero=vector([0,0])

    # Problem Specific Information
    A=matrix([coef[0],coef[1]])
    A1=A.column(0)
    A2=A.column(1)
    b=vector(values[0])
    varvec=vector([x,y])
    equations=A*varvec
    sols=A.solve_right(b)

    # Interpreted as Equations
    show("System of Equations:")
    show(equations[0],"=",b[0])
    show(equations[1],"=",b[1])
    
    # Interpreted as Matrices and Vectors
    show("Matrix Equations:")
    show(A,matrix(varvec).transpose(),"=",matrix(b).transpose())
    
    # Show Solutions
    show("Both have this solution:")
    show(varvec,"=",sols)
    
    # Interpreted Graphically
    show("Graphical Interpretation:")
    plot1=arrow(zero,b,color="blue")+arrow(zero,A1,color="red")+arrow(zero,A2,color="red")
    plot2=arrow(zero,sols[0]*A1,color="green")+arrow(zero,sols[1]*A2,color="green")
    plot3=arrow(sols[1]*A2,b,color="green")+arrow(sols[0]*A1,b,color="green")
    (plot3+plot2+plot1).show(figsize=[4,5])