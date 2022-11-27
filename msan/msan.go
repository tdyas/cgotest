package main

// extern void boom();
import "C"

func main() {
	C.boom()
}

