package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	a := make([]int, 0)
	for i := 0; i < n; i++ {
		var num int
		fmt.Scan(&num)
		a = append(a, num)
	}

	ans := 0
	for i := 0; i < n; i++ {
		x := a[i]
		for j := i; j < n; j++ {
			x = min(x, a[j])
			ans = max(ans, x*(j-i+1))
		}
	}
	fmt.Println(ans)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}
