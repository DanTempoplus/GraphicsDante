proc findSpan*(n, p: int, u: float, U: seq[float]): int =
  if u == U[n + 1]:
    return n
  var low = p
  var high = n + 1
  var mid = (low + high) div 2
  while u < U[mid] or u >= U[mid + 1]:
    if u < U[mid]:
      high = mid
    else:
      low = mid
    mid = (low + high) div 2
  result = mid

# Ejemplo de uso

