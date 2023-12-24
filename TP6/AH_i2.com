***, double AH
print,basis,orbitals

basis, 6-31G(d)

   r2 =         1.50545 ang
   r3 =         1.52263 ang
   a3 =       111.58517 degree
   r4 =         1.52286 ang
   a4 =       116.41070 degree
   d4 =       284.36754 degree
   r5 =         1.51856 ang
   a5 =       112.56079 degree
   d5 =       173.63449 degree
   r6 =         1.09369 ang
   a6 =       109.14228 degree
   d6 =        52.40276 degree
   r7 =         1.09508 ang
   a7 =       107.94089 degree
   d7 =       294.71550 degree
   r8 =         1.09506 ang
   a8 =       110.97723 degree
   d8 =       300.48546 degree
   r9 =         1.09436 ang
   a9 =       110.38250 degree
   d9 =       180.46351 degree
   r10 =         1.09502 ang
   a10 =       111.11632 degree
   d10 =        60.48047 degree
   r11 =         1.52751 ang
   a11 =       110.92478 degree
   d11 =       123.94665 degree
   r12 =         1.09692 ang
   a12 =       107.97201 degree
   d12 =       242.79658 degree
   r13 =         1.09528 ang
   a13 =       111.20582 degree
   d13 =        63.73771 degree
   r14 =         1.09603 ang
   a14 =       111.28207 degree
   d14 =       303.91462 degree
   r15 =         1.09541 ang
   a15 =       111.09339 degree
   d15 =       183.65680 degree
   r16 =         1.34857 ang
   a16 =       113.07058 degree
   d16 =       182.24006 degree
   r17 =         0.98118 ang
   a17 =       104.42650 degree
   d17 =       180.94232 degree
   r18 =         1.21950 ang
   a18 =       127.02759 degree
   d18 =         6.37336 degree
   r19 =         1.23218 ang
   a19 =       121.82813 degree
   d19 =       106.56898 degree

nosym
geometry={
C
C, 1, r2
C, 2, r3, 1, a3
C, 3, r4, 2, a4, 1, d4
C, 4, r5, 3, a5, 2, d5
H, 4, r6, 3, a6, 2, d6
H, 4, r7, 3, a7, 2, d7
H, 5, r8, 4, a8, 3, d8
H, 5, r9, 4, a9, 3, d9
H, 5, r10, 4, a10, 3, d10
C, 2, r11, 1, a11, 3, d11
H, 2, r12, 1, a12, 3, d12
H, 11, r13, 2, a13, 1, d13
H, 11, r14, 2, a14, 1, d14
H, 11, r15, 2, a15, 1, d15
O, 1, r16, 2, a16, 3, d16
H, 16, r17, 1, a17, 2, d17
O, 1, r18, 2, a18, 3, d18
O, 3, r19, 2, a19, 1, d19
}

{rks,b3lyp;
 cosmo,epsilon=80.36}

{optg}

{frequencies;print,hessian;
 thermo;print, thermo}
