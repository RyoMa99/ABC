package main

import (
	"fmt"
	"math"
)

func main() {
	var n, d float64
	fmt.Scan(&n, &d)
	fmt.Println(math.Ceil(n / (d*2 + 1)))
}
