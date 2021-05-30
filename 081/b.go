package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	min := 30
	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)

		cnt := 0
		for {
			if a%2 == 0 {
				cnt++
				a /= 2
				continue
			}
			break
		}

		if cnt < min {
			min = cnt
		}

	}

	fmt.Println(min)
}
