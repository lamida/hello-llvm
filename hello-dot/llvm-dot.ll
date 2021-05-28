; ModuleID = 'llvm-dot.c'
source_filename = "llvm-dot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"b1 is called\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"b2 is called\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"c is called\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"e is called\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"d is called\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"f is called\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"g1 is called\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"g2 is called\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"g3 is called\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"g4 is called\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"nothing here\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b1() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b2() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @d() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  call void @e()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g1() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g2() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g3() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g4() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  call void @b1()
  br label %10

9:                                                ; preds = %0
  call void @b2()
  br label %10

10:                                               ; preds = %9, %8
  call void @c()
  call void @d()
  store i32 10, i32* %3, align 4
  br label %11

11:                                               ; preds = %14, %10
  %12 = load i32, i32* %3, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  call void @f()
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %3, align 4
  br label %11

17:                                               ; preds = %11
  %18 = call i32 (i64*, ...) bitcast (i32 (...)* @time to i32 (i64*, ...)*)(i64* %4)
  call void @srand(i32 %18) #3
  %19 = call i32 @rand() #3
  %20 = srem i32 %19, 4
  %21 = add nsw i32 1, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %27 [
    i32 1, label %23
    i32 2, label %24
    i32 3, label %25
    i32 4, label %26
  ]

23:                                               ; preds = %17
  call void @g1()
  br label %29

24:                                               ; preds = %17
  call void @g2()
  br label %29

25:                                               ; preds = %17
  call void @g3()
  br label %29

26:                                               ; preds = %17
  call void @g4()
  br label %29

27:                                               ; preds = %17
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %26, %25, %24, %23
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

declare dso_local i32 @time(...) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

;attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
;attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
;attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
;attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
