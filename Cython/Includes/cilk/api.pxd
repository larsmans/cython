# Cilk Plus runtime inspection and control functions.


cdef extern from "cilk/cilk_api.h" nogil:
    int get_force_reduce "__cilkrts_get_force_reduce"(void)
    int get_nworkers "__cilkrts_get_nworkers"(void)
    int get_total_workers "__cilkrts_get_total_workers"(void)
    int get_worker_number "__cilkrts_get_worker_number"(void)
    void init "__cilkrts_init"(void)
    void end_cilk "__cilkrts_end_cilk"(void)
    int set_param "__cilkrts_set_param"(const char *param, const char *value)
