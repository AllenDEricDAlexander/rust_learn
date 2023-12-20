; ModuleID = 'probe8.381702ce5f7532ce-cgu.0'
source_filename = "probe8.381702ce5f7532ce-cgu.0"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-f128:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-emscripten"

; core::f64::<impl f64>::to_ne_bytes
; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3f6421_$LT$impl$u20$f64$GT$11to_ne_bytes17hba7e6d5ae31cdaa3E"(ptr sret([8 x i8]) align 1 %_0, double %self) unnamed_addr #0 {
start:
  %self1 = bitcast double %self to i64
  store i64 %self1, ptr %_0, align 1
  ret void
}

; probe8::probe
; Function Attrs: uwtable
define hidden void @_ZN6probe85probe17h3adbeeec87bc4714E() unnamed_addr #1 {
start:
  %_1 = alloca [8 x i8], align 1
; call core::f64::<impl f64>::to_ne_bytes
  call void @"_ZN4core3f6421_$LT$impl$u20$f64$GT$11to_ne_bytes17hba7e6d5ae31cdaa3E"(ptr sret([8 x i8]) align 1 %_1, double 3.140000e+00)
  ret void
}

attributes #0 = { inlinehint uwtable "target-cpu"="generic" }
attributes #1 = { uwtable "target-cpu"="generic" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{!"rustc version 1.74.1 (a28077b28 2023-12-04)"}
