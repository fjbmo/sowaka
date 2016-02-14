let rec i2 x = x + x in
let rec f2 f = f +. f in
let x = 1 in
let y = 2 in
print_int(if i2 x < i2 y then 1 else 0);
let x = 2 in
let y = 1 in
print_int(if i2 x < i2 y then 1 else 0);
let x = 1 in
let y = 2 in
print_int(if i2 x > i2 y then 1 else 0);
let x = 2 in
let y = 1 in
print_int(if i2 x > i2 y then 1 else 0);
let x = 1 in
let y = 1 in
print_int(if i2 x = i2 y then 1 else 0);
let x = 1 in
let y = 2 in
print_int(if i2 x = i2 y then 1 else 0);
let x = 1.5 in
let y = 2.5 in
print_int(if f2 x < f2 y then 1 else 0);
let x = 2.5 in
let y = 1.5 in
print_int(if f2 x < f2 y then 1 else 0);
let x = 1.5 in
let y = 2.5 in
print_int(if f2 x > f2 y then 1 else 0);
let x = 2.5 in
let y = 1.5 in
print_int(if f2 x > f2 y then 1 else 0);
let x = 1.5 in
let y = 1.5 in
print_int(if f2 x = f2 y then 1 else 0);
let x = 1.5 in
let y = 0.5 in
print_int(if f2 x = f2 y then 1 else 0)
