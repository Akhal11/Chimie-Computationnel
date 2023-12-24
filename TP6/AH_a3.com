***, pentanoic AH
print,basis,orbitals

basis, 6-31G(d)

   r2 =         1.23299 ang
   r3 =         1.52361 ang
   a3 =       122.00485 degree
   r4 =         1.09733 ang
   a4 =       105.80307 degree
   d4 =       248.01965 degree
   r5 =         1.50902 ang
   a5 =       112.94944 degree
   d5 =       129.93690 degree
   r6 =         1.52759 ang
   a6 =       111.03097 degree
   d6 =         6.53305 degree
   r7 =         1.22061 ang
   a7 =       125.02036 degree
   d7 =       345.66212 degree
   r8 =         1.35446 ang
   a8 =       113.46531 degree
   d8 =       164.67645 degree
   r9 =         0.97615 ang
   a9 =       115.34983 degree
   d9 =         1.31654 degree
   r10 =         1.50971 ang
   a10 =       120.14821 degree
   d10 =       183.87272 degree
   r11 =         1.09402 ang
   a11 =       109.28792 degree
   d11 =        20.28553 degree
   r12 =         1.09152 ang
   a12 =       110.23927 degree
   d12 =       260.58535 degree
   r13 =         1.09305 ang
   a13 =       109.99275 degree
   d13 =       138.71172 degree
   r14 =         1.09543 ang
   a14 =       111.08156 degree
   d14 =       303.35707 degree
   r15 =         1.09495 ang
   a15 =       111.54600 degree
   d15 =       183.26570 degree
   r16 =         1.09612 ang
   a16 =       111.10283 degree
   d16 =        63.35074 degree

nosym
geometry={
C
O, 1, r2
C, 1, r3, 2, a3
H, 3, r4, 1, a4, 2, d4
C, 3, r5, 1, a5, 2, d5
C, 3, r6, 1, a6, 2, d6
O, 5, r7, 3, a7, 1, d7
O, 5, r8, 3, a8, 1, d8
H, 8, r9, 5, a9, 3, d9
C, 1, r10, 2, a10, 3, d10
H, 10, r11, 1, a11, 2, d11
H, 10, r12, 1, a12, 2, d12
H, 10, r13, 1, a13, 2, d13
H, 6, r14, 3, a14, 1, d14
H, 6, r15, 3, a15, 1, d15
H, 6, r16, 3, a16, 1, d16
}


{rks,b3lyp;
 cosmo,epsilon=80.36}

{optg}

{frequencies;print,hessian;
 thermo;print, thermo}
