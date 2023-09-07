## Siegel Modular Forms of degree 2  and Level 2 - Isotypical decompositions
 
### Description

The code in this repository is based on the preprint 
*Dimension formulas for spaces of vector-valued Siegel modular forms of degree two and level two*
by Jonas Bergström, Fabien Cléry, available at [arXiv:](https://arxiv.org)

### Installation (SageMath)

To use the code you will need to have
[SageMath](https://www.sagemath.org) installed.

Then clone the repository via
```
git clone git@github.com:CleryFabien/SMF_Degree_2_Level_2_Dim.git
```
This will create a directory named SMF_Degree_2_Level_2_Dim.

### Usage

Go to the newly created directory and from within Sage type: 
```
sage: cd Scripts
sage: load("Isotypical_Decomp_Gamma_2_Level_2_Vector_Valued.sage")
```

The input for the procedures described below is the weight, i.e. a pair of 
integers $`(k,j)`$. Note that for $`k=2`$ and $`j`$ even  the code only returns question marks 
(see [BG](https://arxiv.org), Section 5 for some explanations).


The procedure ``Isotypical_Decomp_Gamma_2_Level_2_Vector_Valued.sage`` can 
execute the following commands:
 
- ``Mult_Irrep_Gamma_2_VV(k,j)`` returns a list of 8 elements. 
Each element of this list is in turn a list of 2 elements: [i.d.(V), dim V]
where i.d.(V) is the isotypical decomposition of the $`\mathfrak{S}_6`$-module V and 
dim V its dimension. The irreducible representations of $`\mathfrak{S}_6`$ 
are ordered as in Table 1 of [BG](https://arxiv.org). The 8 elements 
of the list returned correspond to the spaces: 
$`M_{k,j}(\Gamma[2])`$, $`S_{k,j}(\Gamma[2])`$, $`E_{k,j}(\Gamma[2])`$, $`E^{(F)}_{k,j}(\Gamma[2])`$, 
$`E^{(Q)}_{k,j}(\Gamma[2])`$, $`S^{(P)}_{k,j}(\Gamma[2])`$, $`S^{(Y)}_{k,j}(\Gamma[2])`$ and 
$`S^{(G)}_{k,j}(\Gamma[2])`$.
 
Examples:
    
     sage: cd Scripts
     sage: load("Isotypical_Decomp_Gamma_2_Level_2_Vector_Valued.sage")
     sage: Mult_Irrep_Gamma_2_VV(24,0)
     [[[8, 7, 28, 12, 2, 27, 24, 21, 7, 12,0], 1325],
     [[5, 5, 22, 12, 2, 24, 22, 17, 7, 10, 0], 1160],
     [[3, 2, 6, 0, 0, 3, 2, 4, 0, 2, 0], 165],
     [[1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0], 15],
     [[2, 2, 5, 0, 0, 3, 2, 3, 0, 2, 0], 150],
     [[3, 0, 5, 0, 0, 0, 0, 5, 0, 0, 0], 73],
     [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
     [[2, 5, 17, 12, 2, 24, 22, 12, 7, 10, 0], 1087]]
     sage: Mult_Irrep_Gamma_2_VV(12,4)
     [[[2, 5, 14, 8, 3, 20, 13, 9, 8, 8, 0], 855],
     [[1, 4, 11, 8, 3, 18, 12, 7, 8, 7, 0], 765],
     [[1, 1, 3, 0, 0, 2, 1, 2, 0, 1, 0], 90],
     [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
     [[1, 1, 3, 0, 0, 2, 1, 2, 0, 1, 0], 90],
     [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
     [[0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0], 10],
     [[1, 4, 11, 8, 3, 18, 12, 7, 8, 5, 0], 755]]
    
- ``Mult_Irrep_Gamma_1_2_VV(k,j)`` returns a list of 8 elements. 
Each element of this list is in turn a list of 2 elements: [i.d.(V), dim V]
where i.d.(V) is the isotypical decomposition of the $`\mathfrak{S}_3`$-module V and 
dim V its dimension. The irreducible representations of $`\mathfrak{S}_3`$ 
are ordered as $`s[3]`$, $`s[2,1]`$ and $`s[1^3]`$. The 8 elements 
of the list returned correspond to the spaces: 
$`M_{k,j}(\Gamma_1[2])`$, $`S_{k,j}(\Gamma_1[2])`$, $`E_{k,j}(\Gamma_1[2])`$, $`E^{(F)}_{k,j}(\Gamma_1[2])`$, 
$`E^{(Q)}_{k,j}(\Gamma_1[2])`$, $`S^{(P)}_{k,j}(\Gamma_1[2])`$, $`S^{(Y)}_{k,j}(\Gamma_1[2])`$ and 
$`S^{(G)}_{k,j}(\Gamma_1[2])`$.

Examples:

    sage: Mult_Irrep_Gamma_1_2_VV(24,0)
    [[[57, 62, 14], 195],
    [[44, 51, 14], 160],
    [[13, 11, 0], 35],
    [[3, 1, 0], 5],
    [[10, 10, 0], 30],
    [[13, 5, 0], 23],
    [[0, 0, 0], 0],
    [[31, 46, 14], 137]]
    sage: Mult_Irrep_Gamma_1_2_VV(12,4)
    [[[25, 39, 11], 114],
    [[19, 33, 11], 96],
    [[6, 6, 0], 18],
    [[0, 0, 0], 0],
    [[6, 6, 0], 18],
    [[0, 0, 0], 0],
    [[0, 0, 0], 0],
    [[19, 33, 11], 96]]

- ``dim_Gamma_0_2_VV(k,j)`` returns a list of 8 elements. Each element
of this list is $`\dim V`$ for $`V=M_{k,j}(\Gamma_0[2]), S_{k,j}(\Gamma_0[2]), E_{k,j}(\Gamma_0[2]), E^{(F)}_{k,j}(\Gamma_0[2]),`$ 
$`E^{(Q)}_{k,j}(\Gamma_0[2]), S^{(P)}_{k,j}(\Gamma_0[2]), S^{(Y)}_{k,j}(\Gamma_0[2])`$ and 
$`S^{(G)}_{k,j}(\Gamma_0[2])`$. 

Examples:

    sage: dim_Gamma_0_2_VV(24,0)
    [57, 44, 13, 3, 10, 13, 0, 31]
    sage: dim_Gamma_0_2_VV(12,4)
    [25, 19, 6, 0, 6, 0, 0, 19]

- ``dim_Sp4Z_With_Character_VV(k,j)`` returns a list of 8 elements.
Each element of this list is $`\dim V`$ for $`V=M_{k,j}(\text{Sp}(4,\mathbb{Z}),\epsilon), S_{k,j}(\text{Sp}(4,\mathbb{Z}),\epsilon),`$ 
$`E_{k,j}(\text{Sp}(4,\mathbb{Z}),\epsilon), E^{(F)}_{k,j}(\text{Sp}(4,\mathbb{Z}),\epsilon),`$ 
$`E^{(Q)}_{k,j}(\text{Sp}(4,\mathbb{Z}),\epsilon), S^{(P)}_{k,j}(\text{Sp}(4,\mathbb{Z}),\epsilon),`$ 
$`S^{(Y)}_{k,j}(\text{Sp}(4,\mathbb{Z}),\epsilon)`$ and $`S^{(G)}_{k,j}(\text{Sp}(4,\mathbb{Z}),\epsilon)`$.

Examples:
    
    sage: dim_Sp4Z_With_Character_VV(5,0)
    [1, 1, 0, 0, 0, 1, 0, 0]
    sage: dim_Sp4Z_With_Character_VV(12,2)
    [0, 0, 0, 0, 0, 0, 0, 0]
    sage: dim_Sp4Z_With_Character_VV(12,6)
    [2, 2, 0, 0, 0, 0, 1, 1] 

- ``dim_Sp4Z_VV(k,j)`` returns a list of 8 elements. Each element
of this list is $`\dim V`$ for $`V=M_{k,j}(\text{Sp}(4,\mathbb{Z})), S_{k,j}(\text{Sp}(4,\mathbb{Z})), E_{k,j}(\text{Sp}(4,\mathbb{Z})), E^{(F)}_{k,j}(\text{Sp}(4,\mathbb{Z})),`$ 
$`E^{(Q)}_{k,j}(\text{Sp}(4,\mathbb{Z})), S^{(P)}_{k,j}(\text{Sp}(4,\mathbb{Z})), S^{(Y)}_{k,j}(\text{Sp}(4,\mathbb{Z}))`$ and 
$`S^{(G)}_{k,j}(\text{Sp}(4,\mathbb{Z}))`$. 

Examples:

     sage: dim_Sp4Z_VV(24,0)
     [8, 5, 3, 1, 2, 3, 0, 2]
     sage: dim_Sp4Z_VV(12,4)
     [2, 1, 1, 0, 1, 0, 0, 1]

- ``List_to_Rep(L)`` Rewrite a list of p(n) elements as a sum of irreducible representations of $`\mathfrak{S}_n`$  (p(n) is the number of partition of n).
 

Examples:

     sage: TT = Mult_Irrep_Gamma_2_VV(20,12)
     sage: TT
     [[[24, 96, 195, 196, 95, 330, 215, 119, 180, 110, 20], 14909],
     [[22, 94, 188, 196, 95, 325, 213, 114, 180, 108, 20], 14699],
     [[2, 2, 7, 0, 0, 5, 2, 5, 0, 2, 0], 210],
     [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
     [[2, 2, 7, 0, 0, 5, 2, 5, 0, 2, 0], 210],
     [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0],
     [[0, 0, 0, 0, 0, 0, 0, 5, 0, 4, 5], 50],
     [[22, 94, 188, 196, 95, 325, 213, 109, 180, 104, 15], 14649]]
     sage: List_to_Rep(TT[6][0])
     5*s[1, 1, 1, 1, 1, 1] + 4*s[2, 1, 1, 1, 1] + 5*s[2, 2, 2]

### Authors

* [Jonas Bergström](https://www.su.se/english/profiles/jonab-1.190994) 
* [Fabien Cléry](https://vivo.brown.edu/display/fclery) 
