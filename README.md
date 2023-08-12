## Siegel Modular Forms of degree 2  and Level 2 - Dimensions
 
### Description

The code in this repository is based on the preprint 
*Dimension formulas for spaces of vector-valued Siegel modular forms of degree two and level two*
by Jonas Bergström, Fabien Cléry.

### Installation (SageMath)

To use the codes you will need to have
[SageMath](https://www.sagemath.org) installed.

Then clone the repository via
```
git clone git@github.com:CleryFabien/SMF_Degree_2_Level_2_Dim.git
```
then go to the newly created directory and from within Sage type: 
```
sage: cd Scripts
sage: load("Isotypical_Decomp_Gamma_2_Level_2_Vector_Valued.sage")
```

### Usage

- [DimFormulaPlusMinusNewFormGamma0.sage](#Deg1)
- [Euler Characteristic](#EulerCharacteristic)
- [Isotypical decomposition: scalar-valued case](#IsodecompSV)
- [Isotypical decomposition: vector-valued case](#IsodecompVV)

## Isotypical decomposition: scalar-valued case
The procedure Isotypical_Decomp_Gamma_2_Level_2_Scalar_Valued.sage can execute the following commands
(k stands for the weight, a non-negative integer):

- ``Mult_Irrep_Gamma_2_SV(k)``
returns a list of the isotypical decompositions (abbreviated by i.d. in the sequel) of the various pieces 
appearing in the space $M_k(\Gamma[2])$
(the irreducible representations of S_6 are ordered as in Table 1 of \ref{table:IrrepList})
and their dimension: 
 
- [i.d. of $M_k(\Gamma[2])$], dim $M_k(\Gamma[2])$],
- [i.d. of $S_k(\Gamma[2])$], dim $S_k(\Gamma[2])$],
- [i.d. of $E_k(\Gamma[2])$], dim $E_k(\Gamma[2])$],
- [i.d. of $E^{(F)}_k(\Gamma[2])$], dim $E^{(F)}_k(\Gamma[2])$],
- [i.d. of $E^{(Q)}_k(\Gamma[2])$], dim $E^{(Q)}_k(\Gamma[2])$],
- [i.d. of S^{(P)}_k(\Gamma[2])], dim S^{(P)}_k(\Gamma[2])],
- [i.d. of  S^{(Y)}_k(\Gamma[2])], dim S^{(Y)}_k(\Gamma[2])],
- [i.d. of  S^{(G)}_k(\Gamma[2])], dim S^{(G)}_k(\Gamma[2])]


