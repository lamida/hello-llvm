; ModuleID = 'branches2.c'
source_filename = "branches2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"b1 is called in first branch\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"b1 is called in second branch\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"b2 is called\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"c is called\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"e is called\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"d is called\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"f is called\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"g1 is called\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"g2 is called\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"g3 is called\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"g4 is called\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"nothing here\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b1() #0 {
  %1 = alloca i32, align 4
  store i32 10, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = icmp eq i32 %2, 10
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %8

6:                                                ; preds = %0
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %4
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b2() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @d() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  call void @e()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g1() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g2() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g3() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g4() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %0
  call void @b1()
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  call void @c()
  br label %15

14:                                               ; preds = %10
  call void @d()
  br label %15

15:                                               ; preds = %14, %13
  br label %17

16:                                               ; preds = %0
  call void @b2()
  br label %17

17:                                               ; preds = %16, %15
  store i32 10, i32* %4, align 4
  br label %18

18:                                               ; preds = %21, %17
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  call void @f()
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %4, align 4
  br label %18

24:                                               ; preds = %18
  store i32 4, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %30 [
    i32 1, label %26
    i32 2, label %27
    i32 3, label %28
    i32 4, label %29
  ]

26:                                               ; preds = %24
  call void @g1()
  br label %32

27:                                               ; preds = %24
  call void @g2()
  br label %32

28:                                               ; preds = %24
  call void @g3()
  br label %32

29:                                               ; preds = %24
  call void @g4()
  br label %32

30:                                               ; preds = %24
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %29, %28, %27, %26
  %33 = call i64 @time(i64* %6) #3
  %34 = trunc i64 %33 to i32
  call void @srand(i32 %34) #3
  %35 = call i32 @rand() #3
  %36 = srem i32 %35, 4
  %37 = add nsw i32 1, %36
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  switch i32 %38, label %43 [
    i32 1, label %39
    i32 2, label %40
    i32 3, label %41
    i32 4, label %42
  ]

39:                                               ; preds = %32
  call void @g1()
  br label %45

40:                                               ; preds = %32
  call void @g2()
  br label %45

41:                                               ; preds = %32
  call void @g3()
  br label %45

42:                                               ; preds = %32
  call void @g4()
  br label %45

43:                                               ; preds = %32
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %42, %41, %40, %39
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

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
