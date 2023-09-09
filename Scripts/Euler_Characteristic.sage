Sym = SymmetricFunctions(QQ)
s = SymmetricFunctions(QQ).schur()
p = SymmetricFunctions(QQ).power()



def stepx(x):
     if x == 0: return 1
     return 0
     
def stepIx(x):
     if x == 0: return 0
     return 1     
      
def htop1(k):
      p = ['p%d' % (i) for i in range(1,k+1)]
      R = PolynomialRing(QQ,p)
      L = [R.gen(i) for i in range(k)]
      E.<t> = PowerSeriesRing(R,default_prec=k+1)
      P = sum([(t^(n+1)/(n+1))*L[n] for n in range(k)])
      e = exp(P)
      V = e.list()
      c = V[k]
      return c

def htop(k):
    if k<0: return 0
    if k == 0: return 1
    return htop1(k)

def List2top(L,i):
    l = len(L)
    LL = [htop(L[i-1]-i+1+j)+htop(L[i-1]-i+1-j) for j in range(1,l)]
    return LL

def List1top(L):
    l = len(L)
    LL = [[htop(L[i-1]-i+1)]+List2top(L,i) for i in range(1,l+1)]
    return LL

def lirr_p(L):
    return matrix(List1top(L)).determinant()

def htoe1(g,k):
      e = ['e%d' % (i) for i in range(1,2*g+1)]
      R = PolynomialRing(QQ,e)
      L = [R.gen(i) for i in range(2*g)]
      E.<t> = PowerSeriesRing(R,default_prec=k+1)
      P1 = sum([(-1)^i*L[i-1]*t^i for i in range(1,g+1)])
      P2 = sum([(-1)^i*L[2*g-i-1]*t^i for i in range(g+1,2*g)])
      P = 1+P1+P2+t^(2*g)
      Q = 1/P
      V = Q.list()
      c = V[k]
      return c

def htoe(g,k):
    if k<0: return 0
    if g == 0 and k >=1 : return 0
    return htoe1(g,k)

def List2toe(L,i):
    l = len(L)
    LL = [htoe(l,L[i-1]-i+1+j)+htoe(l,L[i-1]-i+1-j) for j in range(1,l)]
    return LL

def List1toe(L):
    l = len(L)
    LL = [[htoe(l,L[i-1]-i+1)]+List2toe(L,i) for i in range(1,l+1)]
    return LL

def lirr_e(L):
    return matrix(List1toe(L)).determinant()

K.<I> = NumberField(x^2 + 1)
R.<z> = K[]
F6.<r6> = NumberField(z^2-z+1)
F8.<r8> = NumberField(z^2+I)
F10.<r10> = NumberField(z^4 - z^3 + z^2 - z + 1)
F12.<r12> = NumberField(z^2 + I*z - 1)

Geul_h2W = [-1,3,-2,-2,1,1,1]

Geig_h2W = [[[1, 1]], [[I, I], [1, 1]], [[I, I], [I, 1], [1, 1], [I, I]], [[I, I], [r6^2, 1], [1, 1], [I, I], [I, I], [r6, 1]], [[I, I], [r8, I], [1, 1], [r6^5, 1], [r6^5, 1], [I, 1], [r8, I], [r8^3, I], [r8, I], [r6, 1], [r8, I], [r8^3, I],[r6^2, 1], [r6, 1], [r6^2, 1], [I, 1], [I, I], [I, I], [r6, 1], [I, 1], [I, I], [I, I], [I, I], [r6, 1]], [[I, I], [r12^5, I], [1, 1], [I, 1], [I, 1], [r6^2, 1], [r12, I], [I, I], [I, I], [I, I], [r6, 1], [I, 1]], [[r10, r10^3], [r10^2, r10^6], [r10^3, r10^9], [r10^4, r10^2], [1, 1]]]


RR.<p1,p2,p3,p4,p5,p6> = PolynomialRing(QQ)

