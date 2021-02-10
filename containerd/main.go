//usr/bin/env go run "$0" "$@"; exit
package main

import (
        "fmt"
	"os"
)

func main() {
        fmt.Printf("Containerd is healthy.")
	os.Exit(0)
}
