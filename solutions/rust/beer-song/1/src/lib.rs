pub fn verse(n: u32) -> String {
    let n_minus_1 = match n {
        1 => "no more".to_string(),
        0 => "fail".to_string(),
        _ => (n - 1).to_string()
    };
    let ntxt = match n {
        0 => "No more".to_string(),
        _ => n.to_string()
    };
    let ntxt2 = match n {
        0 => "no more".to_string(),
        _ => n.to_string()
    };
    let plural = match n {
        1 => "bottle",
        _ => "bottles",
    };
    let singular = match n {
        2 => "bottle",
        _ => "bottles",
    };
    let cnt = match n {
        1 => "it",
        _ => "one"
    };
    let line2 = match n {
        0 => format!("Go to the store and buy some more, 99 bottles of beer on the wall."),
        _ => format!("Take {cnt} down and pass it around, {n_minus_1} {singular} of beer on the wall.")
    };
    format!("{ntxt} {plural} of beer on the wall, {ntxt2} {plural} of beer.
{line2}
")
}

pub fn sing(start: u32, end: u32) -> String {
    let mut res = "".to_string();
    if start == 0 {
        return format!("{}", verse(0))
    }
    for i in (end..=start).rev() {
        if i == start {
            res = format!("{}{}", res, verse(i))
        } else {
            res = format!("{}\n{}", res, verse(i))
        }

    }
    res
}