ActRam_h2W = [[p1^6], [p2^3, p1^6], [p2^3, p1^2*p2^2, p1^6, p2^3], [p2^3, p3^2, p1^6, p2^3, p2^3, p3^2], [p2^3, p1^2*p4, p1^6, p3^2, p3^2, p1^2*p2^2, p1^2*p4, p1^2*p4, p1^2*p4, p3^2, p1^2*p4, p1^2*p4, p3^2, p3^2, p3^2, p1^2*p2^2, p2^3, p2^3, p3^2, p1^2*p2^2, p2^3, p2^3, p2^3, p3^2], [p2^3, p6, p1^6, p1^2*p2^2, p1^2*p2^2, p3^2, p6, p2^3, p2^3, p2^3, p3^2, p1^2*p2^2],[p1*p5, p1*p5, p1*p5, p1*p5, p1^6]
]

def MakeList(L):
    if len(L) >= 2: return L
    if len(L) == 1: return L+[0]
    if len(L) == 0: return [0,0]

def Not_in(L,a):
    if a in L: 
       return False
    return True

def Make_pol(L):
    A = MakeList(L)
    pol = lirr_e(A)
    return pol

def Make_es(L):
    es = [L[0]*L[1]+L[1]/L[0]+L[0]/L[1]+1/(L[0]*L[1]), 2+L[0]^2+L[1]^2+1/L[0]^2+1/L[1]^2]
    return es


Dict_Eul_hyp2W = {'[1, 1]': [4, 6],'[I, I]': [0, -2], '[I, 1]': [0, 2],'[r6 - 1, 1]': [-2, 3], '[r6, 1]': [2, 3],
 '[r8, I]': [0, 0], '[-r6 + 1, 1]': [2, 3], '[-I*r8, I]': [0, 0], '[-r12 - I, I]': [0, 1], '[r12, I]': [0, 1],
 '[r10, r10^3]': [-1, 1], '[r10^2, -r10]': [-1, 1], '[r10^3, -r10^3 + r10^2 - r10 + 1]': [-1, 1], '[r10^3 - r10^2 + r10 - 1, r10^2]': [-1,1]}


def Eul_hyp2W(A):
    P = Make_pol(A)
    S = sum([Geul_h2W[i]/len(Geig_h2W[i])*ActRam_h2W[i][j]*QQ(P(e1=Dict_Eul_hyp2W[str(Geig_h2W[i][j])][0],e2=Dict_Eul_hyp2W[str(Geig_h2W[i][j])][1])) for i in range(7) for j in range(len(Geig_h2W[i]))])
    return S
 



'''
The A11W case.
Consider pairs of curves from the genus one case.
Seven cases: distinct curves of type C2, equal curves of type C2 (then with extra involution that swithes the individual H^1 of the curves), two curves of type C4 (extra involution), two curves of type C6 (extra involution), curve of type C2 and curve of type C4, curve of type C2 and curve of type C6,curve of type C4 and curve of type C6. 
'''

def use_invol(L):
    return [L,[-L[0],-L[1],L[2],L[3]],[L[0],L[1],-L[2],-L[3]],[-L[0],-L[1],-L[2],-L[3]]]

Geul_A11W = [1,-1,1,1,-1,-1,1]

