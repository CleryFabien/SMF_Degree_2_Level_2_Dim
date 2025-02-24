"""
Isotypical decompositions of spaces of scalar-valued modular forms on Gamma[2]
"""

def Dim_Scalar_Valued_P_2(k):
    """
    Compute the dimension of the space M_{k}(Gamma[2]), P_2 stands for principal congruence subgroup of level 2
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    k = ZZ(k)
    num = 1+t^5-t^8-t^13
    denom = (1-t^2)^5
    f = num / denom
    d = f.list()[k]
    return d

    """
    Example:
    sage: [Dim_Scalar_Valued_P_2(k) for k in range(19)]
    [[0, 1],
     [1, 0],
     [2, 5],
     [3, 0],
     [4, 15],
     [5, 1],
     [6, 35],
     [7, 5],
     [8, 69],
     [9, 15],
     [10, 121],
     [11, 35],
     [12, 195],
     [13, 69],
     [14, 295],
     [15, 121],
     [16, 425],
     [17, 195],
     [18, 589]]

    """

def Mult_s6_SV(k):
    """
    Compute the multiplicity of the trivial irrep. of S_6 in  M_{k}(Gamma[2]).
    Remark: This is the same as the dimension of M_{k}(Sp(4,Z)).
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=4*k+1)
    k = ZZ(k)
    num = 1+t^35
    denom = (1-t^4) * (1-t^6) * (1-t^10) * (1-t^12)
    f = num / denom
    d = f.list()[k]
    return d

def Mult_s51_SV(k):
    """
    Compute the multiplicity of the irrep. s[5,1] of S_6 in M_{k}(Gamma[2]).
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    num = t^11*(1+t)
    denom = ((1-t^4) * (1-t^6))^2
    f = num / denom
    d = f.list()[k]
    return d

def Mult_s42_SV(k):
    """
    Compute the multiplicity of the irrep. s[4,2] of S_6 in M_{k}(Gamma[2]).
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    num = t^4*(1+t^15)
    denom = (1-t^2)*((1-t^4)^2)*(1-t^10)
    f = num / denom
    d = f.list()[k]
    return d

def Mult_s411_SV(k):
    """
    Compute the multiplicity of the irrep. s[4,1,1] of S_6 in  M_{k}(Gamma[2]).
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    num = t^11*(1+t^4)
    denom = (1-t) * (1-t^4) * (1-t^6) * (1-t^12)
    f = num / denom
    d = f.list()[k]
    return d

def Mult_s33_SV(k):
    """
    Compute the multiplicity of the irrep. s[3,3] of S_6 in  M_{k}(Gamma[2]).
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    num = t^7*(1+t^13)
    denom = (1-t^2)*(1-t^4)*(1-t^6)*(1-t^12)
    f = num / denom
    d = f.list()[k]
    return d

def Mult_s321_SV(k):
    """
    Compute the multiplicity of the irrep. s[3,2,1] of S_6 in  M_{k}(Gamma[2]).
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    num = t^8*(1-t^8)
    denom = ((1-t^2)^2)*(1-t^5)*((1-t^6))^2
    f = num / denom
    d = f.list()[k]
    return d

def Mult_s3111_SV(k):
    """
    Compute the multiplicity of the irrep. s[3,1,1,1] of S_6 in  M_{k}(Gamma[2]).
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    num = t^6*(1+t^4+t^11+t^15)
    denom = (1-t^2)*(1-t^4)*(1-t^6)*(1-t^12)
    f = num / denom
    d = f.list()[k]
    return d

def Mult_s222_SV(k):
    """
    Compute the multiplicity of the irrep. s[2,2,2] of S_6 in  M_{k}(Gamma[2]).
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    num = t^2*(1+t^23)
    denom = (1-t^2)*(1-t^4)*(1-t^6)*(1-t^12)
    f = num / denom
    d = f.list()[k]
    return d

def Mult_s2211_SV(k):
    """
    Compute the multiplicity of the irrep. s[2,2,1,1] of S_6 in  M_{k}(Gamma[2]).
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    num = t^9
    denom = (1-t^2)*((1-t^4)^2)*(1-t^5)
    f = num / denom
    d = f.list()[k]
    return d

def Mult_s21111_SV(k):
    """
    Compute the multiplicity of the irrep. s[2,1,1,1,1] of S_6 in  M_{k}(Gamma[2]).
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    num = t^6*(1+t^11)
    denom = ((1-t^4)^2)*((1-t^6)^2)
    f = num / denom
    d = f.list()[k]
    return d

def Mult_s111111_SV(k):
    """
    Compute the multiplicity of the irrep. s[1,1,1,1,1,1] of S_6 in  M_{k}(Gamma[2]).
    Remark: this is the same as the dimension of M_{k}(Sp(4,Z),eps).
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    num = t^5*(1+t^25)
    denom = (1-t^4)*(1-t^6)*(1-t^10)*(1-t^12)
    f = num / denom
    d = f.list()[k]
    return d


def List_Mult_Irrep_SV(k):
    """
    Return the multiplicities of the 11 irrep. of S_6 in M_{k}(Gamma[2]) as a list.
    """
    s6 = Mult_s6_SV(k)
    s51 = Mult_s51_SV(k)
    s42 = Mult_s42_SV(k)
    s411 = Mult_s411_SV(k)
    s33 = Mult_s33_SV(k)
    s321 = Mult_s321_SV(k)
    s3111 = Mult_s3111_SV(k)
    s222 = Mult_s222_SV(k)
    s2211 = Mult_s2211_SV(k)
    s21111 = Mult_s21111_SV(k)
    s111111 = Mult_s111111_SV(k)
    L = [s6,s51,s42,s411,s33,s321,s3111,s222,s2211,s21111,s111111]
    return L


    """
    Example:
    sage: [[k,List_Mult_Irrep_SV(k)] for k in range(11)]
    [[0, [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]],
    [1, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]],
    [2, [0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0]],
    [3, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]],
    [4, [1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0]],
    [5, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]],
    [6, [1, 0, 1, 0, 0, 0, 1, 2, 0, 1, 0]],
    [7, [0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0]],
    [8, [1, 0, 3, 0, 0, 1, 1, 3, 0, 0, 0]],
    [9, [0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1]],
    [10, [2, 0, 3, 0, 0, 2, 3, 4, 0, 2, 0]]]
    
    """



