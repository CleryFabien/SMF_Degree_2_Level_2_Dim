load('Euler_Characteristic.sage')


def Decomposition_All_Cusp_forms(k,j):
    """
    Compute the multiplicities of the irrep. of S_6 in  S_{k,j}(Gamma[2]).
    k>=3 (integer), j non negative even integer.
    """
    C = Eul_A2Wcusp(j+k-3,k-3,0)
    CC = Make_Vector_From_Irrep(C)
    return CC

def Decomposition_General_Type_Cusp_forms(k,j):
    """
    Compute the multiplicities of the irrep. of S_6 for on the space of cusp forms   
    of general type in S_{k,j}(Gamma[2]).
    k>=3 (integer), j non negative even integer.
    """
    C = Eul_A2Wcusp(j+k-3,k-3,1)
    CC = Make_Vector_From_Irrep(C)
    return CC
    
def Decomposition_Yoshida_Mod_forms(k,j):
    """
    Compute the multiplicities of the irrep. of S_6 on the space of cusp forms   
    of type (Y) (Yoshida lifts) in M_{k,j}(Gamma[2]).
    k>=3 (integer), j non negative even integer
    """
    A = Decomposition_All_Cusp_forms(k,j)
    B = Decomposition_General_Type_Cusp_forms(k,j)
    C = [A[n]-B[n] for n in range(len(A))]
    return C


def Dim_List(L):
    """
    Return the dimension of the space whose isotypical decomposition is given by L
    """
    d = 1*L[0]+ 5*L[1] + 9*L[2] + 10*L[3] + 5*L[4]+ 16*L[5] + 10*L[6] + 5*L[7] + 9*L[8] + 5*L[9]+ 1*L[10]
    return d

   
def Mult_Irrep_VV_odd(k,j):
    """
    Return for k>=3 odd and j non negative even integer the list of the isotypical decomposition of 
    Total space,
    Total cusp space
    E (Eisenstein),
    Eis (type F),
    KE (type Q),
    Saito-Kurokawa (type P)
    Yosh (type Y)
    Genuine (type G)
    The output is a list of 8 lists with 12 elements.
    """
    Total = Decomposition_All_Cusp_forms(k,j)
    Totalwd = [Total, Dim_List(Total)]
    Total_Cusp = Decomposition_All_Cusp_forms(k,j)
    Total_Cuspwd = [Total_Cusp,Dim_List(Total_Cusp)]
    E = [0,0,0,0,0,0,0,0,0,0,0]
    Ewd = [E,Dim_List(E)]
    Eis = [0,0,0,0,0,0,0,0,0,0,0]
    Eiswd = [Eis,Dim_List(Eis)]
    KE = [0,0,0,0,0,0,0,0,0,0,0]
    KEwd = [KE,Dim_List(KE)]
    SK = [0,0,0,0,0,0,0,0,0,0,0]
    SKwd = [SK,Dim_List(SK)]
    Yosh = Decomposition_Yoshida_Mod_forms(k,j)
    Yoshwd = [Yosh,Dim_List(Yosh)]
    Gen = [Total_Cusp[x]-Yosh[x] for x in range(11)]
    Genwd = [Gen,Dim_List(Gen)]
    L = [Totalwd, Total_Cuspwd, Ewd, Eiswd, KEwd, SKwd, Yoshwd, Genwd]
    return L


"""
    Klingen-Eisenstein series, type Q
"""


def Mult_Irrep_KE_VV_even(k,j):
    """
    Return the multiplicities of the 11 irrep. of S_6 in E^{(Q)}_{k,j}(Gamma[2]) as a list.
    k>=4 (even integer), j non negative even integer
    """
    d1 = Gamma0(1).dimension_new_cusp_forms(j+k)
    d2 = Gamma0(2).dimension_new_cusp_forms(j+k)
    d4 = Gamma0(4).dimension_new_cusp_forms(j+k)
    return [d1,d1,2*d1+d2,0,0,d1+d2,d4,d1+d2,0,d4,0]


