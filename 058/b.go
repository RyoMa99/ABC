package main

import "fmt"

func main() {
	var o, e string
	fmt.Scan(&o, &e)

	var ans string
	for i := 0; i < len(e); i++ {
		ans += o[i : i+1]
		ans += e[i : i+1]
	}

	if len(o) > len(e) {
		ans += o[len(o)-1:]
	}

	fmt.Println(ans)
}
