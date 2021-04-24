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
	sc.Scan()
	x, _ := strconv.Atoi(sc.Text())

	ans := 1
	len := 0

	for i := 0; i < n; i++ {
		sc.Scan()
		num, _ := strconv.Atoi(sc.Text())
		len += num
		if len <= x {
			ans += 1
		}
	}

	fmt.Println(ans)
}
