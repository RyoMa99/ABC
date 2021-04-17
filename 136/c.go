package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	h := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}

	var ans string = "Yes"
	for i := n - 1; i > 0; i-- {
		if h[i-1] == h[i]+1 {
			h[i-1]--
		} else if h[i-1] > h[i]+1 {
			ans = "No"
			break
		}
	}

	fmt.Println(ans)
}
