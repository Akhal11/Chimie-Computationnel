***, molécule benzène
print, basis, orbitals
basis, 6-31G(d)

geometry={
C
C, 1, 1.38233
C, 2, 1.38233, 1, 120.00000
C, 3, 1.38233, 2, 120.00000, 1, 360.00000
C, 4, 1.38233, 3, 120.00000, 2, 360.00000
C, 1, 1.38233, 2, 120.00000, 3, 360.00000
H, 1, 1.08000, 2, 120.00000, 3, 180.00000
H, 2, 1.08000, 1, 120.00000, 3, 180.00000
H, 3, 1.08000, 2, 120.00000, 1, 180.00000
H, 4, 1.08000, 3, 120.00000, 2, 180.00000
H, 5, 1.08000, 4, 120.00000, 3, 180.00000
H, 6, 1.08000, 1, 120.00000, 2, 180.00000
}

hf

optg
frequencies, sym=auto