One example:
    
     sage: cd Scripts
     sage: load("Isotypical_Decomp_Gamma_2_Level_2_Vector_Valued.sage")
     sage: Mult_Irrep_Gamma_2_SV(24)
     [[[8, 7, 28, 12, 2, 27, 24, 21, 7, 12,0], 1325],
     [[5, 5, 22, 12, 2, 24, 22, 17, 7, 10, 0], 1160],
     [[3, 2, 6, 0, 0, 3, 2, 4, 0, 2, 0], 165],
     [[1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0], 15],
     [[2, 2, 5, 0, 0, 3, 2, 3, 0, 2, 0], 150],
     [[3, 0, 5, 0, 0, 0, 0, 5, 0, 0, 0], 73],
     [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
     [[2, 5, 17, 12, 2, 24, 22, 12, 7, 10, 0], 1087]]
    
- Mult_Irrep_Gamma_1_2_SV(k)
- dim_Gamma_0_2_SV(k)
- dim_Sp4Z_With_Character_SV(k)
- dim_Sp4Z_SV(k)

```
sage: Mult_Irrep_Gamma_2_SV(k)
```




Here is one example:
sage: Mult_Irrep_Gamma_2_SV(24)


- Mult_Irrep_Gamma_1_2_SV(k)

where k stands for the weight, k\geqslant 0.
It returns the isotypical decomposition (i.d.) of each piece appearing in 
the decompositions (\ref{OrthoDecom}) and (\ref{DecompPackets}) for modular forms on Gamma_1[2]
(the irreducible representations of S_6 are ordered as s[3], s[2,1], s[1^3])
and their dimension: 
 

sage: Mult_Irrep_Gamma_1_2_SV(k)
[
[[i.d. of M_k(Gamma_1[2])], dim M_k(Gamma_1[2])], 
[[i.d. of S_k(Gamma_1[2])], S_k(Gamma_1[2])],
[[i.d. of E_k(Gamma_1[2])], dim E_k(Gamma_1[2])],
[[i.d. of E^{(F)}_k(Gamma_1[2])], dim E^{(F)}_k(Gamma_1[2])],
[[i.d. of E^{(Q)}_k(Gamma_1[2])], dim E^{(Q)}_k(Gamma_1[2])],
[[i.d. of S^{(P)}_k(Gamma_1[2])], dim S^{(P)}_k(Gamma_1[2])],
[[i.d. of  S^{(Y)}_k(Gamma_1[2])], dim S^{(Y)}_k(Gamma_1[2])],
[[i.d. of  S^{(G)}_k(Gamma_1[2])], dim S^{(G)}_k(Gamma_1[2])]
]


Here is one example:

sage: Mult_Irrep_Gamma_1_2_SV(24)
[
[[57, 62, 14], 195],
[[44, 51, 14], 160],
[[13, 11, 0], 35],
[[3, 1, 0], 5],
[[10, 10, 0], 30],
[[13, 5, 0], 23],
[[0, 0, 0], 0],
[[31, 46, 14], 137]
]

Note that the generating series for the irreducible representations 
of \mathfrak{S}_3 in M_k(Gamma_1[2]) are given in Proposition 9.1 of \cite{CvdGG}
and the structure of graded ring of modular forms on Gamma_1[2] is described in Theorem 9.2
of \textit{loc. cit.}.



- dim_Gamma_0_2_SV(k)

where k stands for the weight, k\geqslant 0. It returns

sage: dim_Gamma_0_2_SV(k)
[dim M_k(Gamma_0[2]), dim S_k(Gamma_0[2]), dim E_k(Gamma_0[2]),dim E^{(F)}_k(Gamma_0[2]),dim E^{(Q)}_k(Gamma_0[2]),
dim S^{(P)}_k(Gamma_0[2]), dim S^{(Y)}_k(Gamma_0[2]), dim S^{(G)}_k(Gamma_0[2])]

Here is one example:

sage: dim_Gamma_0_2_SV(24)
[57, 44, 13, 3, 10, 13, 0, 31]

Note that the generating series for the dimensions of M_k(Gamma_0[2]) is given in Proposition 9.1 of \cite{CvdGG}
and the structure of graded ring of modular forms on Gamma_0[2] is described in Theorem 9.1
of \textit{loc. cit.}.




- dim_Sp4Z_With_Character_SV(k)

where k stands for the weight, k\geqslant 0. It returns

sage: dim_Sp4Z_With_Character_SV(k)
[dim M_k(Gamma,\varepsilon), dim S_k(Gamma,\varepsilon), dim E_k(Gamma,\varepsilon),dim E^{(F)}_k(Gamma,\varepsilon),dim E^{(Q)}_k(Gamma,\varepsilon), dim S^{(P)}_k(Gamma,\varepsilon), 
dim S^{(Y)}_k(Gamma,\varepsilon), dim S^{(G)}_k(Gamma,\varepsilon)]

Here is one example:

sage: dim_Sp4Z_With_Character_SV(24)
[0, 0, 0, 0, 0, 0, 0, 0]




- dim_Sp4Z_SV(k)

where k stands for the weight, k\geqslant 0. It returns

sage: dim_Sp4Z_SV(k)
[dim M_k(Gamma), dim S_k(Gamma), dim E_k(Gamma),dim E^{(F)}_k(Gamma),dim E^{(Q)}_k(Gamma),dim S^{(P)}_k(Gamma), 
dim S^{(Y)}_k(Gamma), dim S^{(G)}_k(Gamma)]

Here is one example:

sage: dim_Sp4Z_SV(24)
[8, 5, 3, 1, 2, 3, 0, 2]




Isotypical_Decomp_Gamma_2_Level_2_Vector_Valued.sage

-  Mult_Irrep_Gamma_2_VV(k,j)

It returns the isotypical decomposition (i.d.) of each piece appearing in 
the decompositions (\ref{OrthoDecom}) and (\ref{DecompPackets})  for modular forms on Gamma[2]
(the irreducible representations of S_6 are ordered as in Table \ref{table:IrrepList})
and their dimension: 
 

sage: Mult_Irrep_Gamma_2_VV(k,j)
[
[[i.d. of M_{k,j}(Gamma[2])], dim M_{k,j}(Gamma[2])], 
[[i.d. of S_{k,j}(Gamma[2])], S_{k,j}(Gamma[2])],
[[i.d. of E_{k,j}(Gamma[2])], dim E_{k,j}(Gamma[2])],
[[i.d. of E^{(F)}_{k,j}(Gamma[2])], dim E^{(F)}_{k,j}(Gamma[2])],
[[i.d. of E^{(Q)}_{k,j}(Gamma[2])], dim E^{(Q)}_{k,j}(Gamma[2])],
[[i.d. of S^{(P)}_{k,j}(Gamma[2])], dim S^{(P)}_{k,j}(Gamma[2])],
[[i.d. of  S^{(Y)}_{k,j}(Gamma[2])], dim S^{(Y)}_{k,j}(Gamma[2])],
[[i.d. of  S^{(G)}_{k,j}(Gamma[2])], dim S^{(G)}_{k,j}(Gamma[2])]
]


Example:

sage: Mult_Irrep_Gamma_2_VV(12,18)
[
[[13, 54, 111, 116, 56, 195, 130, 70, 110, 68, 13], 8835],
[[11, 52, 105, 116, 56, 191, 127, 66, 110, 65, 13], 8640],
[[2, 2, 6, 0, 0, 4, 3, 4, 0, 3, 0], 195],
[[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
[[2, 2, 6, 0, 0, 4, 3, 4, 0, 3, 0], 195],
[[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
[[0, 0, 0, 0, 0, 0, 0, 3, 0, 3, 3], 33],
[[11, 52, 105, 116, 56, 191, 127, 63, 110, 62, 10], 8607]
 ]
 

The procedures 


- Mult_Irrep_Gamma_1_2_VV(k,j)
- dim_Gamma_0_2_VV(k,j)
- dim_Sp4Z_With_Character_VV(k,j)
- dim_Sp4Z_VV(k,j)

return as their analogues in the scalar-valued case. 
Examples:

sage: dim_Sp4Z_With_Character_VV(3,6)

[1, 1, 0, 0, 0, 0, 1, 0]

sage: dim_Gamma_0_2_VV(11,6)

[15, 15, 0, 0, 0, 0, 1, 14]

Citing this code
--

Please cite the following preprint if this code has been helpful in your research.

Jonas Bergström, Fabien Cléry

*Dimension formulas for spaces of vector-valued Siegel modular forms of degree two and level two*

Preprint available at [arXiv:](https://arxiv.org)


### Authors

* [Jonas Bergström](https://www.su.se/english/profiles/jonab-1.190994) 
* [Fabien Cléry](https://vivo.brown.edu/display/fclery) 
