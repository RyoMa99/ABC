package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	ans := 700

	for i := 0; i < len(s); i++ {
		if s[i:i+1] == "o" {
			ans += 100
		}
	}

	fmt.Println(ans)
}
