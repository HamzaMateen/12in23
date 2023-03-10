pub fn production_rate_per_hour(speed: u8) -> f64 {
    match speed {
        0..=4 => 221.0 * speed as f64,
        5..=8 => (221.0 * 0.9) * speed as f64,
        9 | 10 => (221.0 * 0.77) * speed as f64,
        _ => -1.0
    }
}

pub fn working_items_per_minute(speed: u8) -> u32 {
    production_rate_per_hour(speed) as u32 / 60
}