Geig_A11W = [
use_invol([1,1,1,1])
,
use_invol([1,1,1,1])+
[[1,-1,1,-1]]+
[[I,-I,I,-I]]+
[[I,-I,I,-I]]+
[[1,-1,1,-1]]
,
use_invol([1,1,1,1])+
use_invol([I,-I,1,1])+
use_invol([1,1,I,-I])+
use_invol([I,-I,I,-I])+
[[1,-1,1,-1]]+
[[I,-I,I,-I]]+
[[I,-I,I,-I]]+
[[1,-1,1,-1]]+
[[r8,r8^3,r8^5,r8^7]]+
[[r8,r8^3,r8^5,r8^7]]+
[[r8,r8^3,r8^5,r8^7]]+
[[r8,r8^3,r8^5,r8^7]]+
[[r8,r8^3,r8^5,r8^7]]+
[[r8,r8^3,r8^5,r8^7]]+
[[r8,r8^3,r8^5,r8^7]]+
[[r8,r8^3,r8^5,r8^7]]+
[[I,-I,I,-I]]+
[[1,-1,1,-1]]+
[[1,-1,1,-1]]+
[[I,-I,I,-I]]
,
use_invol([1,1,1,1])+
use_invol([r6,r6^5,1,1])+
use_invol([r6^2,r6^4,1,1])+
use_invol([1,1,r6,r6^5])+
use_invol([1,1,r6^2,r6^4])+
use_invol([r6,r6^5,r6,r6^5])+
use_invol([r6^2,r6^4,r6^2,r6^4])+
use_invol([r6,r6^5,r6^2,r6^4])+
use_invol([r6^2,r6^4,r6,r6^5])+
[[1,-1,1,-1]]+
[[I,-I,I,-I]]+
[[I,-I,I,-I]]+
[[1,-1,1,-1]]+
[[r6,r6^5,r6^2,r6^4]]+
[[r12,r12^5,r12^7,r12^11]]+
[[r12,r12^5,r12^7,r12^11]]+
[[r6,r6^5,r6^2,r6^4]]+
[[r12,r12^5,r12^7,r12^11]]+
[[r6,r6^5,r6^2,r6^4]]+
[[r6,r6^5,r6^2,r6^4]]+
[[r12,r12^5,r12^7,r12^11]]+
[[r6,r6^5,r6^2,r6^4]]+
[[r12,r12^5,r12^7,r12^11]]+
[[r12,r12^5,r12^7,r12^11]]+
[[r6,r6^5,r6^2,r6^4]]+
[[r6,r6^5,r6^2,r6^4]]+
[[r12,r12^5,r12^7,r12^11]]+
[[r12,r12^5,r12^7,r12^11]]+
[[r6,r6^5,r6^2,r6^4]]+
[[r6,r6^5,r6^2,r6^4]]+
[[r12,r12^5,r12^7,r12^11]]+
[[r12,r12^5,r12^7,r12^11]]+
[[r6,r6^5,r6^2,r6^4]]+
[[r6,r6^5,r6^2,r6^4]]+
[[r12,r12^5,r12^7,r12^11]]+
[[r12,r12^5,r12^7,r12^11]]+
[[r6,r6^5,r6^2,r6^4]]+
[[I,-I,I,-I]]+
[[1,-1,1,-1]]+
[[1,-1,1,-1]]+
[[I,-I,I,-I]]+
[[I,-I,I,-I]]+
[[1,-1,1,-1]]+
[[1,-1,1,-1]]+
[[I,-I,I,-I]]
, 
use_invol([1,1,1,1])+
use_invol([1,1,I,-I])
,
use_invol([1,1,1,1])+
use_invol([1,1,r6,r6^5])+
use_invol([1,1,r6^2,r6^4])
,
use_invol([1,1,1,1])+
use_invol([1,1,r6,r6^5])+
use_invol([1,1,r6^2,r6^4])+
use_invol([I,-I,1,1])+
use_invol([I,-I,r6,r6^5])+
use_invol([I,-I,r6^2,r6^4]) 
]

ActRam_A11W = [
[p1^6 for i in range(1,5)],
[p1^6 for i in range(1,5)]+[p2^3 for i in range(1,5)],
[p1^6 for i in range(1,5)]+[p1^4*p2 for i in range(1,9)]+[p1^2*p2^2 for i in range(1,5)]
+[p2^3 for i in range(1,5)]+[p2*p4 for i in range(1,9)]+[p2^3 for i in range(1,5)],
[p1^6 for i in range(1,5)]+[p1^3*p3 for i in range(1,17)]+[p3^2 for i in range(1,17)]+[p2^3 for i in range(1,5)]+[p6 for i in range(1,25)]+[p2^3 for i in range(1,9)],
[p1^6 for i in range(1,5)]+[p1^4*p2 for i in range(1,5)],
[p1^6 for i in range(1,5)]+[p1^3*p3 for i in range(1,9)],
[p1^6 for i in range(1,5)]+[p1^3*p3 for i in range(1,9)]+[p1^4*p2 for i in range(1,5)]+[p1*p2*p3 for i in range(1,9)]]

def Make_es11(L):
    es = [L[0]+L[1]+L[2]+L[3],L[0]*L[1]+L[0]*L[2]+L[0]*L[3]+L[1]*L[2]+L[1]*L[3]+L[2]*L[3]]
    return es


