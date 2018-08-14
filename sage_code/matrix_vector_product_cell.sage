@interact
def _(row=('Matrix A',input_grid(3,3,default=[[1,0,2],[2,-1,1],[3,1,2]],type=int,width=2)),
      coef=('Vector v',input_grid(3,1,default=[[2],[1],[0]],type=int,width=2)),
      action = selector(['Hide Solution','Show Solution'], buttons=True)):
    # Basic Information or Constants
    zero=vector([0,0,0])
    # Problem Specific Information
    A=matrix([row[0],row[1],row[2]])
    A1=matrix(A.column(0))
    A2=matrix(A.column(1))
    A3=matrix(A.column(2))
    x_1=coef[0][0]
    x_2=coef[1][0]
    x_3=coef[2][0]
    v=matrix([[x_1],[x_2],[x_3]])
    pretty_print("\nTry to carry out the multiplication:")
    pretty_print("Av=",A,v,"= ??")
    if action=='Show Solution':
        show("Av=",A1.transpose(),x_1,"+",A2.transpose(),x_2,"+",A3.transpose(),x_3,"=",A*v)
    show("Once you get that try it again with this set of values:\n")
    show("A=",random_matrix(ZZ,3,3)," and v=",random_matrix(ZZ,3,1))