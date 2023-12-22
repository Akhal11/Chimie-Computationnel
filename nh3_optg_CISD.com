***, ammoniac
print,basis,orbitals

basis, 6-31G(d)

   r2 =         1.01900 ang
   r3 =         1.01900 ang
   a3 =       105.99800 degree
   r4 =         1.01900 ang
   a4 =       105.99800 degree
   d4 =       247.63782 degree

nosym
geometry={
N
H, 1, r2
H, 1, r2, 2, a3
H, 1, r2, 2, a3, 3, d4
}

hf
cisd

optg
{frequencies;print,frequencies}
