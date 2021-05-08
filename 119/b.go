package main

import "fmt"

type Otoshidama struct {
	price float64
	unit  string
}

func (o Otoshidama) Value() float64 {
	if o.unit == "JPY" {
		return o.price
	}
	return o.price * 380000.0
}

func main() {
	var n int
	fmt.Scan(&n)
	var all_otoshidama []Otoshidama
	for i := 0; i < n; i++ {
		var p float64
		var u string
		fmt.Scan(&p, &u)
		all_otoshidama = append(all_otoshidama, Otoshidama{p, u})
	}

	var sum float64
	for _, otoshidama := range all_otoshidama {
		sum += otoshidama.Value()
	}
	fmt.Println(sum)
}
