; ModuleID = 'cfg.c'
source_filename = "cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %8, align 4
  br label %23

17:                                               ; preds = %3
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %17, %15
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %8, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
