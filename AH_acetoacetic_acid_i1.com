***, pentanoic AH
print,basis,orbitals

basis, 6-31G(d)

   r2 =         1.23327 ang
   r3 =         1.50621 ang
   a3 =       120.46255 degree
   r4 =         1.49790 ang
   a4 =       114.77592 degree
   d4 =       125.94091 degree
   r5 =         1.21989 ang
   a5 =       125.41166 degree
   d5 =         9.89763 degree
   r6 =         1.35438 ang
   a6 =       112.71757 degree
   d6 =       187.92511 degree
   r7 =         0.97664 ang
   a7 =       114.92136 degree
   d7 =         2.57876 degree
   r8 =         1.50668 ang
   a8 =       120.88584 degree
   d8 =       183.04029 degree
   r9 =         1.09385 ang
   a9 =       109.26672 degree
   d9 =        25.48226 degree
   r10 =         1.09181 ang
   a10 =       110.01264 degree
   d10 =       265.64945 degree
   r11 =         1.09308 ang
   a11 =       110.09307 degree
   d11 =       143.95122 degree
   r12 =         1.09603 ang
   a12 =       107.60906 degree
   d12 =         5.47153 degree
   r13 =         1.09458 ang
   a13 =       108.10910 degree
   d13 =       248.02422 degree

nosym
geometry={
C
O, 1, r2
C, 1, r3, 2, a3
C, 3, r4, 1, a4, 2, d4
O, 4, r5, 3, a5, 1, d5
O, 4, r6, 3, a6, 1, d6
H, 6, r7, 4, a7, 3, d7
C, 1, r8, 2, a8, 3, d8
H, 8, r9, 1, a9, 2, d9
H, 8, r10, 1, a10, 2, d10
H, 8, r11, 1, a11, 2, d11
H, 3, r12, 1, a12, 2, d12
H, 3, r13, 1, a13, 2, d13
}

{rks,b3lyp;
 cosmo,epsilon=80.36}

{optg}

{frequencies;print,hessian;
 thermo;print, thermo}
