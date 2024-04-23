#Algoritmo de Horner
#Arturo Dante Mendez Reyes

proc horner*(u: float64, a: seq[float64]): float64 =
  var c: float64 = a[a.len - 1]
  echo "c[", a.len - 1, "] = ", c, "\n"
  for i in 1..<a.len:
    c = a[a.len - 1 - i] + c * u
    echo "c[", a.len - 1 - i, "] = ", c, "\n"
  result = c

