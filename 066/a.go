package main

import (
	"fmt"
	"sort"
)

func main() {
	num := make([]int, 3)
	fmt.Scan(&num[0])
	fmt.Scan(&num[1])
	fmt.Scan(&num[2])

	sort.Slice(num, func(i, j int) bool { return num[i] < num[j] })

	fmt.Println(num[0] + num[1])
}
