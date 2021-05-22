package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	l := make([]int, 0)
	for i := 0; i < n; i++ {
		var input int
		fmt.Scan(&input)
		l = append(l, input)
	}

	sort.Slice(l, func(i, j int) bool { return l[i] > l[j] })

	picked := make([]int, k)
	copy(picked, l[:k])

	sum := 0
	for _, num := range picked {
		sum += num
	}

	fmt.Println(sum)
}
