import numpy as np
def letsPrint(text = "Hello"):
  getText = text;
  print(str(getText))
def numPyExample():
  a = np.arange(15).reshape(3, 5)
  a = np.array([[ 0,  1,  2,  3,  4], [ 5,  6,  7,  8,  9], [10, 11, 12, 13, 14]])
  letsPrint(a.shape)
# (3, 5)
  letsPrint(a.ndim)
# 2
  letsPrint(a.dtype.name)
# 'int64'
  letsPrint(a.itemsize)
# 8
  letsPrint(a.size)
# 15
  letsPrint(type(a))
# <type 'numpy.ndarray'>
  b = np.array([6, 7, 8])
  b = np.array([6, 7, 8])
  letsPrint(type(b))
#<type 'numpy.ndarray'>
# print(type(letsPrint()))
numPyExample()

