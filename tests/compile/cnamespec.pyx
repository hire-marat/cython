cdef extern int a "c_a", b "c_b"

cdef struct foo "c_foo":
    int i "c_i"

ctypedef enum blarg "c_blarg":
    x "c_x"
    y "c_y" = 42

cdef double spam "c_spam" (int i, float f):
    cdef double d "c_d"
    cdef foo *p
    global b
    d = spam(a, f)
    b = p.i
    p.i = x
    p.i = y