def Check_Dim_SV(k):
    """
    Check that the dimension ofthe space M_{k}(Gamma[2]) obtained with Dim_Scalar_Valued_P_2(k)
    is consistent with the isotypical decomposition obtained with List_Mult_Irrep_SV(k)
    """
    L = List_Mult_Irrep_SV(k)
    d = 1*L[0]+ 5*L[1] + 9*L[2] + 10*L[3] + 5*L[4]+ 16*L[5] + 10*L[6] + 5*L[7] + 9*L[8] + 5*L[9]+ 1*L[10]
    return d

    """
    Example:
    sage: [[k,Check_Dim_SV(k)-Dim_Scalar_Valued_P_2(k)] for k in range(101,110)]
    [[101, 0],
     [102, 0],
     [103, 0],
     [104, 0],
     [105, 0],
     [106, 0],
     [107, 0],
     [108, 0],
     [109, 0]]
    """


"""
Scalar-valued, odd weights.
"""


"""
Dimension of spaces of scalar-valued modular forms on Gamma[2]
for odd weight i.e. k odd. We only have cusp forms
so dim M_{k}(Gamma[2])=dim S_{k}(Gamma[2]) and it's given by
Dim_Scalar_Valued_P_2(k) for k>=0.
The space S_{k}(Gamma[2]) decomposes as 
S_{k}(Gamma[2])=S^{P}_{k}(Gamma[2]) + S^{G}_{k}(Gamma[2])  
where 
S^{P}_{k}(Gamma[2]) denotes the subspace of Saito-Kurokawa lifts (type P)
and 
S^{G}_{k}(Gamma[2]) denotes the space of cusp forms of general type (type G).
"""


"""
Saito-Kurokawa lifts, odd weight 
"""


def Mult_s51_SK_SV_odd(k):
    """
    Compute the multiplicity of the irrep. s[5,1] of S_6 in S^{P}_{k}(Gamma[2]), k odd.
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    num = t^11
    denom = (1-t^4)*(1-t^6)
    f = num / denom
    d = f.list()[k]
    return d


def Mult_s33_SK_SV_odd(k):
    """
    Compute the multiplicity of the irrep. s[3,3] of S_6 in S^{P}_{k}(Gamma[2]), k odd.
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    num = t^7
    denom = (1-t^2)*(1-t^6)
    f = num / denom
    d = f.list()[k]
    return d


def Mult_s111111_SK_SV_odd(k):
    """
    Compute the multiplicity of the irrep. s[1^6] of S_6 in S^{P}_{k}(Gamma[2]), k odd.
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    num = t^5
    denom = (1-t^4)*(1-t^6)
    f = num / denom
    d = f.list()[k]
    return d



def List_Mult_Irrep_SK_SV_odd(k):
    """
    Return the multiplicities of the 11 irrep. of S_6 in S^{P}_{k}(Gamma[2]) as a list, k odd.
    """
    s6 = 0
    s51 = Mult_s51_SK_SV_odd(k)
    s42 = 0
    s411 = 0
    s33 = Mult_s33_SK_SV_odd(k)
    s321 = 0
    s3111 = 0
    s222 = 0
    s2211 = 0
    s21111 = 0
    s111111 = Mult_s111111_SK_SV_odd(k)
    L = [s6,s51,s42,s411,s33,s321,s3111,s222,s2211,s21111,s111111]
    return L


"""
    Example:
    sage: [[k,List_Mult_Irrep_SK_SV_odd(k)] for k in range(19) if k % 2 == 1]
    [[1, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]],
    [3, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]],
    [5, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]],
    [7, [0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0]],
    [9, [0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1]],
    [11, [0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1]],
    [13, [0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1]],
    [15, [0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 1]],
    [17, [0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 2]]]
"""

def Dim_SK_Total_SV_odd(k):
    """
    Return the dimension of the subspace S^{SK}_{k}(Gamma[2]), k odd.
    """
    L = List_Mult_Irrep_SK_SV_odd(k)
    d = 1*L[0]+ 5*L[1] + 9*L[2] + 10*L[3] + 5*L[4]+ 16*L[5] + 10*L[6] + 5*L[7] + 9*L[8] + 5*L[9]+ 1*L[10]
    return d
    
"""
    Example:
    sage: [[k,Dim_SK_Total_SV_odd(k)] for k in range(19) if k % 2==1 ]
    [[1, 0],
     [3, 0],
     [5, 1],
     [7, 5],
     [9, 6],
     [11, 11],
     [13, 11],
     [15, 16],
     [17, 17]]
