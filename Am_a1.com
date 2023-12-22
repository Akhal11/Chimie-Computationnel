***, pentanoic AH
print,basis,orbitals

basis, 6-31G(d)

   r2 =         1.23829 ang
   r3 =         1.50448 ang
   a3 =       119.85660 degree
   r4 =         1.51043 ang
   a4 =       110.61774 degree
   d4 =       154.22954 degree
   r5 =         1.26315 ang
   a5 =       114.98848 degree
   d5 =       100.58245 degree
   r6 =         1.26145 ang
   a6 =       115.55995 degree
   d6 =       281.58745 degree
   r7 =         1.52291 ang
   a7 =       121.10067 degree
   d7 =       186.53481 degree
   r8 =         1.51971 ang
   a8 =       112.54703 degree
   d8 =         0.75316 degree
   r9 =         1.09419 ang
   a9 =       108.96157 degree
   d9 =       240.07241 degree
   r10 =         1.09498 ang
   a10 =       108.35120 degree
   d10 =       121.38733 degree
   r11 =         1.09529 ang
   a11 =       109.10970 degree
   d11 =        33.80754 degree
   r12 =         1.09499 ang
   a12 =       108.36828 degree
   d12 =       275.86021 degree
   r13 =         1.09504 ang
   a13 =       111.03195 degree
   d13 =       299.69559 degree
   r14 =         1.09434 ang
   a14 =       110.36369 degree
   d14 =       179.72548 degree
   r15 =         1.09501 ang
   a15 =       111.06133 degree
   d15 =        59.72669 degree

nosym
geometry={
C
O, 1, r2
C, 1, r3, 2, a3
C, 3, r4, 1, a4, 2, d4
O, 4, r5, 3, a5, 1, d5
O, 4, r6, 3, a6, 1, d6
C, 1, r7, 2, a7, 3, d7
C, 7, r8, 1, a8, 2, d8
H, 7, r9, 1, a9, 2, d9
H, 7, r10, 1, a10, 2, d10
H, 3, r11, 1, a11, 2, d11
H, 3, r12, 1, a12, 2, d12
H, 8, r13, 7, a13, 1, d13
H, 8, r14, 7, a14, 1, d14
H, 8, r15, 7, a15, 1, d15
}

{rks,b3lyp;
 wf,62,1,0;
 cosmo,epsilon=80.36}

{optg}

{frequencies;print,hessian;
 thermo;print, thermo}