Dict_Eul_A11W = {'[1, 1, 1, 1]': [4, 6], '[-1, -1, 1, 1]': [0, -2], '[1, 1, -1, -1]': [0, -2],'[-1, -1, -1, -1]': [-4, 6],'[1, -1, 1, -1]': [0, -2],
 '[I, -I, I, -I]': [0, 2], '[I, -I, 1, 1]': [2, 2], '[-I, I, 1, 1]': [2, 2], '[I, -I, -1, -1]': [-2, 2], '[-I, I, -1, -1]': [-2, 2], '[1, 1, I, -I]': [2, 2], '[-1, -1, I, -I]': [-2, 2], '[1, 1, -I, I]': [2, 2], '[-1, -1, -I, I]': [-2, 2], '[-I, I, I, -I]': [0, 2], '[I, -I, -I, I]': [0, 2],
 '[-I, I, -I, I]': [0, 2],'[r8, -I*r8, -r8, I*r8]': [0, 0],'[r6, -r6 + 1, 1, 1]': [3, 4], '[-r6, r6 - 1, 1, 1]': [1, 0],'[r6, -r6 + 1, -1, -1]': [-1, 0],'[-r6, r6 - 1, -1, -1]': [-3, 4],'[r6 - 1, -r6, 1, 1]': [1, 0],'[-r6 + 1, r6, 1, 1]': [3, 4],'[r6 - 1, -r6, -1, -1]': [-3, 4],'[-r6 + 1, r6, -1, -1]': [-1, 0],'[1, 1, r6, -r6 + 1]': [3, 4],'[-1, -1, r6, -r6 + 1]': [-1, 0],'[1, 1, -r6, r6 - 1]': [1, 0],'[-1, -1, -r6, r6 - 1]': [-3, 4],'[1, 1, r6 - 1, -r6]': [1, 0],'[-1, -1, r6 - 1, -r6]': [-3, 4], '[1, 1, -r6 + 1, r6]': [3, 4],
 '[-1, -1, -r6 + 1, r6]': [-1, 0], '[r6, -r6 + 1, r6, -r6 + 1]': [2, 3], '[-r6, r6 - 1, r6, -r6 + 1]': [0, 1], '[r6, -r6 + 1, -r6, r6 - 1]': [0, 1], '[-r6, r6 - 1, -r6, r6 - 1]': [-2, 3], '[r6 - 1, -r6, r6 - 1, -r6]': [-2, 3], '[-r6 + 1, r6, r6 - 1, -r6]': [0, 1], '[r6 - 1, -r6, -r6 + 1, r6]': [0, 1], '[-r6 + 1, r6, -r6 + 1, r6]': [2, 3], '[r6, -r6 + 1, r6 - 1, -r6]': [0, 1], '[-r6, r6 - 1, r6 - 1, -r6]': [-2, 3], '[r6, -r6 + 1, -r6 + 1, r6]': [2, 3], '[-r6, r6 - 1, -r6 + 1, r6]': [0, 1], '[r6 - 1, -r6, r6, -r6 + 1]': [0, 1], '[-r6 + 1, r6, r6, -r6 + 1]': [2, 3], '[r6 - 1, -r6, -r6, r6 - 1]': [-2, 3], '[-r6 + 1, r6, -r6, r6 - 1]': [0, 1], '[r12, -r12 - I, -r12, r12 + I]': [0, -1], '[I, -I, r6, -r6 + 1]': [1, 2], '[-I, I, r6, -r6 + 1]': [1, 2], '[I, -I, -r6, r6 - 1]': [-1, 2], '[-I, I, -r6, r6 - 1]': [-1, 2], '[I, -I, r6 - 1, -r6]': [-1, 2], '[-I, I, r6 - 1, -r6]': [-1, 2],'[I, -I, -r6 + 1, r6]': [1, 2],'[-I, I, -r6 + 1, r6]': [1, 2]}



def Eul_A11W(A):
    P = Make_pol(A)
    S = sum([Geul_A11W[i]/len(Geig_A11W[i])*ActRam_A11W[i][j]*QQ(P(e1=Dict_Eul_A11W[str(Geig_A11W[i][j])][0],e2=Dict_Eul_A11W[str(Geig_A11W[i][j])][1])) for i in range(7) for j in range(len(Geig_A11W[i]))])
    return S

