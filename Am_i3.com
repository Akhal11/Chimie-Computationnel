***, pentanoic AH
print,basis,orbitals

basis, 6-31G(d)

   r2 =         1.53214 ang
   r3 =         1.52431 ang
   a3 =       115.23979 degree
   r4 =         1.09718 ang
   a4 =       107.56894 degree
   d4 =       237.62942 degree
   r5 =         1.09717 ang
   a5 =       107.56887 degree
   d5 =       122.37056 degree
   r6 =         1.52044 ang
   a6 =       111.57710 degree
   d6 =       180.00012 degree
   r7 =         1.09644 ang
   a7 =       109.97356 degree
   d7 =        58.76628 degree
   r8 =         1.09644 ang
   a8 =       109.97352 degree
   d8 =       301.23396 degree
   r9 =         1.09469 ang
   a9 =       111.00693 degree
   d9 =       299.73057 degree
   r10 =         1.09451 ang
   a10 =       110.25692 degree
   d10 =       179.99993 degree
   r11 =         1.09469 ang
   a11 =       111.00694 degree
   d11 =        60.26928 degree
   r12 =         1.26528 ang
   a12 =       114.02720 degree
   d12 =       179.99871 degree
   r13 =         1.26134 ang
   a13 =       116.67753 degree
   d13 =       359.99862 degree

nosym
geometry={
C
C, 1, r2
C, 2, r3, 1, a3
H, 2, r4, 1, a4, 3, d4
H, 2, r5, 1, a5, 3, d5
C, 3, r6, 2, a6, 1, d6
H, 3, r7, 2, a7, 1, d7
H, 3, r8, 2, a8, 1, d8
H, 6, r9, 3, a9, 2, d9
H, 6, r10, 3, a10, 2, d10
H, 6, r11, 3, a11, 2, d11
O, 1, r12, 2, a12, 3, d12
O, 1, r13, 2, a13, 3, d13
} 

{rks,b3lyp;
 wf,48,1,0;
 cosmo,epsilon=80.36}

{optg}

{frequencies;print,hessian;
 thermo;print, thermo}
