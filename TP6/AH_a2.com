***, pentanoic AH
print,basis,orbitals

basis, 6-31G(d)

   r2 =         1.22906 ang
   r3 =         1.49854 ang
   a3 =       122.36251 degree
   r4 =         1.09389 ang
   a4 =       107.92063 degree
   d4 =       263.40030 degree
   r5 =         1.49682 ang
   a5 =       112.53568 degree
   d5 =       143.69488 degree
   r6 =         1.09438 ang
   a6 =       108.37843 degree
   d6 =        22.85114 degree
   r7 =         1.22076 ang
   a7 =       124.71487 degree
   d7 =         9.18550 degree
   r8 =         1.35275 ang
   a8 =       113.03567 degree
   d8 =       187.34153 degree
   r9 =         0.97685 ang
   a9 =       114.91928 degree
   d9 =         1.80487 degree
   r10 =         1.10389 ang
   a10 =       120.64036 degree
   d10 =       187.31683 degree

nosym
geometry={
C
O, 1, r2
C, 1, r3, 2, a3
H, 3, r4, 1, a4, 2, d4
C, 3, r5, 1, a5, 2, d5
H, 3, r6, 1, a6, 2, d6
O, 5, r7, 3, a7, 1, d7
O, 5, r8, 3, a8, 1, d8
H, 8, r9, 5, a9, 3, d9
H, 1, r10, 2, a10, 3, d10
}

{rks,b3lyp;
 cosmo,epsilon=80.36}

{optg}

{frequencies;print,hessian;
 thermo;print, thermo}