"""

"""
Cusp forms of general type (G), odd weight
"""


def Mult_s51_gen_SV_odd(k):
    """
    Compute the multiplicity of the irrep. s[5,1] of S_6 in S^{G}_{k}(Gamma[2]), k odd.
    """
    a = Mult_s51_SV(k)
    b = Mult_s51_SK_SV_odd(k)
    d = a-b
    return d


def Mult_s33_gen_SV_odd(k):
    """
    Compute the multiplicity of the irrep. s[3,3] of S_6 in S^{G}_{k}(Gamma[2]), k odd.
    """
    a = Mult_s33_SV(k)
    b = Mult_s33_SK_SV_odd(k)
    d = a-b
    return d


def Mult_s111111_gen_SV_odd(k):
    """
    Compute the multiplicity of the irrep. s[1^6] of S_6 in S^{G}_{k}(Gamma[2]), k odd.
    """
    a = Mult_s111111_SV(k)
    b = Mult_s111111_SK_SV_odd(k)
    d = a-b
    return d


def List_Mult_Irrep_gen_SV_odd(k):
    """
    Return the multiplicities of the 11 irrep. of S_6 in S^{G}_{k}(Gamma[2]) as a list, k odd.
    """
    s6 = Mult_s6_SV(k)
    s51 = Mult_s51_gen_SV_odd(k)
    s42 = Mult_s42_SV(k)
    s411 = Mult_s411_SV(k)
    s33 = Mult_s33_gen_SV_odd(k)
    s321 = Mult_s321_SV(k)
    s3111 = Mult_s3111_SV(k)
    s222 = Mult_s222_SV(k)
    s2211 = Mult_s2211_SV(k)
    s21111 = Mult_s21111_SV(k)
    s111111 = Mult_s111111_gen_SV_odd(k)
    L = [s6,s51,s42,s411,s33,s321,s3111,s222,s2211,s21111,s111111]
    return L

"""
   Example:
  sage: [[k,List_Mult_Irrep_gen_SV_odd(k)] for k in range(19) if k % 2==1 ]
  [[1, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]],
   [3, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]],
   [5, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]],
   [7, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]],
   [9, [0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0]],
   [11, [0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0]],
   [13, [0, 0, 0, 1, 1, 1, 0, 0, 3, 0, 0]],
   [15, [0, 1, 0, 3, 2, 2, 0, 0, 3, 0, 1]],
   [17, [0, 1, 0, 4, 3, 3, 1, 0, 6, 1, 1]]]
"""

def Dim_gen_Total_SV_odd(k):
    """
    Return the dimension of the subspace S^{gen}_{k}(Gamma[2]), k odd.
    """
    L = List_Mult_Irrep_gen_SV_odd(k)
    d = 1*L[0]+ 5*L[1] + 9*L[2] + 10*L[3] + 5*L[4]+ 16*L[5] + 10*L[6] + 5*L[7] + 9*L[8] + 5*L[9]+ 1*L[10]
    return d

"""
   Example:
   sage: [[k,Dim_gen_Total_SV_odd(k)] for k in range(19) if k % 2==1 ]
   [[1, 0],
    [3, 0],
    [5, 0],
    [7, 0],
    [9, 9],
    [11, 24],
    [13, 58],
    [15, 105],
    [17, 178]]
"""


"""
Scalar-valued, even weight. 
"""


"""
Dimension of spaces of scalar-valued modular forms on Gamma[2]
for even weights. For even weight i.e. k even, there are non-cusp forms.
We decompose M_{k}(Gamma[2]) as
M_{k}(Gamma[2])=E_{k}(Gamma[2]) + S_{k}(Gamma[2])
with 
E_{k}(Gamma[2]) space of non-cusp forms of weight k
S_{k}(Gamma[2]) space of cusp forms of weight k
We even further decompose M_{k}(Gamma[2]) as
E_{k}(Gamma[2])=Eis_{k}(Gamma[2])+KE_{k}(Gamma[2])
(Eis_{k}(Gamma[2]): Siegel Eisenstein series, KE_{k}(Gamma[2]): Klingen-Eisenstein series)
and for the cusp forms
S_{k}(Gamma[2])=S^{P}_{k}(Gamma[2]) + S^{G}_{k}(Gamma[2])  
where 
S^{P}_{k}(Gamma[2]) denotes the subspace of Saito-Kurokawa lifts 
and 
S^{G}_{k}(Gamma[2]) denotes the space of cusp forms of general type.
"""

"""
Non-cups forms, Siegel-Eisenstein series 
"""

def Mult_s6_Eis_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[6] of S_6 in Eis_{k}(Gamma[2]), k even.
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=4*k+1)
    num = 1-t^2+t^4
    denom = (1-t^2)
    f = num / denom
    d = f.list()[k]
    return d

def Mult_s42_Eis_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[4,2] of S_6 in Eis_{k}(Gamma[2]), k even.
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    num = t^4
    denom = (1-t^2)
    f = num / denom
    d = f.list()[k]
    return d

def Mult_s222_Eis_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[2^3] of S_6 in Eis_{k}(Gamma[2]), k even.
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    num = t^2
    denom = (1-t^2)
    f = num / denom
    d = f.list()[k]
    return d


def List_Mult_Irrep_Eis_SV_even(k):
    """
    Return the multiplicities of the 11 irrep. of S_6 in Eis_{k}(Gamma[2]) as a list, k even.
    """
    s6 = Mult_s6_Eis_SV_even(k)
    s51 = 0
    s42 = Mult_s42_Eis_SV_even(k)
    s411 = 0
    s33 = 0
    s321 = 0
    s3111 = 0
    s222 = Mult_s222_Eis_SV_even(k)
    s2211 = 0
    s21111 = 0
    s111111 = 0
    L = [s6,s51,s42,s411,s33,s321,s3111,s222,s2211,s21111,s111111]
    return L

"""
   Example:
   sage: [[k,List_Mult_Irrep_Eis_SV_even(k)] for k in range(20) if k % 2==0]
   [[0, [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]],
    [2, [0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0]],
    [4, [1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0]],
    [6, [1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0]],
    [8, [1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0]],
    [10, [1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0]],
    [12, [1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0]],
    [14, [1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0]],
    [16, [1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0]],
    [18, [1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0]]]