def Mult_Irrep_VV_even(k,j):
    """
    Return for k>=3 odd and j non negative even integer the list of the isotypical decomposition of 
    Total space,
    Total cusp space
    E (Eisenstein),
    Eis (type F),
    KE (type Q),
    Saito-Kurokawa (type P)
    Yosh (type Y)
    Genuine (type G)
    The output is a list of 8 lists with 12 elements.
    """
    Total =[Mult_Irrep_KE_VV_even(k,j)[n]+Decomposition_All_Cusp_forms(k,j)[n] for n in range(11)]
    Totalwd = [Total, Dim_List(Total)]
    Total_Cusp = Decomposition_All_Cusp_forms(k,j)
    Total_Cuspwd = [Total_Cusp,Dim_List(Total_Cusp)]
    Eis = [0,0,0,0,0,0,0,0,0,0,0]
    Eiswd = [Eis,Dim_List(Eis)]
    KE = Mult_Irrep_KE_VV_even(k,j)
    KEwd = [KE,Dim_List(KE)]
    E = KE
    Ewd = [E,Dim_List(E)]
    SK = [0,0,0,0,0,0,0,0,0,0,0]
    SKwd = [SK,Dim_List(SK)]
    Yosh = Decomposition_Yoshida_Mod_forms(k,j)
    Yoshwd = [Yosh,Dim_List(Yosh)]
    Gen = [Total_Cusp[x]-Yosh[x] for x in range(11)]
    Genwd = [Gen,Dim_List(Gen)]
    L = [Totalwd, Total_Cuspwd, Ewd, Eiswd, KEwd, SKwd, Yoshwd, Genwd]
    return L


load('Isotypical_Decomp_Gamma_2_Level_2_Scalar_Valued.sage')


def Mult_Irrep_Gamma_2_VV(k,j):
    """
    Put everything together, k>=3 integer, j non negative even ineteger 
    """
    k = ZZ(k)
    ZL = [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0]
    AllZ = [ZL,ZL,ZL,ZL,ZL,ZL,ZL,ZL]
    Zu = [['?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?'],'?']
    AllZu = [Zu,Zu,Zu,Zu,Zu,Zu,Zu,Zu]
    if j < 0 or k < 0:
       return AllZ
    if (j % 2) ==1:
       return AllZ
    if j == 0:
       return Mult_Irrep_Gamma_2_SV(k)
    if k == 0 and j >= 1: 
      return AllZ
    if k == 1:
      return AllZ
    if k == 2:
      return  AllZu
    if j >= 2 and (k % 2) == 1: 
      return Mult_Irrep_VV_odd(k,j)
    if j >= 2 and (k % 2) == 0:
      return Mult_Irrep_VV_even(k,j)

"""
Decomposition for the full level
"""

def dim_Sp4Z_VV(k,j):
    L = Mult_Irrep_Gamma_2_VV(k,j)
    LL = [L[n][0][0] for n in range(8)]  
    return LL


"""
Decomposition for the full level with character
"""

def dim_Sp4Z_With_Character_VV(k,j):
    L = Mult_Irrep_Gamma_2_VV(k,j)
    LL = [L[n][0][10] for n in range(8)]
    return LL

"""
Decomposition for Gamma_0[2]
"""

def dim_Gamma_0_2_VV(k,j):
    L = Mult_Irrep_Gamma_2_VV(k,j)
    LL = [L[n][0][0]+L[n][0][2]+L[n][0][7] for n in range(8)]  
    return LL


"""
Decomposition for Gamma_1[2]
"""

def Mult_Irrep_Gamma_1_2_VV(k,j):
    L = Mult_Irrep_Gamma_2_VV(k,j)
    LL = [[[L[n][0][0]+L[n][0][2]+L[n][0][7],L[n][0][1]+L[n][0][2]+L[n][0][5],L[n][0][3]+L[n][0][4]],L[n][0][0]+L[n][0][2]+L[n][0][7]+2*(L[n][0][1]+L[n][0][2]+L[n][0][5])+L[n][0][3]+L[n][0][4]] for n in range(8)]
    return LL



def List_to_Rep(L):
    """
    Rewrite a list of p(n) elements as a sum of irrep. of S_n (p(n) is the number of partition of n)
    """
    if len(L) == 11:
       return  L[0]*s[6]+L[1]*s[5,1]+L[2]*s[4,2]+L[3]*s[4,1,1]+L[4]*s[3,3]+L[5]*s[3,2,1]+L[6]*s[3,1,1,1]+L[7]*s[2,2,2]+L[8]*s[2,2,1,1]+L[9]*s[2,1,1,1,1]+L[10]*s[1,1,1,1,1,1]
    if len(L) == 3:
       return L[0]*s[3]+L[1]*s[2,1]+L[2]*s[1,1,1]
