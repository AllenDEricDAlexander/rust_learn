; ModuleID = 'probe4.d50822fbc0ed728e-cgu.0'
source_filename = "probe4.d50822fbc0ed728e-cgu.0"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-f128:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-emscripten"

@alloc_95fc4af8d8c0c95140f3698120307efb = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a28077b28a02b92985b3a3faecf92813155f1ea1/library/core/src/num/mod.rs" }>, align 1
@alloc_86cc524b47262635235c204a6a1f1dcf = private unnamed_addr constant <{ ptr, [12 x i8] }> <{ ptr @alloc_95fc4af8d8c0c95140f3698120307efb, [12 x i8] c"K\00\00\00v\04\00\00\05\00\00\00" }>, align 4
@str.0 = internal constant [25 x i8] c"attempt to divide by zero"

; probe4::probe
; Function Attrs: uwtable
define hidden void @_ZN6probe45probe17h2c15e94504eee0a4E() unnamed_addr #0 {
start:
  %0 = call i1 @llvm.expect.i1(i1 false, i1 false)
  br i1 %0, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h8f0021a37bfc1676E.exit"

panic.i:                                          ; preds = %start
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h6b2e4ed8806c7f23E(ptr align 1 @str.0, i32 25, ptr align 4 @alloc_86cc524b47262635235c204a6a1f1dcf) #3
  unreachable

"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h8f0021a37bfc1676E.exit": ; preds = %start
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare hidden i1 @llvm.expect.i1(i1, i1) #1

; core::panicking::panic
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h6b2e4ed8806c7f23E(ptr align 1, i32, ptr align 4) unnamed_addr #2

attributes #0 = { uwtable "target-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { cold noinline noreturn uwtable "target-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{!"rustc version 1.74.1 (a28077b28 2023-12-04)"}
