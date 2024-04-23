import math

var n = 4
type
  floatArray = array[5, float] # an array that is indexed with 0..5
var
  xArray: floatArray
  yArray: floatArray

xArray = [25,-5,5,10,7]
yArray = [-10,10,10,-10,23]


proc bezier*(i: int, r: int, t: float, eje: char): float =
    if eje == 'x':
        if r == 0:
            return xArray[i]
        return ((1-t)*bezier(i, r-1, t, 'x')) + (t*bezier(i+1, r-1, t, 'x'))
    if eje == 'y':
        if r == 0:
            return yArray[i]
        return ((1-t)*bezier(i, r-1, t, 'y')) + (t*bezier(i+1, r-1, t, 'y'))


#algoritmoBezier()
