package main

import "fmt"

func main() {
	var p, q, r int
	fmt.Scan(&p, &q, &r)
	fmt.Println(p + q + r - max(max(p, q), r))
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
