# Algoritmo 1.2 Polinomio de Bernstein

proc bernstein*(i, n: int, u: float): float =
  var temp: seq[float] = newSeq[float](n + 1)

  for j in 0..n:
    temp[j] = 0.0
  temp[n-i] = 1.0
  var u1 = 1.0 - u
  for k in 1..n:
    for j in n-1 .. k-1:
            temp[j] = u1 * temp[j] + u*temp[j-1]
    return temp[n]