"""

def Dim_Eis_Total_SV_even(k):
    """
    Return the dimension of the subspace Eis_{k}(Gamma[2])
    """
    L = List_Mult_Irrep_Eis_SV_even(k)
    d = 1*L[0]+ 5*L[1] + 9*L[2] + 10*L[3] + 5*L[4]+ 16*L[5] + 10*L[6] + 5*L[7] + 9*L[8] + 5*L[9]+ 1*L[10]
    return d

"""
   Example:
   sage: [[k,Dim_Eis_Total_SV_even(k)] for k in range(20) if k % 2==0]
   [[0, 1],
    [2, 5],
    [4, 15],
    [6, 15],
    [8, 15],
    [10, 15],
    [12, 15],
    [14, 15],
    [16, 15],
    [18, 15]]
"""

"""
Klingen-Eisenstein series
"""


def Mult_s6_KE_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[6] of S_6 in KE_{k}(Gamma[2]), k even.
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    num = t^12
    denom = (1-t^4)*(1-t^6)
    f = num / denom
    d = f.list()[k]
    return d

def Mult_s51_KE_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[5,1] of S_6 in KE_{k}(Gamma[2]), k even.
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    num = t^12
    denom = (1-t^4)*(1-t^6)
    f = num / denom
    d = f.list()[k]
    return d


def Mult_s42_KE_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[4,2] of S_6 in KE_{k}(Gamma[2]), k even.
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    num = t^8
    denom = (1-t^2)*(1-t^4)
    f = num / denom
    d = f.list()[k]
    return d

def Mult_s321_KE_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[3,2,1] of S_6 in KE_{k}(Gamma[2]), k even.
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    num = t^8
    denom = (1-t^2)*(1-t^6)
    f = num / denom
    d = f.list()[k]
    return d

def Mult_s3111_KE_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[3,1^3] of S_6 in KE_{k}(Gamma[2]), k even.
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    num = t^6
    denom = (1-t^4)*(1-t^6)
    f = num / denom
    d = f.list()[k]
    return d


def Mult_s222_KE_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[2^3] of S_6 in KE_{k}(Gamma[2]), k even.
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    num = t^8
    denom = (1-t^2)*(1-t^6)
    f = num / denom
    d = f.list()[k]
    return d

def Mult_s21111_KE_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[2,1^4] of S_6 in KE_{k}(Gamma[2]), k even.
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    num = t^6
    denom = (1-t^4)*(1-t^6)
    f = num / denom
    d = f.list()[k]
    return d



def List_Mult_Irrep_KE_SV_even(k):
    """
    Return the multiplicities of the 11 irrep. of S_6 in M^{(Q)}_{k}(Gamma[2]) as a list, k even.
    """
    s6 = Mult_s6_KE_SV_even(k)
    s51 = Mult_s51_KE_SV_even(k)
    s42 = Mult_s42_KE_SV_even(k)
    s411 = 0
    s33 = 0
    s321 = Mult_s321_KE_SV_even(k)
    s3111 = Mult_s3111_KE_SV_even(k)
    s222 = Mult_s222_KE_SV_even(k)
    s2211 = 0
    s21111 = Mult_s21111_KE_SV_even(k)
    s111111 = 0
    L = [s6,s51,s42,s411,s33,s321,s3111,s222,s2211,s21111,s111111]
    return L

"""
   Example:
   sage: [[k,List_Mult_Irrep_KE_SV_even(k)] for k in range(20) if k % 2==0]
   [[0, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]],
   [2, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]],
   [4, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]],
   [6, [0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0]],
   [8, [0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0]],
   [10, [0, 0, 1, 0, 0, 1, 1, 1, 0, 1, 0]],
   [12, [1, 1, 2, 0, 0, 1, 1, 1, 0, 1, 0]],
   [14, [0, 0, 2, 0, 0, 2, 1, 2, 0, 1, 0]],
   [16, [1, 1, 3, 0, 0, 2, 1, 2, 0, 1, 0]],
   [18, [1, 1, 3, 0, 0, 2, 2, 2, 0, 2, 0]]]
"""

def Dim_KE_Total_SV_even(k):
    """
    Return the dimension of the subspace Eis_{k}(Gamma[2])
    """
    L = List_Mult_Irrep_KE_SV_even(k)
    d = 1*L[0]+ 5*L[1] + 9*L[2] + 10*L[3] + 5*L[4]+ 16*L[5] + 10*L[6] + 5*L[7] + 9*L[8] + 5*L[9]+ 1*L[10]
    return d
  
"""
   Example:
   sage: [[k,Dim_KE_Total_SV_even(k)] for k in range(20) if k % 2==0]
   [[0, 0],
    [2, 0],
    [4, 0],
    [6, 15],
    [8, 30],
    [10, 45],
    [12, 60],
    [14, 75],
    [16, 90],
    [18, 105]]
"""


def List_Mult_Irrep_E_SV_even(k):
    """
    Return the multiplicities of the 11 irrep. of S_6 in E_{k}(Gamma[2]) as a list, k even.
    """
    Eis = List_Mult_Irrep_Eis_SV_even(k)
    KE = List_Mult_Irrep_KE_SV_even(k)
    L = [Eis[a]+KE[a] for a in range(11)]
    return L
    
"""
   Example:
   sage: [[k,List_Mult_Irrep_E_SV_even(k)] for k in range(20) if k % 2==0]
   [[0, [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]],
    [2, [0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0]],
    [4, [1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0]],
    [6, [1, 0, 1, 0, 0, 0, 1, 1, 0, 1, 0]],
    [8, [1, 0, 2, 0, 0, 1, 0, 2, 0, 0, 0]],
    [10, [1, 0, 2, 0, 0, 1, 1, 2, 0, 1, 0]],
    [12, [2, 1, 3, 0, 0, 1, 1, 2, 0, 1, 0]],
    [14, [1, 0, 3, 0, 0, 2, 1, 3, 0, 1, 0]],
    [16, [2, 1, 4, 0, 0, 2, 1, 3, 0, 1, 0]],
    [18, [2, 1, 4, 0, 0, 2, 2, 3, 0, 2, 0]]]
