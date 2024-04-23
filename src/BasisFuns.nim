proc basisFuns*(i: int, u: float64, p: int, U: seq[float64]): seq[float64] =
    var N: seq[float64] = newSeq[float64](p + 1)  # Inicializar N con el tamaño adecuado
    var left: seq[float64] = newSeq[float64](p + 1)  # Inicializar left con el tamaño adecuado
    var right: seq[float64] = newSeq[float64](p + 1)  # Inicializar right con el tamaño adecuado
    var temp: float64
    var saved: float64
    N[0] = 1.0
    for j in 1..p:
        left[j] = u - U[i + 1 - j]
        right[j] = U[i + j] - u
        saved = 0.0
        if abs(right[j] + left[j]) > 0.0:
            temp = N[0] / (right[j] + left[j])
            N[0] = saved + right[j] * temp
            saved = left[j] * temp
        else:
            N[0] = 0.0
    result = N

# Ejemplo de uso

