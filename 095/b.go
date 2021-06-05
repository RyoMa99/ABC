package main

import "fmt"

func main() {
	var n, x int
	fmt.Scan(&n, &x)

	min := 100000

	for i := 0; i < n; i++ {
		var w int
		fmt.Scan(&w)
		x -= w
		if w < min {
			min = w
		}
	}

	fmt.Println(n + x/min)
}