def Eul_A2W(A): 
    S = Eul_A11W(A)+Eul_hyp2W(A)
    SS = S(p1=p[1],p2=p[2],p3=p[3],p4=p[4],p5=p[5],p6=p[6])
    return s(SS)

load('DimFormulaPlusMinusNewFormGamma0.sage')
 

def Eisenstein_ML(l,m):
    """
    l positive integer, m non negative integer
    """
    A = s[3,3]+s[4,1,1] 
    B = s[3,2,1]+s[5,1]+s[4,2]  
    C = s[6]+s[2,2,2]+s[4,2]
    AA = s[3,1,1,1]+s[2,1,1,1,1] 
    BB = s[3,2,1]+s[2,2,2]+s[4,2]  
    CC = s[6]+s[5,1]+s[4,2]
    d4 = Gamma0(4).dimension_new_cusp_forms(l+m+4)
    d2 = Gamma0(2).dimension_new_cusp_forms(l+m+4)
    d1 = Gamma0(1).dimension_cusp_forms(l+m+4)
    dd4 = Gamma0(4).dimension_new_cusp_forms(l-m+2)
    dd2 = Gamma0(2).dimension_new_cusp_forms(l-m+2)
    dd1 = Gamma0(1).dimension_cusp_forms(l-m+2)
    if l == m:
       return -C-d4*A-(d2+d1)*B-d1*C
    return (dd4-d4)*A+(dd2+dd1-(d2+d1))*B+(dd1-d1)*C
    
def Eisenstein(l,m):
    """
    l positive integer, m non negative integer
    """
    AA = s[3,1,1,1]+s[2,1,1,1,1] 
    BB = s[3,2,1]+s[2,2,2]+s[4,2]  
    CC = s[6]+s[5,1]+s[4,2]
    d4 = Gamma0(4).dimension_new_cusp_forms(l+3)
    d2 = Gamma0(2).dimension_new_cusp_forms(l+3)
    d1 = Gamma0(1).dimension_cusp_forms(l+3)
    dd4 = Gamma0(4).dimension_new_cusp_forms(m+2)
    dd2 = Gamma0(2).dimension_new_cusp_forms(m+2)
    dd1 = Gamma0(1).dimension_cusp_forms(m+2)
    if m == 0:  
       return Eisenstein_ML(l,0)+BB-CC
    if (m % 2) == 0:
       return Eisenstein_ML(l,m)+BB+CC+AA*dd4*2+BB*dd2*2+(BB+CC)*dd1*2
    return Eisenstein_ML(l,m)-(AA*d4*2+BB*d2*2+(BB+CC)*d1*2) 

'''
Warning: The definitions of A, B and C are different of those in the paper.
We have (on the left, the notation here, on the right those of the paper):
A = C'
B = B'
C = A' and also 
AA = C
BB = B 
CC = A
'''

def Endoscopy(l,m):
    """
    l positive integer, m non negative integer
    """
    d4 = Gamma0(4).dimension_new_cusp_forms(l+m+4)
    d2 = Gamma0(2).dimension_new_cusp_forms(l+m+4)
    d1 = Gamma0(1).dimension_cusp_forms(l+m+4)
    d2p = dimension_new_cusp_forms_plus_level_2(l+m+4)
    d2m = dimension_new_cusp_forms_minus_level_2(l+m+4)
    dd4 = Gamma0(4).dimension_new_cusp_forms(l-m+2)
    dd2 = Gamma0(2).dimension_new_cusp_forms(l-m+2)
    dd1 = Gamma0(1).dimension_cusp_forms(l-m+2)
    dd2p = dimension_new_cusp_forms_plus_level_2(l-m+2)
    dd2m = dimension_new_cusp_forms_minus_level_2(l-m+2)
    s6 = -2*d1*dd1*s[6]
    s51 = (-2*d1*dd2-2*d2m*dd2p-2*d2p*dd2m-2*(d2+d1)*dd1)*s[5,1]
    s42 = (-2*d1*dd2-2*d2p*dd2p-2* d2m*dd2m-2*(d2+2*d1)*dd1)*s[4,2]
    s411 = (-2*(d2+d1)*dd4-2*d4*dd2-2*d4*dd1)*s[4,1,1]
    s33 = (-2*dd1*d4-2*d1*dd4)*s[3,3]
    s321 = (-2*(d2+d1)*dd2-2*(d2+d1)*dd1)*s[3,2,1]
    s3111 = -2*d4*dd4*s[3,1,1,1]
    s222 = -2*d1*dd1*s[2,2,2]
    if l == m:
       if (l % 2) == 1:
           return 2*(d2p*s[1,1,1,1,1,1]+d4*s[3,3]+d2m*s[5,1])
       return 2*((d2m+d1)*s[2,2,2]+(d2p+d1)*s[4,2]+d1*s[6])
    return s6+s51+s42+s411+s33+s321+s3111+s222

