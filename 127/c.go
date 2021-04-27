package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	rightMin := 1000000
	leftMax := 0
	for i := 0; i < m; i++ {
		var l, r int
		fmt.Scan(&l, &r)
		if leftMax < l {
			leftMax = l
		}

		if r < rightMin {
			rightMin = r
		}
	}

	if rightMin-leftMax+1 > 0 {
		fmt.Println(rightMin - leftMax + 1)
	} else {
		fmt.Println(0)
	}

}
