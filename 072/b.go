package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	var ans string
	for i := 0; i < len(s); i += 2 {
		ans += s[i : i+1]
	}
	fmt.Println(ans)
}
