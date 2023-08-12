""" 
The following two precedures compute the dimension
of the plus and minus subspaces of the space of new 
forms on Gamma_0(2). Here the plus and minus signs 
correspond to the sign of the eigenvalues of the 
Fricke involution acting on the space of new 
forms on Gamma_0(2). These dimensions are computed as 
explained in Bergström-Cléry, ``Dimension formulas for 
spaces of vector-valued Siegel modular forms of degree two and level two''
Section 3.1.

Remark: These formulas can also be found in Theorem 2 of 

[1] Kimball Martin
    Refined dimensions of cusp forms, and equidistribution and bias of signs
    Journal of Number Theory
    188 (2018) pp. 1–17

Remark: In Theorem 2 of [1] the plus/minus signs correspond to 
         w_f which is the sign in the functional equation of L(f,s)
         for f a weight k new form on Gamma_0(2) so 
         w_f=(-1)^{k/2} \lambda_{W_2} for f \in S_{k}(Gamma_0(2))^{new}
"""



def dimension_new_cusp_forms_plus_level_2(k):
    """
    Compute the dimension of the plus space of 
    new cusp forms on Gamma_0(2)
    """
    k = ZZ(k)
    d = Gamma0(2).dimension_new_cusp_forms(k)
    if k==0 or k==2:
        return 0 
    if (k % 8) == 0:
        return (d/2)+1/2 
    if (k % 8) == 2:
        return (d/2)-1/2 
    elif (k % 8) == 4 or (k % 8)== 6:
        return (d/2)
"""
   Example:
   sage: print([[k,dimension_new_cusp_forms_plus_level_2(k)] for k in range(20) if k % 2 == 0])
         [[0, 0], [2, 0], [4, 0], [6, 0], [8, 1], [10, 0], [12, 0], [14, 1], [16, 1], [18, 0]]
"""

def dimension_new_cusp_forms_minus_level_2(k):
    """
    Compute the dimension of the minus space of 
    new cusp forms on Gamma_0(2)
    """
    k = ZZ(k)
    d = Gamma0(2).dimension_new_cusp_forms(k)
    if k==0 or k==2:
        return 0
    if (k % 8) == 0:
        return (d/2)-1/2 
    if (k % 8) == 2:
        return (d/2)+1/2 
    elif (k % 8) == 4 or (k % 8)== 6:
        return (d/2)
"""
   Example:
   sage: print([[k,dimension_new_cusp_forms_minus_level_2(k)] for k in range(20) if k % 2 == 0])
         [[0, 0], [2, 0], [4, 0], [6, 0], [8, 0], [10, 1], [12, 0], [14, 1], [16, 0], [18, 1]]
"""

def CheckDim(k):
    """
    Check that 
    dim S^{+}_k(Gamma_0(2))^{new}+dim S^{-}_k(Gamma_0(2))^{new}=dim S_k(Gamma_0(2))^{new}
    """
    d = Gamma0(2).dimension_new_cusp_forms(k)
    dp = dimension_new_cusp_forms_plus_level_2(k)
    dm = dimension_new_cusp_forms_minus_level_2(k)
    return d-dp-dm

"""
   Example:
   sage: print([[k,CheckDim(k)] for k in range(20) if k % 2 == 0])
   [[0, 0], [2, 0], [4, 0], [6, 0], [8, 0], [10, 0], [12, 0], [14, 0], [16, 0], [18, 0]]
"""