"""

def Dim_E_Total_SV_even(k):
    """
    Return the dimension of the subspace Eis_{k}(Gamma[2]), k even.
    """
    L = List_Mult_Irrep_E_SV_even(k)
    d = 1*L[0]+ 5*L[1] + 9*L[2] + 10*L[3] + 5*L[4]+ 16*L[5] + 10*L[6] + 5*L[7] + 9*L[8] + 5*L[9]+ 1*L[10]
    return d

"""
   Example:
   sage: [[k,Dim_E_Total_SV_even(k)] for k in range(20) if k % 2==0]
   [[0, 1],
    [2, 5],
    [4, 15],
    [6, 30],
    [8, 45],
    [10, 60],
    [12, 75],
    [14, 90],
    [16, 105],
    [18, 120]]
"""

"""
Cusp forms
"""

def List_Mult_Irrep_Cusp_Form_SV_even(k):
    """
    Return the multiplicities of the 11 irrep. of S_6 in S_{k}(Gamma[2]) as a list, k even.
    """
    M = List_Mult_Irrep_SV(k)
    E = List_Mult_Irrep_E_SV_even(k)
    L = [M[a]-E[a] for a in range(11)]
    return L
    
"""
   Example:
   sage: [[k,List_Mult_Irrep_Cusp_Form_SV_even(k)] for k in range(20) if k % 2==0]
   [[0, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]],
    [2, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]],
    [4, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]],
    [6, [0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0]],
    [8, [0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0]],
    [10, [1, 0, 1, 0, 0, 1, 2, 2, 0, 1, 0]],
    [12, [1, 0, 3, 1, 0, 2, 3, 3, 0, 1, 0]],
    [14, [1, 0, 4, 1, 0, 4, 5, 5, 1, 2, 0]],
    [16, [2, 1, 7, 3, 0, 6, 7, 6, 1, 3, 0]],
    [18, [2, 1, 9, 4, 0, 9, 10, 9, 3, 5, 0]]]
"""

def Dim_Cusp_Form_Total_SV_even(k):
    """
    Return the dimension of the subspace S_{k}(Gamma[2]), k even.
    """
    L = List_Mult_Irrep_Cusp_Form_SV_even(k)
    d = 1*L[0]+ 5*L[1] + 9*L[2] + 10*L[3] + 5*L[4]+ 16*L[5] + 10*L[6] + 5*L[7] + 9*L[8] + 5*L[9]+ 1*L[10]
    return d
  
"""
   Example:
   sage: [[k,Dim_Cusp_Form_Total_SV_even(k)] for k in range(20) if k % 2==0]
   [[0, 0],
    [2, 0],
    [4, 0],
    [6, 5],
    [8, 24],
    [10, 61],
    [12, 120],
    [14, 205],
    [16, 320],
    [18, 469]]
"""
    

def Mult_s6_Cusp_Form_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[6] of S_6 in S_{k}(Gamma[2]), k even.
    """
    L = List_Mult_Irrep_Cusp_Form_SV_even(k)
    m = L[0]
    return m

def Mult_s51_Cusp_Form_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[5,1] of S_6 in S_{k}(Gamma[2]), k even.
    """
    L = List_Mult_Irrep_Cusp_Form_SV_even(k)
    m = L[1]
    return m

def Mult_s42_Cusp_Form_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[4,2] of S_6 in S_{k}(Gamma[2]), k even.
    """
    L = List_Mult_Irrep_Cusp_Form_SV_even(k)
    m = L[2]
    return m


def Mult_s411_Cusp_Form_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[4,1,1] of S_6 in S_{k}(Gamma[2]), k even.
    """
    L = List_Mult_Irrep_Cusp_Form_SV_even(k)
    m = L[3]
    return m


def Mult_s33_Cusp_Form_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[3,3] of S_6 in S_{k}(Gamma[2]), k even.
    """
    L = List_Mult_Irrep_Cusp_Form_SV_even(k)
    m = L[4]
    return m  

def Mult_s321_Cusp_Form_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[3,2,1] of S_6 in S_{k}(Gamma[2]), k even.
    """
    L = List_Mult_Irrep_Cusp_Form_SV_even(k)
    m = L[5]
    return m  

def Mult_s3111_Cusp_Form_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[3,1^3] of S_6 in S_{k}(Gamma[2]), k even.
    """
    L = List_Mult_Irrep_Cusp_Form_SV_even(k)
    m = L[6]
    return m  

def Mult_s222_Cusp_Form_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[2^3] of S_6 in S_{k}(Gamma[2]), k even.
    """
    L = List_Mult_Irrep_Cusp_Form_SV_even(k)
    m = L[7]
    return m  

def Mult_s2211_Cusp_Form_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[2^2,1^2] of S_6 in S_{k}(Gamma[2]), k even.
    """
    L = List_Mult_Irrep_Cusp_Form_SV_even(k)
    m = L[8]
    return m 


def Mult_s21111_Cusp_Form_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[2,1^4] of S_6 in S_{k}(Gamma[2]), k even.
    """
    L = List_Mult_Irrep_Cusp_Form_SV_even(k)
    m = L[9]
    return m 

def Mult_s111111_Cusp_Form_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[1^6] of S_6 in S_{k}(Gamma[2]), k even.
    """
    L = List_Mult_Irrep_Cusp_Form_SV_even(k)
    m = L[10]
    return m 


"""
Saito-Kurokawa lifts (type P), even weight 
"""

