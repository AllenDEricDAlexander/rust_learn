use std::io::{self, Read, stdout};
use termion::raw::IntoRawMode;

fn main() {
    let _stdout = stdout().into_raw_mode().unwrap();

    for byte in io::stdin().bytes() {
        let c = byte.unwrap() as char;
        println!("{}", c);

        let b = byte.unwrap();
        let c = b as char;
        if c.ischar() {
            println!("{:?}\r", b);
        } else {
            println!("{:?}({:?})\r", b, c);
        }


        if c == 'q' {
            break;
        }
    }
}
