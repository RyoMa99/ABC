package main

import (
	"fmt"
	"math"
	"os"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	for i := 0; i <= max(a, b); i++ {
		if int64(math.Abs(float64(a-i))) == int64(math.Abs(float64(b-i))) {
			fmt.Println(i)
			os.Exit(0)
		}
	}

	fmt.Println("IMPOSSIBLE")
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