def Mult_s6_SK_Cusp_Form_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[6] of S_6 in S^{SK}_{k}(Gamma[2]), k even.
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    num = t^10
    denom = (1-t^2)*(1-t^6)
    f = num / denom
    d = f.list()[k]
    return d

def Mult_s42_SK_Cusp_Form_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[4,2] of S_6 in S^{SK}_{k}(Gamma[2]), k even.
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    num = t^8
    denom = (1-t^2)*(1-t^4)
    f = num / denom
    d = f.list()[k]
    return d

def Mult_s222_SK_Cusp_Form_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[2^3] of S_6 in S^{SK}_{k}(Gamma[2]), k even.
    """
    R.<t> = PowerSeriesRing(ZZ, default_prec=2*k+1)
    num = t^6
    denom = (1-t^2)*(1-t^4)
    f = num / denom
    d = f.list()[k]
    return d


def List_Mult_Irrep_SK_Cusp_Form_SV_even(k):
    """
    Return the multiplicities of the 11 irrep. of S_6 in S^{SK}_{k}(Gamma[2]), k even.
    """
    s6 = Mult_s6_SK_Cusp_Form_SV_even(k)
    s51 = 0
    s42 = Mult_s42_SK_Cusp_Form_SV_even(k)
    s411 = 0
    s33 = 0
    s321 = 0
    s3111 = 0
    s222 = Mult_s222_SK_Cusp_Form_SV_even(k)
    s2211 = 0
    s21111 = 0
    s111111 = 0
    L = [s6,s51,s42,s411,s33,s321,s3111,s222,s2211,s21111,s111111]
    return L
    
"""
   Example:
   sage: [[k,List_Mult_Irrep_SK_Cusp_Form_SV_even(k)] for k in range(20) if k % 2==0]
   [[0, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]],
    [2, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]],
    [4, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]],
    [6, [0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0]],
    [8, [0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0]],
    [10, [1, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0]],
    [12, [1, 0, 2, 0, 0, 0, 0, 2, 0, 0, 0]],
    [14, [1, 0, 2, 0, 0, 0, 0, 3, 0, 0, 0]],
    [16, [2, 0, 3, 0, 0, 0, 0, 3, 0, 0, 0]],
    [18, [2, 0, 3, 0, 0, 0, 0, 4, 0, 0, 0]]]
"""


def Dim_SK_Cusp_Form_Total_SV_even(k):
    """
    Return the dimension of the subspace S^{SK}_{k}(Gamma[2]),k even.
    """
    L = List_Mult_Irrep_SK_Cusp_Form_SV_even(k)
    d = 1*L[0]+ 5*L[1] + 9*L[2] + 10*L[3] + 5*L[4]+ 16*L[5] + 10*L[6] + 5*L[7] + 9*L[8] + 5*L[9]+ 1*L[10]
    return d

"""
   Example:
   sage: [[k,Dim_SK_Cusp_Form_Total_SV_even(k)] for k in range(20) if k % 2==0]
   [[0, 0],
    [2, 0],
    [4, 0],
    [6, 5],
    [8, 14],
    [10, 20],
    [12, 29],
    [14, 34],
    [16, 44],
    [18, 49]]
"""

"""
Cusp forms of general type, (G), even weight
"""


def Mult_s6_gen_Cusp_Form_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[6] of S_6 in S^{G}_{k}(Gamma[2]),k even.
    """
    a = Mult_s6_Cusp_Form_SV_even(k)
    b = Mult_s6_SK_Cusp_Form_SV_even(k)
    d = a-b
    return d

def Mult_s42_gen_Cusp_Form_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[4,2] of S_6 in S^{G}_{k}(Gamma[2]),k even.
    """
    a = Mult_s42_Cusp_Form_SV_even(k)
    b = Mult_s42_SK_Cusp_Form_SV_even(k)
    d = a-b
    return d

def Mult_s222_gen_Cusp_Form_SV_even(k):
    """
    Compute the multiplicity of the irrep. s[2^3] of S_6 in S^{G}_{k}(Gamma[2]),k even.
    """
    a = Mult_s222_Cusp_Form_SV_even(k)
    b = Mult_s222_SK_Cusp_Form_SV_even(k)
    d = a-b
    return d



def List_Mult_Irrep_gen_Cusp_Form_SV_even(k):
    """
    Return the multiplicities of the 11 irrep. of S_6 in S^{G}_{k}(Gamma[2]) as a list.
    """
    s6 = Mult_s6_gen_Cusp_Form_SV_even(k)
    s51 = Mult_s51_Cusp_Form_SV_even(k)
    s42 = Mult_s42_gen_Cusp_Form_SV_even(k)
    s411 = Mult_s411_Cusp_Form_SV_even(k)
    s33 = Mult_s33_Cusp_Form_SV_even(k)
    s321 = Mult_s321_Cusp_Form_SV_even(k)
    s3111 = Mult_s3111_Cusp_Form_SV_even(k)
    s222 = Mult_s222_gen_Cusp_Form_SV_even(k)
    s2211 = Mult_s2211_Cusp_Form_SV_even(k)
    s21111 = Mult_s21111_Cusp_Form_SV_even(k)
    s111111 = Mult_s111111_Cusp_Form_SV_even(k)
    L = [s6,s51,s42,s411,s33,s321,s3111,s222,s2211,s21111,s111111]
    return L
    
"""
   Example:
   sage: [[k,List_Mult_Irrep_gen_Cusp_Form_SV_even(k)] for k in range(20) if k % 2==0]
   [[0, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]],
    [2, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]],
    [4, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]],
    [6, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]],
    [8, [0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0]],
    [10, [0, 0, 0, 0, 0, 1, 2, 0, 0, 1, 0]],
    [12, [0, 0, 1, 1, 0, 2, 3, 1, 0, 1, 0]],
    [14, [0, 0, 2, 1, 0, 4, 5, 2, 1, 2, 0]],
    [16, [0, 1, 4, 3, 0, 6, 7, 3, 1, 3, 0]],
    [18, [0, 1, 6, 4, 0, 9, 10, 5, 3, 5, 0]]]
