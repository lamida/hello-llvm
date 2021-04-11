; ModuleID = 'simple-dot-c.c'
source_filename = "simple-dot-c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"you are privileged!\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Invalid!\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Exiting...\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_input() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @rand() #3
  %3 = srem i32 %2, 2
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i64
  %7 = select i1 %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  ret i8* %7
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_privileged_info() #0 {
  ret i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_unprivileged_info() #0 {
  ret i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_output(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %3)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @my_terminate() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %4 = call i8* @get_input()
  store i8* %4, i8** %2, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp eq i8* %5, getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i8* @get_privileged_info()
  store i8* %8, i8** %3, align 8
  br label %11

9:                                                ; preds = %0
  %10 = call i8* @get_unprivileged_info()
  store i8* %10, i8** %3, align 8
  br label %11

11:                                               ; preds = %9, %7
  %12 = load i8*, i8** %3, align 8
  call void @print_output(i8* %12)
  call void @my_terminate()
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
