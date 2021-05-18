package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)

	point := make([]int, 0)
	for i := 0; i < n; i++ {
		var num int
		fmt.Scan(&num)
		point = append(point, num)
	}

	sort.Slice(point, func(i int, j int) bool { return point[i] < point[j] })

	fmt.Println(point[n-1] - point[0])
}
