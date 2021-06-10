; ModuleID = 'scarr.c'
source_filename = "scarr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"you are privileged!\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Invalid!\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Exiting...\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @get_input() #0 {
entry:
  %rnd = alloca i32, align 4
  %call = call i32 (...) @rand()
  %rem = srem i32 %call, 2
  store i32 %rem, i32* %rnd, align 4
  %0 = load i32, i32* %rnd, align 4
  %cmp = icmp eq i32 %0, 1
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  ret i8* %cond
}

declare dso_local i32 @rand(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @get_privileged_info() #0 {
entry:
  ret i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @get_unprivileged_info() #0 {
entry:
  ret i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_output(i8* %result) #0 {
entry:
  %result.addr = alloca i8*, align 8
  store i8* %result, i8** %result.addr, align 8
  %0 = load i8*, i8** %result.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %0)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @my_terminate() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %access = alloca i8*, align 8
  %result = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  %call = call i8* @get_input()
  store i8* %call, i8** %access, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8** %result, align 8
  %0 = load i8*, i8** %access, align 8
  %call1 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i8* @get_privileged_info()
  store i8* %call2, i8** %result, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = call i8* @get_unprivileged_info()
  store i8* %call3, i8** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i8*, i8** %result, align 8
  call void @print_output(i8* %1)
  call void @my_terminate()
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

declare dso_local i32 @strcmp(i8*, i8*) #1

;attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
;attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
