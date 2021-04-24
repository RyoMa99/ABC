package main

import (
	"fmt"
	"math"
)

func main() {
	var n, l int
	fmt.Scan(&n, &l)

	var ans int
	if l > 0 {
		ans = (n+2)*(n-1)/2 + (l-1)*(n-1)
	} else if float64(n) > math.Abs(float64(l)) {
		ans = (1+n)*n/2 + (l-1)*n
	} else {
		ans = n*(n-1)/2 + (l-1)*(n-1)
	}
	fmt.Println(ans)
}
