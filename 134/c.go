package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)

	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	sorted_a := make([]int, n)
	copy(sorted_a, a)
	sort.Slice(sorted_a, func(i, j int) bool { return sorted_a[i] > sorted_a[j] })

	for _, num := range a {
		if num == sorted_a[0] {
			fmt.Println(sorted_a[1])
		} else {
			fmt.Println(sorted_a[0])
		}
	}
}
