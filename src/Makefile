
#MKLROOT   = /opt/intel/composer_xe_2015.1.133/mkl
#MKLROOT   = ${MKLROOT}

#FFTW_INCL = -I/${MKLROOT}/include/fftw/
FFTW_LIBS = -L/apps/lapack/3.6.0/lib/aarch64-linux-gnu/ -llapack -lblas -L/apps/scalapack/2.0.2/lib/ -lscalapack -L/apps/fftw/3.3.6/lib/ -lfftw3 -lpthread -lm -ldl
#FFTW_LIBS   = $(MKLROOT)/lib/intel64/libmkl_scalapack_lp64.a -Wl,--start-group  $(MKLROOT)/lib/intel64/libmkl_intel_lp64.a \
               $(MKLROOT)/lib/intel64/libmkl_intel_thread.a $(MKLROOT)/lib/intel64/libmkl_core.a $(MKLROOT)/lib/intel64/libmkl_blacs_intelmpi_lp64.a \
               -Wl,--end-group -lpthread -lm ${IPM}

#DFLAGS = -D__INTEL -D__FFTW -D_SCALAPACK
DFLAGS = -D__FFTW -D_SCALAPACK

CC = mpicc
CFLAGS = -O2 -I./

FC = mpif90#.openmpi
#FFLAGS = -O3 -fpp -I./
FFLAGS = -O3 -cpp -I./

LD = mpif90#.openmpi

#ifort -openmp defines _OPENMP instead of__OPENMP
#DFLAGS    += -D__OPENMP

#FFLAGS    += -openmp
#LDFLAGS   += -openmp

include Makefile.base
