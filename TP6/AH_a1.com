***, pentanoic AH
print,basis,orbitals

basis, 6-31G(d)

   r2 =         1.51669 ang
   r3 =         1.23214 ang
   a3 =       121.59448 degree
   r4 =         1.50567 ang
   a4 =       117.57662 degree
   d4 =       180.71561 degree
   r5 =         1.09470 ang
   a5 =       108.79146 degree
   d5 =        35.31193 degree
   r6 =         1.49653 ang
   a6 =       113.50475 degree
   d6 =       273.40237 degree
   r7 =         1.09516 ang
   a7 =       107.85583 degree
   d7 =       152.32281 degree
   r8 =         1.21945 ang
   a8 =       125.40670 degree
   d8 =         1.62639 degree
   r9 =         1.35544 ang
   a9 =       112.51008 degree
   d9 =       179.80934 degree
   r10 =         0.97637 ang
   a10 =       114.87574 degree
   d10 =         1.49473 degree
   r11 =         1.51885 ang
   a11 =       110.28521 degree
   d11 =        49.72506 degree
   r12 =         1.07000 ang
   a12 =       109.26734 degree
   d12 =       289.60123 degree
   r13 =         1.07000 ang
   a13 =       108.99591 degree
   d13 =       169.34540 degree
   r14 =         1.07000 ang
   a14 =       109.47100 degree
   d14 =       299.62034 degree
   r15 =         1.07000 ang
   a15 =       109.47128 degree
   d15 =       179.62037 degree
   r16 =         1.07000 ang
   a16 =       109.47135 degree
   d16 =        59.62044 degree

nosym
geometry={
C
C, 1, r2
O, 2, r3, 1, a3
C, 2, r4, 1, a4, 3, d4
H, 4, r5, 2, a5, 1, d5
C, 4, r6, 2, a6, 1, d6
H, 4, r7, 2, a7, 1, d7
O, 6, r8, 4, a8, 2, d8
O, 6, r9, 4, a9, 2, d9
H, 9, r10, 6, a10, 4, d10
C, 1, r11, 2, a11, 3, d11
H, 1, r12, 2, a12, 3, d12
H, 1, r13, 2, a13, 3, d13
H, 11, r14, 1, a14, 2, d14
H, 11, r15, 1, a15, 2, d15
H, 11, r16, 1, a16, 2, d16
}

{rks,b3lyp;
 cosmo,epsilon=80.36}

{optg}

{frequencies;print,hessian;
 thermo;print, thermo}
