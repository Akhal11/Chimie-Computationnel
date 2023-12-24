***, ammoniac
print,basis,orbitals

basis, AVTZ

r=[0.7,0.8,0.9,1.0,1.1,1.2,1.4,1.6,1.8,2.0,2.2,2.4,2.6,2.8,3.0,3.2,3.4,3.6,3.8,4.0,4.5,5.0,5.5,6.0,6.5,7.0,7.5,8.0,8.5,9.0,9.5,10.0,15.0,20.0,30.0,40.0,50.0]

   r2 =         1.01900 ang
   r3 =         1.01900 ang
   a3 =       105.99800 degree
   a4 =       105.99800 degree
   d4 =       247.63782 degree

nosym
geometry={
N
H, 1, r2
H, 1, r2, 2, a3
H, 1, r4, 2, a4, 3, d4
}

do i=1,#r
r4=r(i)
multi
{optg;
 inactive,r4}
e1(i)=energy
enddo

{table,r,e1;
 save,NH3optg.tab}
