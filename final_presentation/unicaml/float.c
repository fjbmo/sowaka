#include <stdio.h>
#include <stdint.h>
#include <caml/mlvalues.h>
#include <caml/alloc.h>

typedef union {
  int32 i[2];
  double d;
} dbl;

typedef union { float f; int32 i; } x;

value gethi(value v) {
  dbl d;
  d.d = Double_val(v);
  return copy_int32(d.i[0]);
}

value getlo(value v) {
  dbl d;
  d.d = Double_val(v);
  return copy_int32(d.i[1]);
}

value to_float(value v) {
  x a;
  a.f = Double_val(v);
  return copy_int32(a.i);
}
