# CLIC_DRs
Taking into account IBS, based on analytical results and numerical simulations, the optics design
optimization is presented for the damping rings (DRs) of the Compact Linear Collider (CLIC).
Specifically, aiming to reduce the betatron emittance of the DRs, dipoles whose magnetic field
varies longitudinally are used together with high-field SC wigglers.
***
**Analytical solutions for minimizing the emittance of a TME
cell using longitudinally variable bends**\
scripts:
* tmetrapezioCIEMAT.m the matlab file for the TME analytical solutions using the trapezium profile
* tmeUni_ComparisontoCiemat.m the matlab file for the TME analytical solutions using the uniform dipole profile
* cosx_el_rho_trap.m is the file that plots the emittance reduction factor for the trapezium profile with respect to the lengths and bending radii ratios
* forciemat.nb the Mathematica file I gave to CIEMAT
* Htrap.nb the solution of the emittance integrals along the variable bend for the trapezium and the resulted emittance reduction factor
* trapTME.nb are the analytical solutions for the whole TME cell
***
**Alternative CLIC DR design using longitudinally variable bends and high field wigglers**\
scripts:
* trap_ciemat_final.madx is the MAD-X file where the new lattice, using the CIEMAT designed dipole and SC high filed wigglers, is defined
* Tracking-DAphi.madx to run and check DA 
***
**Useful links**\
https://journals.aps.org/prab/pdf/10.1103/PhysRevAccelBeams.22.091601 \
https://cds.cern.ch/record/1666863/files/CERN-THESIS-2012-368.pdf
