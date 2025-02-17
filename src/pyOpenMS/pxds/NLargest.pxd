# part of the SpectraFilters
from MSSpectrum cimport *
from MSExperiment cimport *
from ChromatogramPeak cimport *
from Peak1D cimport *
from DefaultParamHandler cimport *

cdef extern from "<OpenMS/FILTERING/TRANSFORMERS/NLargest.h>" namespace "OpenMS":

    cdef cppclass NLargest(DefaultParamHandler):
        # wrap-inherits:
        #    DefaultParamHandler

        NLargest() nogil except + # wrap-doc:NLargest removes all but the n largest peaks
        NLargest(NLargest &) nogil except +

        void filterSpectrum(MSSpectrum & spec) nogil except +
        void filterPeakSpectrum(MSSpectrum & spec) nogil except +
        void filterPeakMap(MSExperiment & exp) nogil except +
