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
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %z = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i64, align 8
  %r = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %a, align 4
  store i32 2, i32* %b, align 4
  %0 = load i32, i32* %a, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  call void @b1()
  %1 = load i32, i32* %b, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @c()
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @d()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end4

if.else3:                                         ; preds = %entry
  call void @b2()
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.end
  store i32 10, i32* %z, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end4
  %2 = load i32, i32* %z, align 4
  %cmp5 = icmp sgt i32 %2, 0
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @f()
  %3 = load i32, i32* %z, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %z, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 4, i32* %s, align 4
  %4 = load i32, i32* %s, align 4
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 3, label %sw.bb7
    i32 4, label %sw.bb8
  ]

sw.bb:                                            ; preds = %while.end
  call void @g1()
  br label %sw.epilog

sw.bb6:                                           ; preds = %while.end
  call void @g2()
  br label %sw.epilog

sw.bb7:                                           ; preds = %while.end
  call void @g3()
  br label %sw.epilog

sw.bb8:                                           ; preds = %while.end
  call void @g4()
  br label %sw.epilog

sw.default:                                       ; preds = %while.end
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb
  %call9 = call i64 @time(i64* %t) #3
  %conv = trunc i64 %call9 to i32
  call void @srand(i32 %conv) #3
  %call10 = call i32 @rand() #3
  %rem = srem i32 %call10, 4
  %add = add nsw i32 1, %rem
  store i32 %add, i32* %r, align 4
  %5 = load i32, i32* %r, align 4
  switch i32 %5, label %sw.default15 [
    i32 1, label %sw.bb11
    i32 2, label %sw.bb12
    i32 3, label %sw.bb13
    i32 4, label %sw.bb14
  ]

sw.bb11:                                          ; preds = %sw.epilog
  call void @g1()
  br label %sw.epilog17

sw.bb12:                                          ; preds = %sw.epilog
  call void @g2()
  br label %sw.epilog17

sw.bb13:                                          ; preds = %sw.epilog
  call void @g3()
  br label %sw.epilog17

sw.bb14:                                          ; preds = %sw.epilog
  call void @g4()
  br label %sw.epilog17

sw.default15:                                     ; preds = %sw.epilog
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  br label %sw.epilog17

sw.epilog17:                                      ; preds = %sw.default15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

;attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
;attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
;attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
;attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
