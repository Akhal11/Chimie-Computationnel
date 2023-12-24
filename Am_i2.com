***, double Am
print,basis,orbitals

basis, 6-31G(d)

   r2 =         1.52286 ang
   r3 =         1.51787 ang
   a3 =       109.45712 degree
   r4 =         1.52490 ang
   a4 =       118.12884 degree
   d4 =       323.97583 degree
   r5 =         1.51991 ang
   a5 =       112.64907 degree
   d5 =       186.65248 degree
   r6 =         1.09409 ang
   a6 =       109.04810 degree
   d6 =        66.00906 degree
   r7 =         1.09508 ang
   a7 =       108.25519 degree
   d7 =       307.30794 degree
   r8 =         1.09509 ang
   a8 =       111.00087 degree
   d8 =       299.35832 degree
   r9 =         1.09431 ang
   a9 =       110.35193 degree
   d9 =       179.42849 degree
   r10 =         1.09500 ang
   a10 =       111.11278 degree
   d10 =        59.41127 degree
   r11 =         1.52290 ang
   a11 =       110.50913 degree
   d11 =       123.49864 degree
   r12 =         1.09729 ang
   a12 =       109.11514 degree
   d12 =       243.11925 degree
   r13 =         1.09523 ang
   a13 =       111.15018 degree
   d13 =        51.02728 degree
   r14 =         1.09604 ang
   a14 =       111.79007 degree
   d14 =       290.24004 degree
   r15 =         1.09564 ang
   a15 =       110.63143 degree
   d15 =       170.84048 degree
   r16 =         1.26506 ang
   a16 =       114.40908 degree
   d16 =        99.01593 degree
   r17 =         1.26119 ang
   a17 =       116.59055 degree
   d17 =       280.99437 degree
   r18 =         1.23829 ang
   a18 =       120.94552 degree
   d18 =       150.73993 degree

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
O, 1, r17, 2, a17, 3, d17
O, 3, r18, 2, a18, 1, d18
}

{rks,b3lyp;
 wf,70,1,0;
 cosmo,epsilon=80.36}

{optg}

{frequencies;print,hessian;
 thermo;print, thermo}
