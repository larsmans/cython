# Cilk Plus support; currently only works in C++ mode.
#
# cilk.sync is declared as a function with no arguments, but it should not
# actually be called. See the Users Guide, chapter Using Parallelism.


cdef extern from "*" nogil:
    F spawn "_Cilk_spawn"[F](F func)
    void sync "_Cilk_sync"()
