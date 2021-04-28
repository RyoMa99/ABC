package main

import (
	"fmt"
	"math"
	"math/big"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	probability := big.NewRat(0, 1)
	for i := 1; i <= n; i++ {
		if i >= k {
			probability = new(big.Rat).Add(probability, big.NewRat(1, int64(n)))
			continue
		}

		count := 1
		for {
			if i*int(math.Pow(2, float64(count))) >= k {
				multi := new(big.Rat).Mul(big.NewRat(1, int64(n)), big.NewRat(1, int64(math.Pow(2, float64(count)))))
				probability = new(big.Rat).Add(probability, multi)
				break
			}
			count++
		}
	}

	ans, _ := probability.Float64()
	fmt.Printf("%0.9f", ans)
}
