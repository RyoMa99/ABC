package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, c int
	var x float64
	fmt.Scan(&a, &b, &c, &x)

	t := max(max(a, b), c)

	fmt.Println(a + b + c - t + t*int(math.Pow(2, x)))
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
