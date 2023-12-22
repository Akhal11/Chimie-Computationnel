***, pentanoic AH
print,basis,orbitals

basis, 6-31G(d)

   r2 =         1.23317 ang
   r3 =         1.49458 ang
   a3 =       122.95503 degree
   r4 =         1.51289 ang
   a4 =       109.52235 degree
   d4 =       149.02519 degree
   r5 =         1.26345 ang
   a5 =       115.60373 degree
   d5 =        46.04417 degree
   r6 =         1.26207 ang
   a6 =       115.19809 degree
   d6 =       224.44313 degree
   r7 =         1.09441 ang
   a7 =       109.16867 degree
   d7 =        26.95288 degree
   r8 =         1.09416 ang
   a8 =       108.64665 degree
   d8 =       267.81814 degree
   r9 =         1.10352 ang
   a9 =       119.54187 degree
   d9 =       188.57908 degree

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
H, 1, r9, 2, a9, 3, d9
}

{rks,b3lyp;
 wf,46,1,0;
 cosmo,epsilon=80.36}

{optg}

{frequencies;print,hessian;
 thermo;print, thermo}
