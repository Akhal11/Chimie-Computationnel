***, pentanoic AH
print,basis,orbitals

basis, 6-31G(d)

   r2 =         1.23828 ang
   r3 =         1.50240 ang
   a3 =       120.52927 degree
   r4 =         1.51052 ang
   a4 =       110.44755 degree
   d4 =       154.97436 degree
   r5 =         1.26306 ang
   a5 =       114.99555 degree
   d5 =        99.20572 degree
   r6 =         1.26137 ang
   a6 =       115.55181 degree
   d6 =       280.19686 degree
   r7 =         1.09521 ang
   a7 =       109.13026 degree
   d7 =        34.50550 degree
   r8 =         1.09497 ang
   a8 =       108.42758 degree
   d8 =       276.47259 degree
   r9 =         1.50888 ang
   a9 =       119.84486 degree
   d9 =       186.60347 degree
   r10 =         1.09424 ang
   a10 =       109.35326 degree
   d10 =         0.06308 degree
   r11 =         1.09217 ang
   a11 =       110.44259 degree
   d11 =       241.25030 degree
   r12 =         1.09275 ang
   a12 =       109.82501 degree
   d12 =       118.84517 degree

nosym
geometry={
C
O, 1, r2
C, 1, r3, 2, a3
C, 3, r4, 1, a4, 2, d4
O, 4, r5, 3, a5, 1, d5
O, 4, r6, 3, a6, 1, d6
H, 3, r7, 1, a7, 2, d7
H, 3, r8, 1, a8, 2, d8
C, 1, r9, 2, a9, 3, d9
H, 9, r10, 1, a10, 2, d10
H, 9, r11, 1, a11, 2, d11
H, 9, r12, 1, a12, 2, d12
}

{rks,b3lyp;
 wf,54,1,0;
 cosmo,epsilon=80.36}

{optg}

{frequencies;print,hessian;
 thermo;print, thermo}
