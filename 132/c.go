package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	d := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		d[i], _ = strconv.Atoi(sc.Text())
	}

	sort.Slice(d, func(i, j int) bool { return d[i] > d[j] })

	middle_high := d[n/2-1]
	middle_low := d[n/2]

	fmt.Println(middle_high - middle_low)
}
