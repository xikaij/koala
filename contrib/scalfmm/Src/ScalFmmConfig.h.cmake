// ===================================================================================
// Copyright ScalFmm 2011 INRIA, Olivier Coulaud, Berenger Bramas
// olivier.coulaud@inria.fr, berenger.bramas@inria.fr
// This software is a computer program whose purpose is to compute the FMM.
//
// This software is governed by the CeCILL-C and LGPL licenses and
// abiding by the rules of distribution of free software.  
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public and CeCILL-C Licenses for more details.
// "http://www.cecill.info". 
// "http://www.gnu.org/licenses".
// ===================================================================================
#ifndef SSCALFMMCONFIG_H
#define SSCALFMMCONFIG_H
///////////////////////////////////////////////////////
// Debug
///////////////////////////////////////////////////////

// Uncomment the next line to use debug mode
#cmakedefine SCALFMM_USE_LOG

///////////////////////////////////////////////////////
// Blas
///////////////////////////////////////////////////////

#cmakedefine SCALFMM_USE_BLAS
#cmakedefine SCALFMM_USE_MKL_AS_BLAS

////////////////////////////////////////////////////////
// FFT
///////////////////////////////////////////////////////

#cmakedefine SCALFMM_USE_FFT
#cmakedefine SCALFMM_USE_MKL_AS_FFTW

//////////////////////////////////////////////////////
// MPI
///////////////////////////////////////////////////////

#cmakedefine SCALFMM_USE_MPI

///////////////////////////////////////////////////////
// Memory trace
///////////////////////////////////////////////////////

#cmakedefine SCALFMM_USE_MEM_STATS

///////////////////////////////////////////////////////
// CUDA
///////////////////////////////////////////////////////

#cmakedefine SCALFMM_USE_CUDA

///////////////////////////////////////////////////////
// OPENCL
///////////////////////////////////////////////////////

#cmakedefine SCALFMM_USE_OPENCL

///////////////////////////////////////////////////////
// STARPU
///////////////////////////////////////////////////////

#cmakedefine SCALFMM_USE_STARPU
#cmakedefine SCALFMM_DISABLE_NATIVE_OMP4

///////////////////////////////////////////////////////
// SSE
///////////////////////////////////////////////////////

#cmakedefine SCALFMM_USE_SSE
#cmakedefine __AVXPE_INTEL_COMPILER

///////////////////////////////////////////////////////
// AVX
///////////////////////////////////////////////////////

#cmakedefine SCALFMM_USE_AVX
#cmakedefine __SSEPE_INTEL_COMPILER

///////////////////////////////////////////////////////
// EZTRACE
///////////////////////////////////////////////////////

#cmakedefine SCALFMM_USE_EZTRACE
#cmakedefine SCALFMM_TRACE_ALGO
#cmakedefine SCALFMM_TRACE_P2P
#cmakedefine SCALFMM_TRACE_P2M
#cmakedefine SCALFMM_TRACE_M2L
#cmakedefine SCALFMM_TRACE_L2L
#cmakedefine SCALFMM_TRACE_L2P


///////////////////////////////////////////////////////
// Assert tests
///////////////////////////////////////////////////////

#cmakedefine SCALFMM_USE_ASSERT


#ifdef __INTEL_COMPILER
#pragma warning (disable : 858 ) 
#pragma warning (disable : 2326 ) 
#endif

///////////////////////////////////////////////////////
// Path to the SCALFMM DATA (For UTests)
///////////////////////////////////////////////////////
#include <string>
const std::string SCALFMMDataPath("@CMAKE_SOURCE_DIR@/Data/");


///////////////////////////////////////////////////////
// Flags and libs used to compile
///////////////////////////////////////////////////////
const std::string SCALFMMCompileFlags("@SCALFMM_COMPILE_FLAGS@");
const std::string SCALFMMCompileLibs("@SCALFMM_COMPILE_LIBS@");

///////////////////////////////////////////////////////
// To use commute for KSTAR OMP4
///////////////////////////////////////////////////////

#cmakedefine OPENMP_SUPPORT_COMMUTE

///////////////////////////////////////////////////////
// To use priority for KSTAR OMP4
///////////////////////////////////////////////////////

#cmakedefine OPENMP_SUPPORT_PRIORITY

///////////////////////////////////////////////////////
// To record omp4 task times for statistics
///////////////////////////////////////////////////////

#cmakedefine SCALFMM_TIME_OMPTASKS

///////////////////////////////////////////////////////
// To catch signals and print backtrace
///////////////////////////////////////////////////////

#cmakedefine SCALFMM_USE_SIGNALS

///////////////////////////////////////////////////////
// To control starpu config
///////////////////////////////////////////////////////

#cmakedefine SCALFMM_STARPU_USE_COMMUTE
#cmakedefine SCALFMM_STARPU_USE_REDUX
#cmakedefine SCALFMM_STARPU_USE_PRIO
#cmakedefine SCALFMM_STARPU_FORCE_NO_SCHEDULER

#endif // CONFIG_H