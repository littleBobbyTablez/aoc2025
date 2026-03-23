package main

import "core:strings"
import "core:fmt"
import "core:os"
import "day1"

main::proc() {
    fmt.println("Here are the soulutions:") 

    day1.execute(readInput("./day1/input_day1_real.txt"))

}


readInput::proc(path: string) -> string {
    file, err := os.open(path)
    if err != os.ERROR_NONE {
    
    }
    defer os.close(file)
    text, error := os.read_entire_file(file,context.allocator)

    return strings.trim(string(text), " \n")
}
