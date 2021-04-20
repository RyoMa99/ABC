package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	p := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		p[i], _ = strconv.Atoi(sc.Text())
	}

	var ans int
	for i := 1; i < n-1; i++ {
		if (p[i-1] < p[i] && p[i] < p[i+1]) || (p[i+1] < p[i] && p[i] < p[i-1]) {
			ans++
		}
	}

	fmt.Println(ans)
}