"""


def Dim_gen_Cusp_Form_Total_SV_even(k):
    """
    Return the dimension of the subspace S^{G}_{k}(Gamma[2])
    """
    L = List_Mult_Irrep_gen_Cusp_Form_SV_even(k)
    d = 1*L[0]+ 5*L[1] + 9*L[2] + 10*L[3] + 5*L[4]+ 16*L[5] + 10*L[6] + 5*L[7] + 9*L[8] + 5*L[9]+ 1*L[10]
    return d
    
"""
   Example:
   sage: [[k,Dim_gen_Cusp_Form_Total_SV_even(k)] for k in range(20) if k % 2==0]
   [[0, 0],
    [2, 0],
    [4, 0],
    [6, 0],
    [8, 10],
    [10, 41],
    [12, 91],
    [14, 171],
    [16, 276],
    [18, 420]]
"""

def Dim_List(L):
    """
    Return the dimension of a S_6-representation space whose isotypical decomposition is given by L
    """
    d = 1*L[0]+ 5*L[1] + 9*L[2] + 10*L[3] + 5*L[4]+ 16*L[5] + 10*L[6] + 5*L[7] + 9*L[8] + 5*L[9]+ 1*L[10]
    return d


def List_Mult_Irrep_SV_odd(k):
    """
    Return for k odd the list of the isotypical decomposition of 
    Total space,
    Total cusp space
    E (Eisenstein),
    Eis (Siegel-Eisenstein),
    KE (Klingen-Eisenstein),
    Saito-Kurokawa (type P)
    Yosh (type Y)
    Genuine (type G, general)
    The output is a list of 8 lists with 12 elements.
    """
    Total = List_Mult_Irrep_SV(k)
    Totalwd = [Total, Dim_List(Total)]
    Total_Cusp = List_Mult_Irrep_SV(k)
    Total_Cuspwd = [Total_Cusp,Dim_List(Total_Cusp)]
    E = [0,0,0,0,0,0,0,0,0,0,0]
    Ewd = [E,Dim_List(E)]
    Eis = [0,0,0,0,0,0,0,0,0,0,0]
    Eiswd = [Eis,Dim_List(Eis)]
    KE = [0,0,0,0,0,0,0,0,0,0,0]
    KEwd = [KE,Dim_List(KE)]
    SK = List_Mult_Irrep_SK_SV_odd(k)
    SKwd = [SK,Dim_List(SK)]
    Yosh = [0,0,0,0,0,0,0,0,0,0,0]
    Yoshwd = [Yosh,Dim_List(Yosh)]
    Gen = List_Mult_Irrep_gen_SV_odd(k)
    Genwd = [Gen,Dim_List(Gen)]
    L = [Totalwd, Total_Cuspwd, Ewd, Eiswd, KEwd, SKwd, Yoshwd, Genwd]
    return L

"""
   Example:
   sage: [[k,List_Mult_Irrep_SV_odd(k)] for k in [7,9]]
