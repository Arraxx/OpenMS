from libcpp cimport bool
from Types cimport *
from MSSpectrum cimport *

cdef extern from "<OpenMS/FILTERING/DATAREDUCTION/Deisotoper.h>" namespace "OpenMS":
    cdef cppclass Deisotoper:
        Deisotoper() nogil except + # compiler
        Deisotoper(Deisotoper &) nogil except + # compiler

# COMMENT: wrap static methods
cdef extern from "<OpenMS/FILTERING/DATAREDUCTION/Deisotoper.h>" namespace "OpenMS::Deisotoper":
        void deisotopeAndSingleCharge(MSSpectrum & spectra,
                double fragment_tolerance,
                bool fragment_unit_ppm,
                int min_charge,
                int max_charge,
                bool keep_only_deisotoped,
                unsigned int min_isopeaks,
                unsigned int max_isopeaks,
                bool make_single_charged,
                bool annotate_charge,
                bool annotate_iso_peak_count,
                bool use_decreasing_model,
                unsigned int start_intensity_check,
                bool add_up_intensity) nogil except + # wrap-attach:Deisotoper
       
    
        void deisotopeAndSingleCharge(MSSpectrum & spectra,
                double fragment_tolerance, 
                bool fragment_unit_ppm) nogil except +  # wrap-attach:Deisotoper wrap-as:deisotopeAndSingleChargeDefault

