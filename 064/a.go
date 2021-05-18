package main

import (
	"fmt"
	"strconv"
)

func main() {
	var r, g, b string
	fmt.Scan(&r, &g, &b)
	num, _ := strconv.Atoi(r + g + b)

	if num%4 == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
