## Siegel Modular Forms of degree 2  and Level 2 - Dimensions
 
### Description

The code in this repository is based on the preprint 
*Dimension formulas for spaces of vector-valued Siegel modular forms of degree two and level two*
by Jonas Bergström, Fabien Cléry.

### Installation (SageMath)

To use the code you will need to have
[SageMath](https://www.sagemath.org) installed.

Then clone the repository via
```
git clone git@github.com:CleryFabien/SMF_Degree_2_Level_2_Dim.git
```
### Usage

Go to the newly created directory and from within Sage type: 
```
sage: cd Scripts
sage: load("Isotypical_Decomp_Gamma_2_Level_2_Vector_Valued.sage")
```

The procedure ``Isotypical_Decomp_Gamma_2_Level_2_Vector_Valued.sage`` can 
execute the following commands ((k,j) stands for the weight, a pair of 
non-negative integers):

``Mult_Irrep_Gamma_2_VV(k,j)`` returns a list of 8 elements. 
Each element of this list is in turn a list of 2 elements: i.d.(V) and dim V
where i.d.(V) is the isotypical decomposition of the space V and 
dim V its dimension. The irreducible representations of $`\mathfrak{S}_6`$ 
are ordered as in Table 1 of [BG](https://arxiv.org). The 8 elements 
of the list returned correspond to the spaces: 
$`M_{k,j}(\Gamma[2])`$, $`S_{k,j}(\Gamma[2])`$, $`E_{k,j}(\Gamma[2])`$, $`E^{(F)}_{k,j}(\Gamma[2])`$, 
$E^{(Q)}_{k,j}(\Gamma[2])$, 
$S^{(P)}_{k,j}(\Gamma[2])$, 
$S^{(Y)}_{k,j}(\Gamma[2])$ and 
$S^{(G)}_{k,j}(\Gamma[2])$.
 
Examples:
    
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



Citing this code
--

Please cite the following preprint if this code has been helpful in your research.

Jonas Bergström, Fabien Cléry

*Dimension formulas for spaces of vector-valued Siegel modular forms of degree two and level two*

Preprint available at [arXiv:](https://arxiv.org)


### Authors

* [Jonas Bergström](https://www.su.se/english/profiles/jonab-1.190994) 
* [Fabien Cléry](https://vivo.brown.edu/display/fclery) 
