
use std::time::SystemTime;

fn main() {
    let start = SystemTime::now();
    println!("fibonacci(46) = {}", fibonacci(46));
    match start.elapsed() {
        Ok(elapsed) => {
            println!("elapsed: {}.{} sec", elapsed.as_secs(), elapsed.subsec_nanos());
        }
        Err(e) => {
            println!("Error: {:?}", e);
        }
    }
}

fn fibonacci(n: i64) -> i64 {
    if n <= 1 {
        1
    } else {
        fibonacci(n - 1) + fibonacci(n - 2)
    }
}