def Saito_Kurokawa(l,m):
    """
    l positive integer, m non negative integer
    """
    d4 = Gamma0(4).dimension_new_cusp_forms(l+m+4)
    d2 = Gamma0(2).dimension_new_cusp_forms(l+m+4)
    d1 = Gamma0(1).dimension_cusp_forms(l+m+4)
    d2p = dimension_new_cusp_forms_plus_level_2(l+m+4)
    d2m = dimension_new_cusp_forms_minus_level_2(l+m+4)
    dd2p = dimension_new_cusp_forms_plus_level_2(l-m+2)
    dd2m = dimension_new_cusp_forms_minus_level_2(l-m+2)
    dd4 = Gamma0(4).dimension_new_cusp_forms(l-m+2)
    dd2 = Gamma0(2).dimension_new_cusp_forms(l-m+2)
    dd1 = Gamma0(1).dimension_cusp_forms(l-m+2)
    if l == m:
       if (l % 2) == 1:
           return -(s[4,2]*d2p*2+s[2,2,2]*d2m*2+(s[2,2,2]+s[4,2]+s[6])*d1*2)
       return -(s[3,3]*d4*2+s[5,1]*d2m*2+s[1,1,1,1,1,1]*d2p*2)
    return  -2*dd4*s[2,1,1,1,1]*d4-2*(s[2,2,2]*dd2p+s[1,1,1,1,1,1]*dd2m)*d2p-2*(s[2,2,2]*dd2m+s[1,1,1,1,1,1]*dd2p)*d2m

def Eul_A2Wcusp(l,m,switch): 
    """
    l positive integer, m non negative integer
    """
    Eul = Eul_A2W([l,m])
    if switch == 1: 
       return (-Eul+Eisenstein(l,m)+Endoscopy(l,m)+Saito_Kurokawa(l,m))/4
    return (-Eul+Eisenstein(l,m)+Endoscopy(l,m)-Saito_Kurokawa(l,m))/4

 
def Make_Vector_From_Irrep(P):
    c6 = s(P).coefficient([6])
    c51 = s(P).coefficient([5,1])
    c42 = s(P).coefficient([4,2])
    c411 = s(P).coefficient([4,1,1])
    c33 = s(P).coefficient([3,3])
    c321 = s(P).coefficient([3,2,1])
    c3111 = s(P).coefficient([3,1,1,1])
    c222 = s(P).coefficient([2,2,2])
    c2211 = s(P).coefficient([2,2,1,1])
    c21111 = s(P).coefficient([2,1,1,1,1])
    c111111 = s(P).coefficient([1,1,1,1,1,1])
    V = [c6,c51,c42,c411,c33,c321,c3111,c222,c2211,c21111,c111111]
    return V


def Decomposition_All_Cusp_forms(k,j):
    """
    k>=3 (integer), j non negative even integer
    """
    C = Eul_A2Wcusp(j+k-3,k-3,0)
    CC = Make_Vector_From_Irrep(C)
    return CC

def Decomposition_General_Type_Cusp_forms(k,j):
    """
    k>=3 (integer), j non negative even integer
    """
    C = Eul_A2Wcusp(j+k-3,k-3,1)
    CC = Make_Vector_From_Irrep(C)
    return CC
    
   
