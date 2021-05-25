package main

import (
	"fmt"
	"math"
)

func main() {
	var n, k int
	var ans int

	fmt.Scan(&n, &k)

	for i := 0; i < n; i++ {
		var x int
		fmt.Scan(&x)

		if x > (k / 2) {
			ans += int(math.Abs(float64(x-k))) * 2
		} else {
			ans += x * 2
		}
	}

	fmt.Println(ans)
}
