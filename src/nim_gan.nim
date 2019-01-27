import linalg, sequtils


let
  v1: Vector64[5] = makeVector(5, proc(i: int): float64 = (i * i).float64)
  v2: Vector64[7] = randomVector(7, max = 3.0) # max is optional, default 1
  v3: Vector64[5] = constantVector(5, -3.5)
  v4: Vector64[8] = zeros(8)
  v5: Vector64[9] = ones(9)
  v6: Vector64[5] = vector([1.0, 2.0, 3.0, 4.0, 5.0]) # initialize from an array...


let
  m1: Matrix64[6, 3] = makeMatrix(6, 3, proc(i, j: int): float64 = (i + j).float64)
  m2: Matrix64[2, 8] = randomMatrix(2, 8, max = 1.6) # max is optional, default 1
  m3: Matrix64[3, 5] = constantMatrix(3, 5, 1.8, order = rowMajor) # order is optional, default colMajor
  m4: Matrix64[3, 6] = ones(3, 6)
  m5: Matrix64[5, 2] = zeros(5, 2)
  m6: Matrix64[7, 7] = eye(7)
  m7: Matrix64[2, 3] = matrix([
    [1.2, 3.5, 4.3],
    [1.1, 4.2, 1.7]
  ])
  m8: Matrix64[2, 3] = matrix(@[
    @[1.2, 3.5, 4.3],
    @[1.1, 4.2, 1.7]
  ], 2, 3)

# ベクトルの加算関数 もともとある
# echo v1 + v1

# 行列ベクトルの積関数
# echo m6 * m1

# 行列転地関数
# echo m6.t


# ReLU関数
proc relu[T](v: T): T =
   v.map(proc(x: float64): float64 = max(x, 0))




# Softmax関数
proc softmax(v: Vector64): Vector64 =
    var sum = 0
    # sum += v.map(proc(x: float64): float64 = x)

echo v3
echo softmax v3