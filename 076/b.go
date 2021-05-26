package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	ans := 1
	for i := 0; i < n; i++ {
		if ans*2-ans > k {
			ans += k
		} else {
			ans *= 2
		}
	}

	fmt.Println(ans)
}
