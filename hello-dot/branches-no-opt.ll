; ModuleID = 'branches.c'
source_filename = "branches.c"
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @b1() #0 {
entry:
  %x = alloca i32, align 4
  store i32 10, i32* %x, align 4
  %0 = load i32, i32* %x, align 4
  %cmp = icmp eq i32 %0, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @b2() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @c() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @e() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @d() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  call void @e()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @g1() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @g2() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @g3() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @g4() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @g() #0 {
entry:
  %r = alloca i32, align 4
  store i32 4, i32* %r, align 4
  %0 = load i32, i32* %r, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @g1()
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @g2()
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @g3()
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @g4()
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %z = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %a, align 4
  %0 = load i32, i32* %a, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @b1()
  br label %if.end

if.else:                                          ; preds = %entry
  call void @b2()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @c()
  call void @d()
  store i32 10, i32* %z, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load i32, i32* %z, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @f()
  %2 = load i32, i32* %z, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %z, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @g()
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

;attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
;attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