[[7,
  [[[0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0], 5],
   [[0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0], 5],
   [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
   [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
   [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
   [[0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0], 5],
   [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
   [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0]]],
 [9,
  [[[0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1], 15],
   [[0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1], 15],
   [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
   [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
   [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
   [[0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1], 6],
   [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
   [[0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0], 9]]]]
"""

def List_Mult_Irrep_SV_even(k):
    """
    Return for k even the list of the isotypical decomposition of 
    Total space,
    Total cusp space
    E (Eisenstein),
    Eis (Siegel-Eisenstein),
    KE (Klingen-Eisenstein),
    Saito-Kurokawa (type P)
    Yosh (type Y)
    Genuine (type G, general)
    The output is a list of 8 lists with 11 elements.
    """
    Total = List_Mult_Irrep_SV(k)
    Totalwd = [Total, Dim_List(Total)]
    Total_Cusp = List_Mult_Irrep_Cusp_Form_SV_even(k)
    Total_Cuspwd = [Total_Cusp,Dim_List(Total_Cusp)]
    E = List_Mult_Irrep_E_SV_even(k)
    Ewd = [E,Dim_List(E)]
    Eis = List_Mult_Irrep_Eis_SV_even(k)
    Eiswd = [Eis,Dim_List(Eis)]
    KE = List_Mult_Irrep_KE_SV_even(k)
    KEwd = [KE,Dim_List(KE)]
    SK = List_Mult_Irrep_SK_Cusp_Form_SV_even(k)
    SKwd = [SK,Dim_List(SK)]
    Yosh = [0,0,0,0,0,0,0,0,0,0,0]
    Yoshwd = [Yosh,Dim_List(Yosh)]
    Gen = List_Mult_Irrep_gen_Cusp_Form_SV_even(k)
    Genwd = [Gen,Dim_List(Gen)]
    L = [Totalwd, Total_Cuspwd, Ewd, Eiswd, KEwd, SKwd, Yoshwd, Genwd]
    return L

"""
   Example:
   sage: [[k,List_Mult_Irrep_SV_even(k)] for k in [4,6]]
[[4,
  [[[1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0], 15],
   [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
   [[1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0], 15],
   [[1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0], 15],
   [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
   [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
   [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
   [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0]]],
 [6,
  [[[1, 0, 1, 0, 0, 0, 1, 2, 0, 1, 0], 35],
   [[0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0], 5],
   [[1, 0, 1, 0, 0, 0, 1, 1, 0, 1, 0], 30],
   [[1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0], 15],
   [[0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0], 15],
   [[0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0], 5],
   [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
   [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0]]]]
"""
  
def Mult_Irrep_Gamma_2_SV(k):
    """
    Put everything together
    """
    k = ZZ(k)
    if k == 1: 
      return [[[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
            [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
            [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
            [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
            [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
            [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
            [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
            [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0]]
    if k % 2 == 1: 
      return List_Mult_Irrep_SV_odd(k)
    else:
      return List_Mult_Irrep_SV_even(k)

"""
Decomposition for the full level
"""

def dim_Sp4Z_SV(k):
    L = Mult_Irrep_Gamma_2_SV(k)
    LL = [L[n][0][0] for n in range(8)]
    return LL

"""
   Example:
   sage: [[k,dim_Sp4Z_SV(k)] for k in range(2,11)]
   [[2, [0, 0, 0, 0, 0, 0, 0, 0]],
    [3, [0, 0, 0, 0, 0, 0, 0, 0]],
    [4, [1, 0, 1, 1, 0, 0, 0, 0]],
    [5, [0, 0, 0, 0, 0, 0, 0, 0]],
    [6, [1, 0, 1, 1, 0, 0, 0, 0]],
    [7, [0, 0, 0, 0, 0, 0, 0, 0]],
    [8, [1, 0, 1, 1, 0, 0, 0, 0]],
    [9, [0, 0, 0, 0, 0, 0, 0, 0]],
    [10, [2, 1, 1, 1, 0, 1, 0, 0]]]
"""

"""
Decomposition for the full level with character
"""

def dim_Sp4Z_With_Character_SV(k):
    L = Mult_Irrep_Gamma_2_SV(k)
    LL = [L[n][0][10] for n in range(8)]
    return LL
    
"""
   Example:
   sage: [[k,dim_Sp4Z_With_Character_SV(k)] for k in range(2,11)]
   [[2, [0, 0, 0, 0, 0, 0, 0, 0]],
    [3, [0, 0, 0, 0, 0, 0, 0, 0]],
    [4, [0, 0, 0, 0, 0, 0, 0, 0]],
    [5, [1, 1, 0, 0, 0, 1, 0, 0]],
    [6, [0, 0, 0, 0, 0, 0, 0, 0]],
    [7, [0, 0, 0, 0, 0, 0, 0, 0]],
    [8, [0, 0, 0, 0, 0, 0, 0, 0]],
    [9, [1, 1, 0, 0, 0, 1, 0, 0]],
    [10, [0, 0, 0, 0, 0, 0, 0, 0]]]
"""

"""
Decomposition for Gamma_0[2]
"""

def dim_Gamma_0_2_SV(k):
    L = Mult_Irrep_Gamma_2_SV(k)
    LL = [L[n][0][0]+L[n][0][2]+L[n][0][7] for n in range(8)]
    return LL

"""
   Example:
   sage: [[k,dim_Gamma_0_2_SV(k)] for k in range(11)]
   [[0, [1, 0, 1, 1, 0, 0, 0, 0]],
    [1, [0, 0, 0, 0, 0, 0, 0, 0]],
    [2, [1, 0, 1, 1, 0, 0, 0, 0]],
    [3, [0, 0, 0, 0, 0, 0, 0, 0]],
    [4, [3, 0, 3, 3, 0, 0, 0, 0]],
    [5, [0, 0, 0, 0, 0, 0, 0, 0]],
    [6, [4, 1, 3, 3, 0, 1, 0, 0]],
    [7, [0, 0, 0, 0, 0, 0, 0, 0]],
    [8, [7, 2, 5, 3, 2, 2, 0, 0]],
    [9, [0, 0, 0, 0, 0, 0, 0, 0]],
    [10, [9, 4, 5, 3, 2, 4, 0, 0]]]
"""


"""
Decomposition for Gamma_1[2]
"""

def Mult_Irrep_Gamma_1_2_SV(k):
    L = Mult_Irrep_Gamma_2_SV(k)
    LL = [[[L[n][0][0]+L[n][0][2]+L[n][0][7],L[n][0][1]+L[n][0][2]+L[n][0][5],L[n][0][3]+L[n][0][4]],L[n][0][0]+L[n][0][2]+L[n][0][7]+2*(L[n][0][1]+L[n][0][2]+L[n][0][5])+L[n][0][3]+L[n][0][4]] for n in range(8)]
    return LL
"""
   Example:
   sage: [[k,Mult_Irrep_Gamma_1_2_SV(k)] for k in [4,5,6,7]]
[[4,
  [[[3, 1, 0], 5],
   [[0, 0, 0], 0],
   [[3, 1, 0], 5],
   [[3, 1, 0], 5],
   [[0, 0, 0], 0],
   [[0, 0, 0], 0],
   [[0, 0, 0], 0],
   [[0, 0, 0], 0]]],
 [5,
  [[[0, 0, 0], 0],
   [[0, 0, 0], 0],
   [[0, 0, 0], 0],
   [[0, 0, 0], 0],
   [[0, 0, 0], 0],
   [[0, 0, 0], 0],
   [[0, 0, 0], 0],
   [[0, 0, 0], 0]]],
 [6,
  [[[4, 1, 0], 6],
   [[1, 0, 0], 1],
   [[3, 1, 0], 5],
   [[3, 1, 0], 5],
   [[0, 0, 0], 0],
   [[1, 0, 0], 1],
   [[0, 0, 0], 0],
   [[0, 0, 0], 0]]],
 [7,
  [[[0, 0, 1], 1],
   [[0, 0, 1], 1],
   [[0, 0, 0], 0],
   [[0, 0, 0], 0],
   [[0, 0, 0], 0],
   [[0, 0, 1], 1],
   [[0, 0, 0], 0],
   [[0, 0, 0], 0]]]]
"""


