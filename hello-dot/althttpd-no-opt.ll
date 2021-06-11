; ModuleID = 'althttpd.c'
source_filename = "althttpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i8*, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.timeval = type { i64, i64 }
%struct.anon.0 = type { i8*, i8** }
%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon.1, %union.anon.2, %union.anon.3, %union.anon.4, %union.anon.5, %union.anon.6, %union.anon.7, %union.anon.8, %union.anon.9, %union.anon.10, %union.anon.11, %union.anon.12, %union.anon.13, %union.anon.14 }
%union.anon.1 = type { i64 }
%union.anon.2 = type { i64 }
%union.anon.3 = type { i64 }
%union.anon.4 = type { i64 }
%union.anon.5 = type { i64 }
%union.anon.6 = type { i64 }
%union.anon.7 = type { i64 }
%union.anon.8 = type { i64 }
%union.anon.9 = type { i64 }
%union.anon.10 = type { i64 }
%union.anon.11 = type { i64 }
%union.anon.12 = type { i64 }
%union.anon.13 = type { i64 }
%union.anon.14 = type { i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.fd_set = type { [16 x i64] }
%union.address = type { %struct.sockaddr_storage }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.rlimit = type { i64, i64 }

@ParseRfc822Date.azMonths = internal constant [12 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"Jan\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Feb\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Mar\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Apr\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"Jun\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"Jul\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Aug\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"Sep\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"Oct\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Nov\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"%3[A-Za-z], %d %3[A-Za-z] %d %d:%d:%d\00", align 1
@ParseRfc822Date.priorDays = internal global [12 x i32] [i32 0, i32 31, i32 59, i32 90, i32 120, i32 151, i32 181, i32 212, i32 243, i32 273, i32 304, i32 334], align 16
@.str.13 = private unnamed_addr constant [7 x i8] c"t1==t2\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"althttpd.c\00", align 1
@__PRETTY_FUNCTION__.TestParseRfc822Date = private unnamed_addr constant [31 x i8] c"void TestParseRfc822Date(void)\00", align 1
@Decode64.isInit = internal global i32 0, align 4
@Decode64.trans = internal global [128 x i32] zeroinitializer, align 16
@Decode64.zBase = internal global [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@GetMimeType.aMime = internal constant [191 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.47, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.52, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.54, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.58, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.60, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.58, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.66, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.68, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.72, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.58, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.78, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.81, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.89, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.91, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.93, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.95, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.97, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.100, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.101, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.103, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.103, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.106, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.110, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.110, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.113, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.115, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.117, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.119, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.120, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.121, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.121, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.123, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.121, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.125, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.126, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.128, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.129, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.132, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.134, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.136, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.137, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.138, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.140, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.142, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.143, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.145, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.146, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.147, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.148, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.149, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.150, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.151, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.152, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.153, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.154, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.153, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.155, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.156, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.154, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.155, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.158, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.155, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.159, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.154, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.160, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.155, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.161, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.162, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.163, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.142, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.165, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.166, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.167, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.168, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.169, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.168, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.170, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.171, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.172, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.173, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.174, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.175, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.176, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.177, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.178, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.179, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.180, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.181, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.183, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.184, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.183, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.185, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.186, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.187, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.188, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.189, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.190, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.191, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.192, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.193, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.190, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.194, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.190, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.195, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.190, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.196, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.197, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.198, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.199, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.200, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.201, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.152, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.202, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.203, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.204, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.205, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.206, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.207, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.208, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.209, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.208, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.210, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.211, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.212, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.213, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.205, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.214, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.215, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.216, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.217, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.218, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.219, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.218, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.220, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.221, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.222, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.223, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.224, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.225, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.226, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.227, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.228, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.229, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.228, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.230, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.231, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.232, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.233, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.234, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.142, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.235, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.236, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.237, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.238, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.239, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.238, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.240, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.238, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.241, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.238, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.242, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.243, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.244, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.243, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.245, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.246, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.247, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.248, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.249, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.250, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.251, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.252, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.253, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.254, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.255, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.256, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.257, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.254, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.258, i32 0, i32 0), i32 7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.259, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.260, i32 0, i32 0), i32 6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.261, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.262, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.263, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.264, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.265, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.266, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.215, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.267, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.268, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.269, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.270, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.271, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.272, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.273, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.274, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.275, i32 0, i32 0), i32 7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.274, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.276, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.277, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.278, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.279, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.280, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.279, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.281, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.215, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.282, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.283, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.284, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.285, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.286, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.287, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.288, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.289, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.290, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.291, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.292, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.293, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.294, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.295, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.296, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.297, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.298, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.299, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.298, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.300, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.301, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.302, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.303, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.304, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.305, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.306, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.307, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.308, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.309, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.310, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.311, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.312, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.313, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.314, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.315, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.316, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.301, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.317, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.318, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.319, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.320, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.321, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.322, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.323, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.322, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.324, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.322, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.325, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.322, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.326, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.322, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.327, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.328, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.329, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.330, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.331, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.332, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.333, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.173, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.334, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.335, i32 0, i32 0) }], align 16
@.str.15 = private unnamed_addr constant [3 x i8] c"ai\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"application/postscript\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"aif\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"audio/x-aiff\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"aifc\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"aiff\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"arj\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"application/x-arj-compressed\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"asc\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"asf\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"video/x-ms-asf\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"asx\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"video/x-ms-asx\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"au\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"audio/ulaw\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"avi\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"video/x-msvideo\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"bat\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"application/x-msdos-program\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"bcpio\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"application/x-bcpio\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"bin\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"application/octet-stream\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"ccad\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"application/clariscad\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"cdf\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"application/x-netcdf\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"cod\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"application/vnd.rim.cod\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"com\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"cpio\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"application/x-cpio\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"cpt\00", align 1
@.str.52 = private unnamed_addr constant [27 x i8] c"application/mac-compactpro\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"csh\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"application/x-csh\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"css\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"text/css\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"dcr\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"application/x-director\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"deb\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"application/x-debian-package\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"dl\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"video/dl\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"dms\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"doc\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"application/msword\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"drw\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"application/drafting\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"dvi\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"application/x-dvi\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"dwg\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"application/acad\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"dxf\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"application/dxf\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"dxr\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"eps\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"etx\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"text/x-setext\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"exe\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"ez\00", align 1
@.str.81 = private unnamed_addr constant [25 x i8] c"application/andrew-inset\00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"f90\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"fli\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"video/fli\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"flv\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"video/flv\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"gif\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"image/gif\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"gl\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"video/gl\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"gtar\00", align 1
@.str.93 = private unnamed_addr constant [19 x i8] c"application/x-gtar\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"gz\00", align 1
@.str.95 = private unnamed_addr constant [19 x i8] c"application/x-gzip\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"hdf\00", align 1
@.str.97 = private unnamed_addr constant [18 x i8] c"application/x-hdf\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"hh\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"hqx\00", align 1
@.str.100 = private unnamed_addr constant [25 x i8] c"application/mac-binhex40\00", align 1
@.str.101 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"htm\00", align 1
@.str.103 = private unnamed_addr constant [25 x i8] c"text/html; charset=utf-8\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"ice\00", align 1
@.str.106 = private unnamed_addr constant [24 x i8] c"x-conference/x-cooltalk\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"ief\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"image/ief\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"iges\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"model/iges\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"igs\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"ips\00", align 1
@.str.113 = private unnamed_addr constant [23 x i8] c"application/x-ipscript\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"ipx\00", align 1
@.str.115 = private unnamed_addr constant [19 x i8] c"application/x-ipix\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"jad\00", align 1
@.str.117 = private unnamed_addr constant [33 x i8] c"text/vnd.sun.j2me.app-descriptor\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"jar\00", align 1
@.str.119 = private unnamed_addr constant [25 x i8] c"application/java-archive\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"jpeg\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"image/jpeg\00", align 1
@.str.122 = private unnamed_addr constant [4 x i8] c"jpe\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"jpg\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"js\00", align 1
@.str.125 = private unnamed_addr constant [25 x i8] c"application/x-javascript\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"kar\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"audio/midi\00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"latex\00", align 1
@.str.129 = private unnamed_addr constant [20 x i8] c"application/x-latex\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"lha\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"lsp\00", align 1
@.str.132 = private unnamed_addr constant [19 x i8] c"application/x-lisp\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"lzh\00", align 1
@.str.134 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"m3u\00", align 1
@.str.136 = private unnamed_addr constant [16 x i8] c"audio/x-mpegurl\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c"man\00", align 1
@.str.138 = private unnamed_addr constant [24 x i8] c"application/x-troff-man\00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"me\00", align 1
@.str.140 = private unnamed_addr constant [23 x i8] c"application/x-troff-me\00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c"mesh\00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"model/mesh\00", align 1
@.str.143 = private unnamed_addr constant [4 x i8] c"mid\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"midi\00", align 1
@.str.145 = private unnamed_addr constant [4 x i8] c"mif\00", align 1
@.str.146 = private unnamed_addr constant [18 x i8] c"application/x-mif\00", align 1
@.str.147 = private unnamed_addr constant [5 x i8] c"mime\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"www/mime\00", align 1
@.str.149 = private unnamed_addr constant [6 x i8] c"movie\00", align 1
@.str.150 = private unnamed_addr constant [18 x i8] c"video/x-sgi-movie\00", align 1
@.str.151 = private unnamed_addr constant [4 x i8] c"mov\00", align 1
@.str.152 = private unnamed_addr constant [16 x i8] c"video/quicktime\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"mp2\00", align 1
@.str.154 = private unnamed_addr constant [11 x i8] c"audio/mpeg\00", align 1
@.str.155 = private unnamed_addr constant [11 x i8] c"video/mpeg\00", align 1
@.str.156 = private unnamed_addr constant [4 x i8] c"mp3\00", align 1
@.str.157 = private unnamed_addr constant [5 x i8] c"mpeg\00", align 1
@.str.158 = private unnamed_addr constant [4 x i8] c"mpe\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c"mpga\00", align 1
@.str.160 = private unnamed_addr constant [4 x i8] c"mpg\00", align 1
@.str.161 = private unnamed_addr constant [3 x i8] c"ms\00", align 1
@.str.162 = private unnamed_addr constant [23 x i8] c"application/x-troff-ms\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"msh\00", align 1
@.str.164 = private unnamed_addr constant [3 x i8] c"nc\00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c"oda\00", align 1
@.str.166 = private unnamed_addr constant [16 x i8] c"application/oda\00", align 1
@.str.167 = private unnamed_addr constant [4 x i8] c"ogg\00", align 1
@.str.168 = private unnamed_addr constant [16 x i8] c"application/ogg\00", align 1
@.str.169 = private unnamed_addr constant [4 x i8] c"ogm\00", align 1
@.str.170 = private unnamed_addr constant [4 x i8] c"pbm\00", align 1
@.str.171 = private unnamed_addr constant [24 x i8] c"image/x-portable-bitmap\00", align 1
@.str.172 = private unnamed_addr constant [4 x i8] c"pdb\00", align 1
@.str.173 = private unnamed_addr constant [15 x i8] c"chemical/x-pdb\00", align 1
@.str.174 = private unnamed_addr constant [4 x i8] c"pdf\00", align 1
@.str.175 = private unnamed_addr constant [16 x i8] c"application/pdf\00", align 1
@.str.176 = private unnamed_addr constant [4 x i8] c"pgm\00", align 1
@.str.177 = private unnamed_addr constant [25 x i8] c"image/x-portable-graymap\00", align 1
@.str.178 = private unnamed_addr constant [4 x i8] c"pgn\00", align 1
@.str.179 = private unnamed_addr constant [24 x i8] c"application/x-chess-pgn\00", align 1
@.str.180 = private unnamed_addr constant [4 x i8] c"pgp\00", align 1
@.str.181 = private unnamed_addr constant [16 x i8] c"application/pgp\00", align 1
@.str.182 = private unnamed_addr constant [3 x i8] c"pl\00", align 1
@.str.183 = private unnamed_addr constant [19 x i8] c"application/x-perl\00", align 1
@.str.184 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@.str.185 = private unnamed_addr constant [4 x i8] c"png\00", align 1
@.str.186 = private unnamed_addr constant [10 x i8] c"image/png\00", align 1
@.str.187 = private unnamed_addr constant [4 x i8] c"pnm\00", align 1
@.str.188 = private unnamed_addr constant [24 x i8] c"image/x-portable-anymap\00", align 1
@.str.189 = private unnamed_addr constant [4 x i8] c"pot\00", align 1
@.str.190 = private unnamed_addr constant [25 x i8] c"application/mspowerpoint\00", align 1
@.str.191 = private unnamed_addr constant [4 x i8] c"ppm\00", align 1
@.str.192 = private unnamed_addr constant [24 x i8] c"image/x-portable-pixmap\00", align 1
@.str.193 = private unnamed_addr constant [4 x i8] c"pps\00", align 1
@.str.194 = private unnamed_addr constant [4 x i8] c"ppt\00", align 1
@.str.195 = private unnamed_addr constant [4 x i8] c"ppz\00", align 1
@.str.196 = private unnamed_addr constant [4 x i8] c"pre\00", align 1
@.str.197 = private unnamed_addr constant [24 x i8] c"application/x-freelance\00", align 1
@.str.198 = private unnamed_addr constant [4 x i8] c"prt\00", align 1
@.str.199 = private unnamed_addr constant [20 x i8] c"application/pro_eng\00", align 1
@.str.200 = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str.201 = private unnamed_addr constant [3 x i8] c"qt\00", align 1
@.str.202 = private unnamed_addr constant [3 x i8] c"ra\00", align 1
@.str.203 = private unnamed_addr constant [18 x i8] c"audio/x-realaudio\00", align 1
@.str.204 = private unnamed_addr constant [4 x i8] c"ram\00", align 1
@.str.205 = private unnamed_addr constant [21 x i8] c"audio/x-pn-realaudio\00", align 1
@.str.206 = private unnamed_addr constant [4 x i8] c"rar\00", align 1
@.str.207 = private unnamed_addr constant [29 x i8] c"application/x-rar-compressed\00", align 1
@.str.208 = private unnamed_addr constant [4 x i8] c"ras\00", align 1
@.str.209 = private unnamed_addr constant [17 x i8] c"image/cmu-raster\00", align 1
@.str.210 = private unnamed_addr constant [19 x i8] c"image/x-cmu-raster\00", align 1
@.str.211 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@.str.212 = private unnamed_addr constant [12 x i8] c"image/x-rgb\00", align 1
@.str.213 = private unnamed_addr constant [3 x i8] c"rm\00", align 1
@.str.214 = private unnamed_addr constant [5 x i8] c"roff\00", align 1
@.str.215 = private unnamed_addr constant [20 x i8] c"application/x-troff\00", align 1
@.str.216 = private unnamed_addr constant [4 x i8] c"rpm\00", align 1
@.str.217 = private unnamed_addr constant [28 x i8] c"audio/x-pn-realaudio-plugin\00", align 1
@.str.218 = private unnamed_addr constant [4 x i8] c"rtf\00", align 1
@.str.219 = private unnamed_addr constant [16 x i8] c"application/rtf\00", align 1
@.str.220 = private unnamed_addr constant [9 x i8] c"text/rtf\00", align 1
@.str.221 = private unnamed_addr constant [4 x i8] c"rtx\00", align 1
@.str.222 = private unnamed_addr constant [14 x i8] c"text/richtext\00", align 1
@.str.223 = private unnamed_addr constant [4 x i8] c"scm\00", align 1
@.str.224 = private unnamed_addr constant [29 x i8] c"application/x-lotusscreencam\00", align 1
@.str.225 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.226 = private unnamed_addr constant [16 x i8] c"application/set\00", align 1
@.str.227 = private unnamed_addr constant [5 x i8] c"sgml\00", align 1
@.str.228 = private unnamed_addr constant [10 x i8] c"text/sgml\00", align 1
@.str.229 = private unnamed_addr constant [4 x i8] c"sgm\00", align 1
@.str.230 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.231 = private unnamed_addr constant [17 x i8] c"application/x-sh\00", align 1
@.str.232 = private unnamed_addr constant [5 x i8] c"shar\00", align 1
@.str.233 = private unnamed_addr constant [19 x i8] c"application/x-shar\00", align 1
@.str.234 = private unnamed_addr constant [5 x i8] c"silo\00", align 1
@.str.235 = private unnamed_addr constant [4 x i8] c"sit\00", align 1
@.str.236 = private unnamed_addr constant [22 x i8] c"application/x-stuffit\00", align 1
@.str.237 = private unnamed_addr constant [4 x i8] c"skd\00", align 1
@.str.238 = private unnamed_addr constant [19 x i8] c"application/x-koan\00", align 1
@.str.239 = private unnamed_addr constant [4 x i8] c"skm\00", align 1
@.str.240 = private unnamed_addr constant [4 x i8] c"skp\00", align 1
@.str.241 = private unnamed_addr constant [4 x i8] c"skt\00", align 1
@.str.242 = private unnamed_addr constant [4 x i8] c"smi\00", align 1
@.str.243 = private unnamed_addr constant [17 x i8] c"application/smil\00", align 1
@.str.244 = private unnamed_addr constant [5 x i8] c"smil\00", align 1
@.str.245 = private unnamed_addr constant [4 x i8] c"snd\00", align 1
@.str.246 = private unnamed_addr constant [12 x i8] c"audio/basic\00", align 1
@.str.247 = private unnamed_addr constant [4 x i8] c"sol\00", align 1
@.str.248 = private unnamed_addr constant [19 x i8] c"application/solids\00", align 1
@.str.249 = private unnamed_addr constant [4 x i8] c"spl\00", align 1
@.str.250 = private unnamed_addr constant [27 x i8] c"application/x-futuresplash\00", align 1
@.str.251 = private unnamed_addr constant [4 x i8] c"src\00", align 1
@.str.252 = private unnamed_addr constant [26 x i8] c"application/x-wais-source\00", align 1
@.str.253 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.254 = private unnamed_addr constant [17 x i8] c"application/STEP\00", align 1
@.str.255 = private unnamed_addr constant [4 x i8] c"stl\00", align 1
@.str.256 = private unnamed_addr constant [16 x i8] c"application/SLA\00", align 1
@.str.257 = private unnamed_addr constant [4 x i8] c"stp\00", align 1
@.str.258 = private unnamed_addr constant [8 x i8] c"sv4cpio\00", align 1
@.str.259 = private unnamed_addr constant [22 x i8] c"application/x-sv4cpio\00", align 1
@.str.260 = private unnamed_addr constant [7 x i8] c"sv4crc\00", align 1
@.str.261 = private unnamed_addr constant [21 x i8] c"application/x-sv4crc\00", align 1
@.str.262 = private unnamed_addr constant [4 x i8] c"svg\00", align 1
@.str.263 = private unnamed_addr constant [14 x i8] c"image/svg+xml\00", align 1
@.str.264 = private unnamed_addr constant [4 x i8] c"swf\00", align 1
@.str.265 = private unnamed_addr constant [30 x i8] c"application/x-shockwave-flash\00", align 1
@.str.266 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.267 = private unnamed_addr constant [4 x i8] c"tar\00", align 1
@.str.268 = private unnamed_addr constant [18 x i8] c"application/x-tar\00", align 1
@.str.269 = private unnamed_addr constant [4 x i8] c"tcl\00", align 1
@.str.270 = private unnamed_addr constant [18 x i8] c"application/x-tcl\00", align 1
@.str.271 = private unnamed_addr constant [4 x i8] c"tex\00", align 1
@.str.272 = private unnamed_addr constant [18 x i8] c"application/x-tex\00", align 1
@.str.273 = private unnamed_addr constant [5 x i8] c"texi\00", align 1
@.str.274 = private unnamed_addr constant [22 x i8] c"application/x-texinfo\00", align 1
@.str.275 = private unnamed_addr constant [8 x i8] c"texinfo\00", align 1
@.str.276 = private unnamed_addr constant [4 x i8] c"tgz\00", align 1
@.str.277 = private unnamed_addr constant [21 x i8] c"application/x-tar-gz\00", align 1
@.str.278 = private unnamed_addr constant [5 x i8] c"tiff\00", align 1
@.str.279 = private unnamed_addr constant [11 x i8] c"image/tiff\00", align 1
@.str.280 = private unnamed_addr constant [4 x i8] c"tif\00", align 1
@.str.281 = private unnamed_addr constant [3 x i8] c"tr\00", align 1
@.str.282 = private unnamed_addr constant [4 x i8] c"tsi\00", align 1
@.str.283 = private unnamed_addr constant [16 x i8] c"audio/TSP-audio\00", align 1
@.str.284 = private unnamed_addr constant [4 x i8] c"tsp\00", align 1
@.str.285 = private unnamed_addr constant [20 x i8] c"application/dsptype\00", align 1
@.str.286 = private unnamed_addr constant [4 x i8] c"tsv\00", align 1
@.str.287 = private unnamed_addr constant [26 x i8] c"text/tab-separated-values\00", align 1
@.str.288 = private unnamed_addr constant [4 x i8] c"txt\00", align 1
@.str.289 = private unnamed_addr constant [4 x i8] c"unv\00", align 1
@.str.290 = private unnamed_addr constant [19 x i8] c"application/i-deas\00", align 1
@.str.291 = private unnamed_addr constant [6 x i8] c"ustar\00", align 1
@.str.292 = private unnamed_addr constant [20 x i8] c"application/x-ustar\00", align 1
@.str.293 = private unnamed_addr constant [4 x i8] c"vcd\00", align 1
@.str.294 = private unnamed_addr constant [21 x i8] c"application/x-cdlink\00", align 1
@.str.295 = private unnamed_addr constant [4 x i8] c"vda\00", align 1
@.str.296 = private unnamed_addr constant [16 x i8] c"application/vda\00", align 1
@.str.297 = private unnamed_addr constant [4 x i8] c"viv\00", align 1
@.str.298 = private unnamed_addr constant [15 x i8] c"video/vnd.vivo\00", align 1
@.str.299 = private unnamed_addr constant [5 x i8] c"vivo\00", align 1
@.str.300 = private unnamed_addr constant [5 x i8] c"vrml\00", align 1
@.str.301 = private unnamed_addr constant [11 x i8] c"model/vrml\00", align 1
@.str.302 = private unnamed_addr constant [5 x i8] c"vsix\00", align 1
@.str.303 = private unnamed_addr constant [17 x i8] c"application/vsix\00", align 1
@.str.304 = private unnamed_addr constant [4 x i8] c"wav\00", align 1
@.str.305 = private unnamed_addr constant [12 x i8] c"audio/x-wav\00", align 1
@.str.306 = private unnamed_addr constant [4 x i8] c"wax\00", align 1
@.str.307 = private unnamed_addr constant [15 x i8] c"audio/x-ms-wax\00", align 1
@.str.308 = private unnamed_addr constant [5 x i8] c"wiki\00", align 1
@.str.309 = private unnamed_addr constant [26 x i8] c"application/x-fossil-wiki\00", align 1
@.str.310 = private unnamed_addr constant [4 x i8] c"wma\00", align 1
@.str.311 = private unnamed_addr constant [15 x i8] c"audio/x-ms-wma\00", align 1
@.str.312 = private unnamed_addr constant [4 x i8] c"wmv\00", align 1
@.str.313 = private unnamed_addr constant [15 x i8] c"video/x-ms-wmv\00", align 1
@.str.314 = private unnamed_addr constant [4 x i8] c"wmx\00", align 1
@.str.315 = private unnamed_addr constant [15 x i8] c"video/x-ms-wmx\00", align 1
@.str.316 = private unnamed_addr constant [4 x i8] c"wrl\00", align 1
@.str.317 = private unnamed_addr constant [4 x i8] c"wvx\00", align 1
@.str.318 = private unnamed_addr constant [15 x i8] c"video/x-ms-wvx\00", align 1
@.str.319 = private unnamed_addr constant [4 x i8] c"xbm\00", align 1
@.str.320 = private unnamed_addr constant [16 x i8] c"image/x-xbitmap\00", align 1
@.str.321 = private unnamed_addr constant [4 x i8] c"xlc\00", align 1
@.str.322 = private unnamed_addr constant [25 x i8] c"application/vnd.ms-excel\00", align 1
@.str.323 = private unnamed_addr constant [4 x i8] c"xll\00", align 1
@.str.324 = private unnamed_addr constant [4 x i8] c"xlm\00", align 1
@.str.325 = private unnamed_addr constant [4 x i8] c"xls\00", align 1
@.str.326 = private unnamed_addr constant [4 x i8] c"xlw\00", align 1
@.str.327 = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@.str.328 = private unnamed_addr constant [9 x i8] c"text/xml\00", align 1
@.str.329 = private unnamed_addr constant [4 x i8] c"xpm\00", align 1
@.str.330 = private unnamed_addr constant [16 x i8] c"image/x-xpixmap\00", align 1
@.str.331 = private unnamed_addr constant [4 x i8] c"xwd\00", align 1
@.str.332 = private unnamed_addr constant [20 x i8] c"image/x-xwindowdump\00", align 1
@.str.333 = private unnamed_addr constant [4 x i8] c"xyz\00", align 1
@.str.334 = private unnamed_addr constant [4 x i8] c"zip\00", align 1
@.str.335 = private unnamed_addr constant [16 x i8] c"application/zip\00", align 1
@zRoot = internal global i8* null, align 8
@.str.336 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.337 = private unnamed_addr constant [31 x i8] c"cannot chdir to [%s] from [%s]\00", align 1
@nRequest = internal global i32 0, align 4
@useTimeout = internal global i32 1, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@beginTime = internal global %struct.timeval zeroinitializer, align 8
@omitLog = internal global i32 0, align 4
@nIn = internal global i32 0, align 4
@zMethod = internal global i8* null, align 8
@zScript = internal global i8* null, align 8
@zRealScript = internal global i8* null, align 8
@zProtocol = internal global i8* null, align 8
@.str.338 = private unnamed_addr constant [6 x i8] c"HTTP/\00", align 1
@.str.339 = private unnamed_addr constant [16 x i8] c"400 Bad Request\00", align 1
@.str.340 = private unnamed_addr constant [99 x i8] c"Content-type: text/plain; charset=utf-8\0D\0A\0D\0AThis server does not understand the requested protocol\0A\00", align 1
@nOut = internal global i32 0, align 4
@closeConnection = internal global i32 0, align 4
@.str.341 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.342 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str.343 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.344 = private unnamed_addr constant [20 x i8] c"501 Not Implemented\00", align 1
@.str.345 = private unnamed_addr constant [93 x i8] c"Content-type: text/plain; charset=utf-8\0D\0A\0D\0AThe %s method is not implemented on this server.\0A\00", align 1
@zCookie = internal global i8* null, align 8
@zAuthType = internal global i8* null, align 8
@zRemoteUser = internal global i8* null, align 8
@zReferer = internal global i8* null, align 8
@zIfNoneMatch = internal global i8* null, align 8
@zIfModifiedSince = internal global i8* null, align 8
@rangeEnd = internal global i32 0, align 4
@.str.346 = private unnamed_addr constant [12 x i8] c"User-Agent:\00", align 1
@zAgent = internal global i8* null, align 8
@.str.347 = private unnamed_addr constant [8 x i8] c"Accept:\00", align 1
@zAccept = internal global i8* null, align 8
@.str.348 = private unnamed_addr constant [17 x i8] c"Accept-Encoding:\00", align 1
@zAcceptEncoding = internal global i8* null, align 8
@.str.349 = private unnamed_addr constant [16 x i8] c"Content-length:\00", align 1
@zContentLength = internal global i8* null, align 8
@.str.350 = private unnamed_addr constant [14 x i8] c"Content-type:\00", align 1
@zContentType = internal global i8* null, align 8
@.str.351 = private unnamed_addr constant [9 x i8] c"Referer:\00", align 1
@.str.352 = private unnamed_addr constant [12 x i8] c"devids.net/\00", align 1
@.str.353 = private unnamed_addr constant [16 x i8] c"devids.net.smut\00", align 1
@.str.354 = private unnamed_addr constant [8 x i8] c"Cookie:\00", align 1
@.str.355 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.356 = private unnamed_addr constant [12 x i8] c"Connection:\00", align 1
@.str.357 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.358 = private unnamed_addr constant [11 x i8] c"keep-alive\00", align 1
@.str.359 = private unnamed_addr constant [6 x i8] c"Host:\00", align 1
@zHttpHost = internal global i8* null, align 8
@zServerName = internal global i8* null, align 8
@zServerPort = internal global i8* null, align 8
@zRealPort = internal global i8* null, align 8
@.str.360 = private unnamed_addr constant [15 x i8] c"Authorization:\00", align 1
@zAuthArg = internal global i8* null, align 8
@.str.361 = private unnamed_addr constant [15 x i8] c"If-None-Match:\00", align 1
@.str.362 = private unnamed_addr constant [19 x i8] c"If-Modified-Since:\00", align 1
@.str.363 = private unnamed_addr constant [7 x i8] c"Range:\00", align 1
@.str.364 = private unnamed_addr constant [12 x i8] c"bytes=%d-%d\00", align 1
@rangeStart = internal global i32 0, align 4
@.str.365 = private unnamed_addr constant [10 x i8] c"Windows 9\00", align 1
@.str.366 = private unnamed_addr constant [16 x i8] c"Download Master\00", align 1
@.str.367 = private unnamed_addr constant [8 x i8] c"Ezooms/\00", align 1
@.str.368 = private unnamed_addr constant [8 x i8] c"HTTrace\00", align 1
@.str.369 = private unnamed_addr constant [10 x i8] c"AhrefsBot\00", align 1
@.str.370 = private unnamed_addr constant [15 x i8] c"MicroMessenger\00", align 1
@.str.371 = private unnamed_addr constant [15 x i8] c"OPPO A33 Build\00", align 1
@.str.372 = private unnamed_addr constant [11 x i8] c"SemrushBot\00", align 1
@.str.373 = private unnamed_addr constant [13 x i8] c"MegaIndex.ru\00", align 1
@.str.374 = private unnamed_addr constant [8 x i8] c"MJ12bot\00", align 1
@.str.375 = private unnamed_addr constant [15 x i8] c"Chrome/0.A.B.C\00", align 1
@.str.376 = private unnamed_addr constant [10 x i8] c"Neevabot/\00", align 1
@.str.377 = private unnamed_addr constant [9 x i8] c"BLEXBot/\00", align 1
@__const.ProcessOneRequest.azDisallow = private unnamed_addr constant [13 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.365, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.366, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.367, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.368, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.369, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.370, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.371, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.372, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.373, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.375, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.376, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.377, i32 0, i32 0)], align 16
@.str.378 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@zQuerySuffix = internal global i8* null, align 8
@.str.379 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@zQueryString = internal global i8* null, align 8
@.str.380 = private unnamed_addr constant [22 x i8] c"500 Request too large\00", align 1
@.str.381 = private unnamed_addr constant [63 x i8] c"Content-type: text/plain; charset=utf-8\0D\0A\0D\0AToo much POST data\0A\00", align 1
@zTmpNamBuf = internal global [500 x i8] zeroinitializer, align 16
@.str.382 = private unnamed_addr constant [23 x i8] c"/tmp/-post-data-XXXXXX\00", align 1
@zTmpNam = internal global i8* null, align 8
@.str.383 = private unnamed_addr constant [54 x i8] c"Cannot create a temp file in which to store POST data\00", align 1
@.str.384 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.385 = private unnamed_addr constant [28 x i8] c"500 Cannot create /tmp file\00", align 1
@.str.386 = private unnamed_addr constant [76 x i8] c"Content-type: text/plain; charset=utf-8\0D\0A\0D\0ACould not open \22%s\22 for writing\0A\00", align 1
@.str.387 = private unnamed_addr constant [14 x i8] c"/.well-known/\00", align 1
@.str.388 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.389 = private unnamed_addr constant [9 x i8] c".website\00", align 1
@.str.390 = private unnamed_addr constant [19 x i8] c"%s/default.website\00", align 1
@standalone = internal global i32 0, align 4
@.str.391 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@zHome = internal global i8* null, align 8
@.str.392 = private unnamed_addr constant [16 x i8] c"/not-found.html\00", align 1
@ProcessOneRequest.azIndex = internal global [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.393, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.394, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.395, i32 0, i32 0)], align 16
@.str.393 = private unnamed_addr constant [6 x i8] c"/home\00", align 1
@.str.394 = private unnamed_addr constant [12 x i8] c"/index.html\00", align 1
@.str.395 = private unnamed_addr constant [11 x i8] c"/index.cgi\00", align 1
@zFile = internal global i8* null, align 8
@zPathInfo = internal global i8* null, align 8
@lenFile = internal global i32 0, align 4
@zDir = internal global i8* null, align 8
@.str.396 = private unnamed_addr constant [9 x i8] c"%s/-auth\00", align 1
@.str.397 = private unnamed_addr constant [26 x i8] c"GATEWAY_INTERFACE=CGI/1.0\00", align 1
@cgienv = internal global [27 x %struct.anon.0] [%struct.anon.0 { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.480, i32 0, i32 0), i8** @zContentLength }, %struct.anon.0 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.481, i32 0, i32 0), i8** @zAuthType }, %struct.anon.0 { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.482, i32 0, i32 0), i8** @zAuthArg }, %struct.anon.0 { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.483, i32 0, i32 0), i8** @zContentType }, %struct.anon.0 { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.484, i32 0, i32 0), i8** @zHome }, %struct.anon.0 { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.485, i32 0, i32 0), i8** @zAccept }, %struct.anon.0 { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.486, i32 0, i32 0), i8** @zAcceptEncoding }, %struct.anon.0 { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.487, i32 0, i32 0), i8** @zCookie }, %struct.anon.0 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.488, i32 0, i32 0), i8** @zHttpHost }, %struct.anon.0 { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.489, i32 0, i32 0), i8** @zIfModifiedSince }, %struct.anon.0 { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.490, i32 0, i32 0), i8** @zIfNoneMatch }, %struct.anon.0 { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.491, i32 0, i32 0), i8** @zReferer }, %struct.anon.0 { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.492, i32 0, i32 0), i8** @zAgent }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.493, i32 0, i32 0), i8** @default_path }, %struct.anon.0 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.494, i32 0, i32 0), i8** @zPathInfo }, %struct.anon.0 { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.495, i32 0, i32 0), i8** @zQueryString }, %struct.anon.0 { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.496, i32 0, i32 0), i8** @zRemoteAddr }, %struct.anon.0 { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.497, i32 0, i32 0), i8** @zMethod }, %struct.anon.0 { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.498, i32 0, i32 0), i8** @zScript }, %struct.anon.0 { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.499, i32 0, i32 0), i8** @zRemoteUser }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.500, i32 0, i32 0), i8** @zScgi }, %struct.anon.0 { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.501, i32 0, i32 0), i8** @zDir }, %struct.anon.0 { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.502, i32 0, i32 0), i8** @zFile }, %struct.anon.0 { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.503, i32 0, i32 0), i8** @zRealScript }, %struct.anon.0 { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.504, i32 0, i32 0), i8** @zServerName }, %struct.anon.0 { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.505, i32 0, i32 0), i8** @zServerPort }, %struct.anon.0 { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.506, i32 0, i32 0), i8** @zProtocol }], align 16
@useHttps = internal global i32 0, align 4
@.str.398 = private unnamed_addr constant [9 x i8] c"HTTPS=on\00", align 1
@.str.399 = private unnamed_addr constant [21 x i8] c"REQUEST_SCHEME=https\00", align 1
@.str.400 = private unnamed_addr constant [20 x i8] c"REQUEST_SCHEME=http\00", align 1
@.str.401 = private unnamed_addr constant [40 x i8] c"Unable to duplication file descriptor 0\00", align 1
@.str.402 = private unnamed_addr constant [5 x i8] c"nph-\00", align 1
@.str.403 = private unnamed_addr constant [44 x i8] c"Unable to create a pipe for the CGI program\00", align 1
@.str.404 = private unnamed_addr constant [44 x i8] c"Unable to duplicate file descriptor %d to 1\00", align 1
@.str.405 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.406 = private unnamed_addr constant [6 x i8] c".scgi\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@ipv4Only = internal global i32 0, align 4
@ipv6Only = internal global i32 0, align 4
@.str.407 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.408 = private unnamed_addr constant [28 x i8] c"could not get addr info: %s\00", align 1
@.str.409 = private unnamed_addr constant [17 x i8] c"bind failed: %s\0A\00", align 1
@.str.410 = private unnamed_addr constant [21 x i8] c"listen() failed: %s\0A\00", align 1
@.str.411 = private unnamed_addr constant [25 x i8] c"cannot open any sockets\0A\00", align 1
@.str.412 = private unnamed_addr constant [15 x i8] c"listener[i]>=0\00", align 1
@__PRETTY_FUNCTION__.http_server = private unnamed_addr constant [35 x i8] c"int http_server(const char *, int)\00", align 1
@.str.413 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.414 = private unnamed_addr constant [6 x i8] c"-user\00", align 1
@.str.415 = private unnamed_addr constant [6 x i8] c"-root\00", align 1
@.str.416 = private unnamed_addr constant [9 x i8] c"-logfile\00", align 1
@zLogFile = internal global i8* null, align 8
@.str.417 = private unnamed_addr constant [9 x i8] c"-max-age\00", align 1
@mxAge = internal global i32 120, align 4
@.str.418 = private unnamed_addr constant [9 x i8] c"-max-cpu\00", align 1
@maxCpu = internal global i32 30, align 4
@.str.419 = private unnamed_addr constant [7 x i8] c"-https\00", align 1
@.str.420 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.421 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@zHttp = internal global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.421, i32 0, i32 0), align 8
@.str.422 = private unnamed_addr constant [12 x i8] c"REMOTE_HOST\00", align 1
@zRemoteAddr = internal global i8* null, align 8
@.str.423 = private unnamed_addr constant [6 x i8] c"-port\00", align 1
@.str.424 = private unnamed_addr constant [8 x i8] c"-family\00", align 1
@.str.425 = private unnamed_addr constant [5 x i8] c"ipv4\00", align 1
@.str.426 = private unnamed_addr constant [5 x i8] c"ipv6\00", align 1
@.str.427 = private unnamed_addr constant [27 x i8] c"unknown IP protocol: [%s]\0A\00", align 1
@.str.428 = private unnamed_addr constant [6 x i8] c"-jail\00", align 1
@.str.429 = private unnamed_addr constant [7 x i8] c"-debug\00", align 1
@.str.430 = private unnamed_addr constant [7 x i8] c"-input\00", align 1
@.str.431 = private unnamed_addr constant [31 x i8] c"cannot open --input file \22%s\22\0A\00", align 1
@.str.432 = private unnamed_addr constant [10 x i8] c"-datetest\00", align 1
@.str.433 = private unnamed_addr constant [4 x i8] c"Ok\0A\00", align 1
@.str.434 = private unnamed_addr constant [24 x i8] c"unknown argument: [%s]\0A\00", align 1
@.str.435 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.436 = private unnamed_addr constant [20 x i8] c"no --root specified\00", align 1
@.str.437 = private unnamed_addr constant [32 x i8] c"cannot change to directory [%s]\00", align 1
@.str.438 = private unnamed_addr constant [29 x i8] c"unable to create chroot jail\00", align 1
@.str.439 = private unnamed_addr constant [23 x i8] c"failed to start server\00", align 1
@.str.440 = private unnamed_addr constant [26 x i8] c"cannot set group-id to %d\00", align 1
@.str.441 = private unnamed_addr constant [25 x i8] c"cannot set user-id to %d\00", align 1
@.str.442 = private unnamed_addr constant [18 x i8] c"no such user [%s]\00", align 1
@.str.443 = private unnamed_addr constant [19 x i8] c"cannot run as root\00", align 1
@.str.444 = private unnamed_addr constant [8 x i8] c"::ffff:\00", align 1
@Rfc822Date.zDate = internal global [100 x i8] zeroinitializer, align 16
@.str.445 = private unnamed_addr constant [25 x i8] c"%a, %d %b %Y %H:%M:%S %Z\00", align 1
@.str.446 = private unnamed_addr constant [23 x i8] c"500 Server Malfunction\00", align 1
@.str.447 = private unnamed_addr constant [87 x i8] c"Content-type: text/plain; charset=utf-8\0D\0A\0D\0AWeb server malfunctioned; error number %d\0A\0A\00", align 1
@.str.448 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@debugFlag = internal global i32 0, align 4
@zReplyStatus = internal global [4 x i8] zeroinitializer, align 1
@statusSent = internal global i32 0, align 4
@.str.449 = private unnamed_addr constant [8 x i8] c"%s %s\0D\0A\00", align 1
@.str.450 = private unnamed_addr constant [20 x i8] c"Connection: close\0D\0A\00", align 1
@.str.451 = private unnamed_addr constant [25 x i8] c"Connection: keep-alive\0D\0A\00", align 1
@.str.452 = private unnamed_addr constant [5 x i8] c"Date\00", align 1
@.str.453 = private unnamed_addr constant [9 x i8] c"%s: %s\0D\0A\00", align 1
@.str.454 = private unnamed_addr constant [18 x i8] c"%Y-%m-%d %H:%M:%S\00", align 1
@.str.455 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.456 = private unnamed_addr constant [77 x i8] c"%s,%s,\22%s://%s%s\22,\22%s\22,%s,%d,%d,%lld,%lld,%lld,%lld,%lld,%d,\22%s\22,\22%s\22,%d,%d\0A\00", align 1
@priorSelf = internal global %struct.rusage zeroinitializer, align 8
@priorChild = internal global %struct.rusage zeroinitializer, align 8
@.str.457 = private unnamed_addr constant [14 x i8] c"404 Not Found\00", align 1
@.str.458 = private unnamed_addr constant [183 x i8] c"Content-type: text/html; charset=utf-8\0D\0A\0D\0A<head><title lineno=\22%d\22>Not Found</title></head>\0A<body><h1>Document Not Found</h1>\0AThe document %s is not available on this server\0A</body>\0A\00", align 1
@.str.459 = private unnamed_addr constant [14 x i8] c"403 Forbidden\00", align 1
@.str.460 = private unnamed_addr constant [58 x i8] c"Content-type: text/plain; charset=utf-8\0D\0A\0D\0AAccess denied\0A\00", align 1
@allowedInName = internal constant <{ [127 x i8], [129 x i8] }> <{ [127 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\01\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\01", [129 x i8] zeroinitializer }>, align 16
@.str.462 = private unnamed_addr constant [4 x i8] c"998\00", align 1
@.str.463 = private unnamed_addr constant [23 x i8] c"301 Permanent Redirect\00", align 1
@.str.464 = private unnamed_addr constant [23 x i8] c"308 Permanent Redirect\00", align 1
@.str.465 = private unnamed_addr constant [23 x i8] c"302 Temporary Redirect\00", align 1
@.str.466 = private unnamed_addr constant [24 x i8] c"Location: %s://%s%s%s\0D\0A\00", align 1
@.str.467 = private unnamed_addr constant [27 x i8] c"Location: %s://%s:%s%s%s\0D\0A\00", align 1
@.str.468 = private unnamed_addr constant [20 x i8] c"Content-length: 0\0D\0A\00", align 1
@.str.469 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.470 = private unnamed_addr constant [14 x i8] c"unknown realm\00", align 1
@.str.471 = private unnamed_addr constant [6 x i8] c"realm\00", align 1
@.str.472 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.473 = private unnamed_addr constant [11 x i8] c"https-only\00", align 1
@.str.474 = private unnamed_addr constant [14 x i8] c"http-redirect\00", align 1
@.str.475 = private unnamed_addr constant [7 x i8] c"anyone\00", align 1
@.str.476 = private unnamed_addr constant [27 x i8] c"401 Authorization Required\00", align 1
@.str.477 = private unnamed_addr constant [216 x i8] c"WWW-Authenticate: Basic realm=\22%s\22\0D\0AContent-type: text/html; charset=utf-8\0D\0A\0D\0A<head><title>Not Authorized</title></head>\0A<body><h1>401 Not Authorized</h1>\0AA login and password are required for this document\0A</body>\0A\00", align 1
@.str.478 = private unnamed_addr constant [28 x i8] c"500 CGI Configuration Error\00", align 1
@.str.479 = private unnamed_addr constant [106 x i8] c"Content-type: text/plain; charset=utf-8\0D\0A\0D\0AThe CGI program %s is writable by users other than its owner.\0A\00", align 1
@.str.480 = private unnamed_addr constant [15 x i8] c"CONTENT_LENGTH\00", align 1
@.str.481 = private unnamed_addr constant [10 x i8] c"AUTH_TYPE\00", align 1
@.str.482 = private unnamed_addr constant [13 x i8] c"AUTH_CONTENT\00", align 1
@.str.483 = private unnamed_addr constant [13 x i8] c"CONTENT_TYPE\00", align 1
@.str.484 = private unnamed_addr constant [14 x i8] c"DOCUMENT_ROOT\00", align 1
@.str.485 = private unnamed_addr constant [12 x i8] c"HTTP_ACCEPT\00", align 1
@.str.486 = private unnamed_addr constant [21 x i8] c"HTTP_ACCEPT_ENCODING\00", align 1
@.str.487 = private unnamed_addr constant [12 x i8] c"HTTP_COOKIE\00", align 1
@.str.488 = private unnamed_addr constant [10 x i8] c"HTTP_HOST\00", align 1
@.str.489 = private unnamed_addr constant [23 x i8] c"HTTP_IF_MODIFIED_SINCE\00", align 1
@.str.490 = private unnamed_addr constant [19 x i8] c"HTTP_IF_NONE_MATCH\00", align 1
@.str.491 = private unnamed_addr constant [13 x i8] c"HTTP_REFERER\00", align 1
@.str.492 = private unnamed_addr constant [16 x i8] c"HTTP_USER_AGENT\00", align 1
@.str.493 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@default_path = internal global i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.507, i32 0, i32 0), align 8
@.str.494 = private unnamed_addr constant [10 x i8] c"PATH_INFO\00", align 1
@.str.495 = private unnamed_addr constant [13 x i8] c"QUERY_STRING\00", align 1
@.str.496 = private unnamed_addr constant [12 x i8] c"REMOTE_ADDR\00", align 1
@.str.497 = private unnamed_addr constant [15 x i8] c"REQUEST_METHOD\00", align 1
@.str.498 = private unnamed_addr constant [12 x i8] c"REQUEST_URI\00", align 1
@.str.499 = private unnamed_addr constant [12 x i8] c"REMOTE_USER\00", align 1
@.str.500 = private unnamed_addr constant [5 x i8] c"SCGI\00", align 1
@zScgi = internal global i8* null, align 8
@.str.501 = private unnamed_addr constant [17 x i8] c"SCRIPT_DIRECTORY\00", align 1
@.str.502 = private unnamed_addr constant [16 x i8] c"SCRIPT_FILENAME\00", align 1
@.str.503 = private unnamed_addr constant [12 x i8] c"SCRIPT_NAME\00", align 1
@.str.504 = private unnamed_addr constant [12 x i8] c"SERVER_NAME\00", align 1
@.str.505 = private unnamed_addr constant [12 x i8] c"SERVER_PORT\00", align 1
@.str.506 = private unnamed_addr constant [16 x i8] c"SERVER_PROTOCOL\00", align 1
@.str.507 = private unnamed_addr constant [14 x i8] c"/bin:/usr/bin\00", align 1
@.str.508 = private unnamed_addr constant [5 x i8] c"() {\00", align 1
@.str.509 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@.str.510 = private unnamed_addr constant [10 x i8] c"500 Error\00", align 1
@.str.511 = private unnamed_addr constant [168 x i8] c"Content-type: text/html; charset=utf-8\0D\0A\0D\0A<head><title>CGI Program Error</title></head>\0A<body><h1>CGI Program Error</h1>\0AThe CGI program %s generated an error\0A</body>\0A\00", align 1
@.str.512 = private unnamed_addr constant [10 x i8] c"Location:\00", align 1
@.str.513 = private unnamed_addr constant [13 x i8] c"302 Redirect\00", align 1
@.str.514 = private unnamed_addr constant [15 x i8] c"Location: %s\0D\0A\00", align 1
@.str.515 = private unnamed_addr constant [8 x i8] c"Status:\00", align 1
@.str.516 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.517 = private unnamed_addr constant [24 x i8] c"Out of memory: %d bytes\00", align 1
@.str.518 = private unnamed_addr constant [20 x i8] c"206 Partial Content\00", align 1
@.str.519 = private unnamed_addr constant [32 x i8] c"Content-Range: bytes %d-%d/%d\0D\0A\00", align 1
@.str.520 = private unnamed_addr constant [7 x i8] c"200 OK\00", align 1
@.str.521 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.522 = private unnamed_addr constant [23 x i8] c"Content-length: %d\0D\0A\0D\0A\00", align 1
@.str.523 = private unnamed_addr constant [25 x i8] c"Content-length: %d\0D\0A\0D\0A%s\00", align 1
@.str.524 = private unnamed_addr constant [22 x i8] c"Content-length: 0\0D\0A\0D\0A\00", align 1
@.str.525 = private unnamed_addr constant [18 x i8] c"cannot open \22%s\22\0A\00", align 1
@.str.526 = private unnamed_addr constant [18 x i8] c"cannot read \22%s\22\0A\00", align 1
@.str.527 = private unnamed_addr constant [6 x i8] c"SCGI \00", align 1
@.str.528 = private unnamed_addr constant [29 x i8] c"misformatted SCGI spec \22%s\22\0A\00", align 1
@.str.529 = private unnamed_addr constant [9 x i8] c"relight:\00", align 1
@.str.530 = private unnamed_addr constant [10 x i8] c"fallback:\00", align 1
@.str.531 = private unnamed_addr constant [41 x i8] c"unrecognized line in SCGI spec: \22%s %s\22\0A\00", align 1
@.str.532 = private unnamed_addr constant [42 x i8] c"cannot resolve SCGI server name %s:%s\0A%s\0A\00", align 1
@.str.533 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.534 = private unnamed_addr constant [30 x i8] c"Relight failed with %d: \22%s\22\0A\00", align 1
@.str.535 = private unnamed_addr constant [25 x i8] c"bad fallback file: \22%s\22\0A\00", align 1
@.str.536 = private unnamed_addr constant [38 x i8] c"cannot open socket to SCGI server %s\0A\00", align 1
@.str.537 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.538 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.539 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str.540 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.541 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.542 = private unnamed_addr constant [7 x i8] c"m%xs%x\00", align 1
@.str.543 = private unnamed_addr constant [17 x i8] c"304 Not Modified\00", align 1
@.str.544 = private unnamed_addr constant [14 x i8] c"Last-Modified\00", align 1
@.str.545 = private unnamed_addr constant [28 x i8] c"Cache-Control: max-age=%d\0D\0A\00", align 1
@.str.546 = private unnamed_addr constant [13 x i8] c"ETag: \22%s\22\0D\0A\00", align 1
@.str.547 = private unnamed_addr constant [34 x i8] c"Content-type: %s; charset=utf-8\0D\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @ParseRfc822Date(i8* %zDate) #0 {
entry:
  %retval = alloca i64, align 8
  %zDate.addr = alloca i8*, align 8
  %mday = alloca i32, align 4
  %mon = alloca i32, align 4
  %year = alloca i32, align 4
  %yday = alloca i32, align 4
  %hour = alloca i32, align 4
  %min = alloca i32, align 4
  %sec = alloca i32, align 4
  %zIgnore = alloca [4 x i8], align 1
  %zMonth = alloca [4 x i8], align 1
  %nDay = alloca i32, align 4
  %isLeapYr = alloca i32, align 4
  store i8* %zDate, i8** %zDate.addr, align 8
  %0 = load i8*, i8** %zDate.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %zIgnore, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %zMonth, i64 0, i64 0
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i8* %arraydecay, i32* %mday, i8* %arraydecay1, i32* %year, i32* %hour, i32* %min, i32* %sec) #7
  %cmp = icmp eq i32 7, %call
  br i1 %cmp, label %if.then, label %if.end40

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %year, align 4
  %cmp2 = icmp sgt i32 %1, 1900
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %2 = load i32, i32* %year, align 4
  %sub = sub nsw i32 %2, 1900
  store i32 %sub, i32* %year, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  store i32 0, i32* %mon, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %mon, align 4
  %cmp4 = icmp slt i32 %3, 12
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %mon, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [12 x i8*], [12 x i8*]* @ParseRfc822Date.azMonths, i64 0, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %arraydecay5 = getelementptr inbounds [4 x i8], [4 x i8]* %zMonth, i64 0, i64 0
  %call6 = call i32 @strncmp(i8* %5, i8* %arraydecay5, i64 3) #8
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end38, label %if.then7

if.then7:                                         ; preds = %for.body
  %6 = load i32, i32* %year, align 4
  %rem = srem i32 %6, 4
  %cmp8 = icmp eq i32 %rem, 0
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then7
  %7 = load i32, i32* %year, align 4
  %rem9 = srem i32 %7, 100
  %cmp10 = icmp ne i32 %rem9, 0
  br i1 %cmp10, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %8 = load i32, i32* %year, align 4
  %add = add nsw i32 %8, 300
  %rem11 = srem i32 %add, 400
  %cmp12 = icmp eq i32 %rem11, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %9 = phi i1 [ true, %land.rhs ], [ %cmp12, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %if.then7
  %10 = phi i1 [ false, %if.then7 ], [ %9, %lor.end ]
  %land.ext = zext i1 %10 to i32
  store i32 %land.ext, i32* %isLeapYr, align 4
  %11 = load i32, i32* %mon, align 4
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [12 x i32], [12 x i32]* @ParseRfc822Date.priorDays, i64 0, i64 %idxprom13
  %12 = load i32, i32* %arrayidx14, align 4
  %13 = load i32, i32* %mday, align 4
  %add15 = add nsw i32 %12, %13
  %sub16 = sub nsw i32 %add15, 1
  store i32 %sub16, i32* %yday, align 4
  %14 = load i32, i32* %isLeapYr, align 4
  %tobool17 = icmp ne i32 %14, 0
  br i1 %tobool17, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %land.end
  %15 = load i32, i32* %mon, align 4
  %cmp18 = icmp sgt i32 %15, 1
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %land.lhs.true
  %16 = load i32, i32* %yday, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %yday, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %land.lhs.true, %land.end
  %17 = load i32, i32* %year, align 4
  %sub21 = sub nsw i32 %17, 70
  %mul = mul nsw i32 %sub21, 365
  %18 = load i32, i32* %year, align 4
  %sub22 = sub nsw i32 %18, 69
  %div = sdiv i32 %sub22, 4
  %add23 = add nsw i32 %mul, %div
  %19 = load i32, i32* %year, align 4
  %div24 = sdiv i32 %19, 100
  %sub25 = sub nsw i32 %add23, %div24
  %20 = load i32, i32* %year, align 4
  %add26 = add nsw i32 %20, 300
  %div27 = sdiv i32 %add26, 400
  %add28 = add nsw i32 %sub25, %div27
  %21 = load i32, i32* %yday, align 4
  %add29 = add nsw i32 %add28, %21
  store i32 %add29, i32* %nDay, align 4
  %22 = load i32, i32* %nDay, align 4
  %mul30 = mul nsw i32 %22, 24
  %23 = load i32, i32* %hour, align 4
  %add31 = add nsw i32 %mul30, %23
  %conv = sext i32 %add31 to i64
  %mul32 = mul nsw i64 %conv, 60
  %24 = load i32, i32* %min, align 4
  %conv33 = sext i32 %24 to i64
  %add34 = add nsw i64 %mul32, %conv33
  %mul35 = mul nsw i64 %add34, 60
  %25 = load i32, i32* %sec, align 4
  %conv36 = sext i32 %25 to i64
  %add37 = add nsw i64 %mul35, %conv36
  store i64 %add37, i64* %retval, align 8
  br label %return

if.end38:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end38
  %26 = load i32, i32* %mon, align 4
  %inc39 = add nsw i32 %26, 1
  store i32 %inc39, i32* %mon, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end40

if.end40:                                         ; preds = %for.end, %entry
  store i64 0, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end40, %if.end20
  %27 = load i64, i64* %retval, align 8
  ret i64 %27
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @TestParseRfc822Date() #0 {
entry:
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  store i64 0, i64* %t1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %t1, align 8
  %cmp = icmp slt i64 %0, 2147483647
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %t1, align 8
  %call = call i8* @Rfc822Date(i64 %1)
  %call1 = call i64 @ParseRfc822Date(i8* %call)
  store i64 %call1, i64* %t2, align 8
  %2 = load i64, i64* %t1, align 8
  %3 = load i64, i64* %t2, align 8
  %cmp2 = icmp eq i64 %2, %3
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 670, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.TestParseRfc822Date, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i64, i64* %t1, align 8
  %add = add nsw i64 %4, 127
  store i64 %add, i64* %t1, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @Rfc822Date(i64 %t) #0 {
entry:
  %t.addr = alloca i64, align 8
  %tm = alloca %struct.tm*, align 8
  store i64 %t, i64* %t.addr, align 8
  %call = call %struct.tm* @gmtime(i64* %t.addr) #7
  store %struct.tm* %call, %struct.tm** %tm, align 8
  %0 = load %struct.tm*, %struct.tm** %tm, align 8
  %call1 = call i64 @strftime(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @Rfc822Date.zDate, i64 0, i64 0), i64 100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.445, i64 0, i64 0), %struct.tm* %0) #7
  ret i8* getelementptr inbounds ([100 x i8], [100 x i8]* @Rfc822Date.zDate, i64 0, i64 0)
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @Decode64(i8* %z64) #0 {
entry:
  %z64.addr = alloca i8*, align 8
  %zData = alloca i8*, align 8
  %n64 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store i8* %z64, i8** %z64.addr, align 8
  %0 = load i32, i32* @Decode64.isInit, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 128
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [128 x i32], [128 x i32]* @Decode64.trans, i64 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.end
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [65 x i8], [65 x i8]* @Decode64.zBase, i64 0, i64 %idxprom2
  %5 = load i8, i8* %arrayidx3, align 1
  %tobool4 = icmp ne i8 %5, 0
  br i1 %tobool4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond1
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [65 x i8], [65 x i8]* @Decode64.zBase, i64 0, i64 %idxprom6
  %8 = load i8, i8* %arrayidx7, align 1
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, 127
  %idxprom8 = sext i32 %and to i64
  %arrayidx9 = getelementptr inbounds [128 x i32], [128 x i32]* @Decode64.trans, i64 0, i64 %idxprom8
  store i32 %6, i32* %arrayidx9, align 4
  br label %for.inc10

for.inc10:                                        ; preds = %for.body5
  %9 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %9, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond1

for.end12:                                        ; preds = %for.cond1
  store i32 1, i32* @Decode64.isInit, align 4
  br label %if.end

if.end:                                           ; preds = %for.end12, %entry
  %10 = load i8*, i8** %z64.addr, align 8
  %call = call i64 @strlen(i8* %10) #8
  %conv13 = trunc i64 %call to i32
  store i32 %conv13, i32* %n64, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %11 = load i32, i32* %n64, align 4
  %cmp14 = icmp sgt i32 %11, 0
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %12 = load i8*, i8** %z64.addr, align 8
  %13 = load i32, i32* %n64, align 4
  %sub = sub nsw i32 %13, 1
  %idxprom16 = sext i32 %sub to i64
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %idxprom16
  %14 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %14 to i32
  %cmp19 = icmp eq i32 %conv18, 61
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %cmp19, %land.rhs ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %16 = load i32, i32* %n64, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %n64, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %17 = load i8*, i8** %z64.addr, align 8
  store i8* %17, i8** %zData, align 8
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc75, %while.end
  %18 = load i32, i32* %i, align 4
  %add = add nsw i32 %18, 3
  %19 = load i32, i32* %n64, align 4
  %cmp22 = icmp slt i32 %add, %19
  br i1 %cmp22, label %for.body24, label %for.end77

for.body24:                                       ; preds = %for.cond21
  %20 = load i8*, i8** %z64.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %21 to i64
  %arrayidx26 = getelementptr inbounds i8, i8* %20, i64 %idxprom25
  %22 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %22 to i32
  %and28 = and i32 %conv27, 127
  %idxprom29 = sext i32 %and28 to i64
  %arrayidx30 = getelementptr inbounds [128 x i32], [128 x i32]* @Decode64.trans, i64 0, i64 %idxprom29
  %23 = load i32, i32* %arrayidx30, align 4
  store i32 %23, i32* %a, align 4
  %24 = load i8*, i8** %z64.addr, align 8
  %25 = load i32, i32* %i, align 4
  %add31 = add nsw i32 %25, 1
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds i8, i8* %24, i64 %idxprom32
  %26 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %26 to i32
  %and35 = and i32 %conv34, 127
  %idxprom36 = sext i32 %and35 to i64
  %arrayidx37 = getelementptr inbounds [128 x i32], [128 x i32]* @Decode64.trans, i64 0, i64 %idxprom36
  %27 = load i32, i32* %arrayidx37, align 4
  store i32 %27, i32* %b, align 4
  %28 = load i8*, i8** %z64.addr, align 8
  %29 = load i32, i32* %i, align 4
  %add38 = add nsw i32 %29, 2
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds i8, i8* %28, i64 %idxprom39
  %30 = load i8, i8* %arrayidx40, align 1
  %conv41 = sext i8 %30 to i32
  %and42 = and i32 %conv41, 127
  %idxprom43 = sext i32 %and42 to i64
  %arrayidx44 = getelementptr inbounds [128 x i32], [128 x i32]* @Decode64.trans, i64 0, i64 %idxprom43
  %31 = load i32, i32* %arrayidx44, align 4
  store i32 %31, i32* %c, align 4
  %32 = load i8*, i8** %z64.addr, align 8
  %33 = load i32, i32* %i, align 4
  %add45 = add nsw i32 %33, 3
  %idxprom46 = sext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds i8, i8* %32, i64 %idxprom46
  %34 = load i8, i8* %arrayidx47, align 1
  %conv48 = sext i8 %34 to i32
  %and49 = and i32 %conv48, 127
  %idxprom50 = sext i32 %and49 to i64
  %arrayidx51 = getelementptr inbounds [128 x i32], [128 x i32]* @Decode64.trans, i64 0, i64 %idxprom50
  %35 = load i32, i32* %arrayidx51, align 4
  store i32 %35, i32* %d, align 4
  %36 = load i32, i32* %a, align 4
  %shl = shl i32 %36, 2
  %and52 = and i32 %shl, 252
  %37 = load i32, i32* %b, align 4
  %shr = ashr i32 %37, 4
  %and53 = and i32 %shr, 3
  %or = or i32 %and52, %and53
  %conv54 = trunc i32 %or to i8
  %38 = load i8*, i8** %zData, align 8
  %39 = load i32, i32* %j, align 4
  %inc55 = add nsw i32 %39, 1
  store i32 %inc55, i32* %j, align 4
  %idxprom56 = sext i32 %39 to i64
  %arrayidx57 = getelementptr inbounds i8, i8* %38, i64 %idxprom56
  store i8 %conv54, i8* %arrayidx57, align 1
  %40 = load i32, i32* %b, align 4
  %shl58 = shl i32 %40, 4
  %and59 = and i32 %shl58, 240
  %41 = load i32, i32* %c, align 4
  %shr60 = ashr i32 %41, 2
  %and61 = and i32 %shr60, 15
  %or62 = or i32 %and59, %and61
  %conv63 = trunc i32 %or62 to i8
  %42 = load i8*, i8** %zData, align 8
  %43 = load i32, i32* %j, align 4
  %inc64 = add nsw i32 %43, 1
  store i32 %inc64, i32* %j, align 4
  %idxprom65 = sext i32 %43 to i64
  %arrayidx66 = getelementptr inbounds i8, i8* %42, i64 %idxprom65
  store i8 %conv63, i8* %arrayidx66, align 1
  %44 = load i32, i32* %c, align 4
  %shl67 = shl i32 %44, 6
  %and68 = and i32 %shl67, 192
  %45 = load i32, i32* %d, align 4
  %and69 = and i32 %45, 63
  %or70 = or i32 %and68, %and69
  %conv71 = trunc i32 %or70 to i8
  %46 = load i8*, i8** %zData, align 8
  %47 = load i32, i32* %j, align 4
  %inc72 = add nsw i32 %47, 1
  store i32 %inc72, i32* %j, align 4
  %idxprom73 = sext i32 %47 to i64
  %arrayidx74 = getelementptr inbounds i8, i8* %46, i64 %idxprom73
  store i8 %conv71, i8* %arrayidx74, align 1
  br label %for.inc75

for.inc75:                                        ; preds = %for.body24
  %48 = load i32, i32* %i, align 4
  %add76 = add nsw i32 %48, 4
  store i32 %add76, i32* %i, align 4
  br label %for.cond21

for.end77:                                        ; preds = %for.cond21
  %49 = load i32, i32* %i, align 4
  %add78 = add nsw i32 %49, 2
  %50 = load i32, i32* %n64, align 4
  %cmp79 = icmp slt i32 %add78, %50
  br i1 %cmp79, label %if.then81, label %if.else

if.then81:                                        ; preds = %for.end77
  %51 = load i8*, i8** %z64.addr, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %52 to i64
  %arrayidx83 = getelementptr inbounds i8, i8* %51, i64 %idxprom82
  %53 = load i8, i8* %arrayidx83, align 1
  %conv84 = sext i8 %53 to i32
  %and85 = and i32 %conv84, 127
  %idxprom86 = sext i32 %and85 to i64
  %arrayidx87 = getelementptr inbounds [128 x i32], [128 x i32]* @Decode64.trans, i64 0, i64 %idxprom86
  %54 = load i32, i32* %arrayidx87, align 4
  store i32 %54, i32* %a, align 4
  %55 = load i8*, i8** %z64.addr, align 8
  %56 = load i32, i32* %i, align 4
  %add88 = add nsw i32 %56, 1
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds i8, i8* %55, i64 %idxprom89
  %57 = load i8, i8* %arrayidx90, align 1
  %conv91 = sext i8 %57 to i32
  %and92 = and i32 %conv91, 127
  %idxprom93 = sext i32 %and92 to i64
  %arrayidx94 = getelementptr inbounds [128 x i32], [128 x i32]* @Decode64.trans, i64 0, i64 %idxprom93
  %58 = load i32, i32* %arrayidx94, align 4
  store i32 %58, i32* %b, align 4
  %59 = load i8*, i8** %z64.addr, align 8
  %60 = load i32, i32* %i, align 4
  %add95 = add nsw i32 %60, 2
  %idxprom96 = sext i32 %add95 to i64
  %arrayidx97 = getelementptr inbounds i8, i8* %59, i64 %idxprom96
  %61 = load i8, i8* %arrayidx97, align 1
  %conv98 = sext i8 %61 to i32
  %and99 = and i32 %conv98, 127
  %idxprom100 = sext i32 %and99 to i64
  %arrayidx101 = getelementptr inbounds [128 x i32], [128 x i32]* @Decode64.trans, i64 0, i64 %idxprom100
  %62 = load i32, i32* %arrayidx101, align 4
  store i32 %62, i32* %c, align 4
  %63 = load i32, i32* %a, align 4
  %shl102 = shl i32 %63, 2
  %and103 = and i32 %shl102, 252
  %64 = load i32, i32* %b, align 4
  %shr104 = ashr i32 %64, 4
  %and105 = and i32 %shr104, 3
  %or106 = or i32 %and103, %and105
  %conv107 = trunc i32 %or106 to i8
  %65 = load i8*, i8** %zData, align 8
  %66 = load i32, i32* %j, align 4
  %inc108 = add nsw i32 %66, 1
  store i32 %inc108, i32* %j, align 4
  %idxprom109 = sext i32 %66 to i64
  %arrayidx110 = getelementptr inbounds i8, i8* %65, i64 %idxprom109
  store i8 %conv107, i8* %arrayidx110, align 1
  %67 = load i32, i32* %b, align 4
  %shl111 = shl i32 %67, 4
  %and112 = and i32 %shl111, 240
  %68 = load i32, i32* %c, align 4
  %shr113 = ashr i32 %68, 2
  %and114 = and i32 %shr113, 15
  %or115 = or i32 %and112, %and114
  %conv116 = trunc i32 %or115 to i8
  %69 = load i8*, i8** %zData, align 8
  %70 = load i32, i32* %j, align 4
  %inc117 = add nsw i32 %70, 1
  store i32 %inc117, i32* %j, align 4
  %idxprom118 = sext i32 %70 to i64
  %arrayidx119 = getelementptr inbounds i8, i8* %69, i64 %idxprom118
  store i8 %conv116, i8* %arrayidx119, align 1
  br label %if.end147

if.else:                                          ; preds = %for.end77
  %71 = load i32, i32* %i, align 4
  %add120 = add nsw i32 %71, 1
  %72 = load i32, i32* %n64, align 4
  %cmp121 = icmp slt i32 %add120, %72
  br i1 %cmp121, label %if.then123, label %if.end146

if.then123:                                       ; preds = %if.else
  %73 = load i8*, i8** %z64.addr, align 8
  %74 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %74 to i64
  %arrayidx125 = getelementptr inbounds i8, i8* %73, i64 %idxprom124
  %75 = load i8, i8* %arrayidx125, align 1
  %conv126 = sext i8 %75 to i32
  %and127 = and i32 %conv126, 127
  %idxprom128 = sext i32 %and127 to i64
  %arrayidx129 = getelementptr inbounds [128 x i32], [128 x i32]* @Decode64.trans, i64 0, i64 %idxprom128
  %76 = load i32, i32* %arrayidx129, align 4
  store i32 %76, i32* %a, align 4
  %77 = load i8*, i8** %z64.addr, align 8
  %78 = load i32, i32* %i, align 4
  %add130 = add nsw i32 %78, 1
  %idxprom131 = sext i32 %add130 to i64
  %arrayidx132 = getelementptr inbounds i8, i8* %77, i64 %idxprom131
  %79 = load i8, i8* %arrayidx132, align 1
  %conv133 = sext i8 %79 to i32
  %and134 = and i32 %conv133, 127
  %idxprom135 = sext i32 %and134 to i64
  %arrayidx136 = getelementptr inbounds [128 x i32], [128 x i32]* @Decode64.trans, i64 0, i64 %idxprom135
  %80 = load i32, i32* %arrayidx136, align 4
  store i32 %80, i32* %b, align 4
  %81 = load i32, i32* %a, align 4
  %shl137 = shl i32 %81, 2
  %and138 = and i32 %shl137, 252
  %82 = load i32, i32* %b, align 4
  %shr139 = ashr i32 %82, 4
  %and140 = and i32 %shr139, 3
  %or141 = or i32 %and138, %and140
  %conv142 = trunc i32 %or141 to i8
  %83 = load i8*, i8** %zData, align 8
  %84 = load i32, i32* %j, align 4
  %inc143 = add nsw i32 %84, 1
  store i32 %inc143, i32* %j, align 4
  %idxprom144 = sext i32 %84 to i64
  %arrayidx145 = getelementptr inbounds i8, i8* %83, i64 %idxprom144
  store i8 %conv142, i8* %arrayidx145, align 1
  br label %if.end146

if.end146:                                        ; preds = %if.then123, %if.else
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %if.then81
  %85 = load i8*, i8** %zData, align 8
  %86 = load i32, i32* %j, align 4
  %idxprom148 = sext i32 %86 to i64
  %arrayidx149 = getelementptr inbounds i8, i8* %85, i64 %idxprom148
  store i8 0, i8* %arrayidx149, align 1
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @GetMimeType(i8* %zName, i32 %nName) #0 {
entry:
  %retval = alloca i8*, align 8
  %zName.addr = alloca i8*, align 8
  %nName.addr = alloca i32, align 4
  %z = alloca i8*, align 8
  %i = alloca i32, align 4
  %first = alloca i32, align 4
  %last = alloca i32, align 4
  %len = alloca i32, align 4
  %zSuffix = alloca [20 x i8], align 16
  %c = alloca i32, align 4
  store i8* %zName, i8** %zName.addr, align 8
  store i32 %nName, i32* %nName.addr, align 4
  %0 = load i32, i32* %nName.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i8*, i8** %zName.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp ne i32 %conv, 46
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %7 = load i8*, i8** %zName.addr, align 8
  %8 = load i32, i32* %i, align 4
  %add = add nsw i32 %8, 1
  %idxprom3 = sext i32 %add to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 %idxprom3
  store i8* %arrayidx4, i8** %z, align 8
  %9 = load i32, i32* %nName.addr, align 4
  %10 = load i32, i32* %i, align 4
  %sub5 = sub nsw i32 %9, %10
  store i32 %sub5, i32* %len, align 4
  %11 = load i32, i32* %len, align 4
  %cmp6 = icmp slt i32 %11, 19
  br i1 %cmp6, label %if.then, label %if.end40

if.then:                                          ; preds = %for.end
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %zSuffix, i64 0, i64 0
  %12 = load i8*, i8** %z, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %12) #7
  store i32 0, i32* %i, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %if.then
  %13 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds [20 x i8], [20 x i8]* %zSuffix, i64 0, i64 %idxprom9
  %14 = load i8, i8* %arrayidx10, align 1
  %tobool = icmp ne i8 %14, 0
  br i1 %tobool, label %for.body11, label %for.end20

for.body11:                                       ; preds = %for.cond8
  %15 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [20 x i8], [20 x i8]* %zSuffix, i64 0, i64 %idxprom12
  %16 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %16 to i32
  %call15 = call i32 @tolower(i32 %conv14) #8
  %conv16 = trunc i32 %call15 to i8
  %17 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds [20 x i8], [20 x i8]* %zSuffix, i64 0, i64 %idxprom17
  store i8 %conv16, i8* %arrayidx18, align 1
  br label %for.inc19

for.inc19:                                        ; preds = %for.body11
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond8

for.end20:                                        ; preds = %for.cond8
  store i32 0, i32* %first, align 4
  store i32 191, i32* %last, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end39, %for.end20
  %19 = load i32, i32* %first, align 4
  %20 = load i32, i32* %last, align 4
  %cmp21 = icmp sle i32 %19, %20
  br i1 %cmp21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* %first, align 4
  %22 = load i32, i32* %last, align 4
  %add23 = add nsw i32 %21, %22
  %div = sdiv i32 %add23, 2
  store i32 %div, i32* %i, align 4
  %arraydecay24 = getelementptr inbounds [20 x i8], [20 x i8]* %zSuffix, i64 0, i64 0
  %23 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %23 to i64
  %arrayidx26 = getelementptr inbounds [191 x %struct.anon], [191 x %struct.anon]* @GetMimeType.aMime, i64 0, i64 %idxprom25
  %zSuffix27 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx26, i32 0, i32 0
  %24 = load i8*, i8** %zSuffix27, align 8
  %call28 = call i32 @strcmp(i8* %arraydecay24, i8* %24) #8
  store i32 %call28, i32* %c, align 4
  %25 = load i32, i32* %c, align 4
  %cmp29 = icmp eq i32 %25, 0
  br i1 %cmp29, label %if.then31, label %if.end

if.then31:                                        ; preds = %while.body
  %26 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds [191 x %struct.anon], [191 x %struct.anon]* @GetMimeType.aMime, i64 0, i64 %idxprom32
  %zMimetype = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx33, i32 0, i32 2
  %27 = load i8*, i8** %zMimetype, align 8
  store i8* %27, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %while.body
  %28 = load i32, i32* %c, align 4
  %cmp34 = icmp slt i32 %28, 0
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end
  %29 = load i32, i32* %i, align 4
  %sub37 = sub nsw i32 %29, 1
  store i32 %sub37, i32* %last, align 4
  br label %if.end39

if.else:                                          ; preds = %if.end
  %30 = load i32, i32* %i, align 4
  %add38 = add nsw i32 %30, 1
  store i32 %add38, i32* %first, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then36
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end40

if.end40:                                         ; preds = %while.end, %for.end
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i64 0, i64 0), i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end40, %if.then31
  %31 = load i8*, i8** %retval, align 8
  ret i8* %31
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ProcessOneRequest(i32 %forceClose) #0 {
entry:
  %forceClose.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %j0 = alloca i32, align 4
  %z = alloca i8*, align 8
  %statbuf = alloca %struct.stat, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %zLine = alloca [1000 x i8], align 16
  %zBuf = alloca [1000 x i8], align 16
  %zFieldName = alloca i8*, align 8
  %zVal = alloca i8*, align 8
  %inSquare = alloca i32, align 4
  %c = alloca i8, align 1
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %n = alloca i32, align 4
  %azDisallow = alloca [13 x i8*], align 16
  %ii = alloca i64, align 8
  %len = alloca i64, align 8
  %out = alloca %struct._IO_FILE*, align 8
  %zBuf333 = alloca i8*, align 8
  %n334 = alloca i32, align 4
  %c456 = alloca i8, align 1
  %zBuf544 = alloca [1000 x i8], align 16
  %stillSearching = alloca i32, align 4
  %k = alloca i32, align 4
  %jj = alloca i32, align 4
  %zBaseFilename = alloca i8*, align 8
  %zBuf795 = alloca [1000 x i8], align 16
  %px = alloca [2 x i32], align 4
  store i32 %forceClose, i32* %forceClose.addr, align 4
  %0 = load i8*, i8** @zRoot, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** @zRoot, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.336, i64 0, i64 0), %cond.false ]
  %call = call i32 @chdir(i8* %cond) #7
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load i8*, i8** @zRoot, align 8
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %zBuf, i64 0, i64 0
  %call2 = call i8* @getcwd(i8* %arraydecay, i64 999) #7
  call void (i32, i8*, ...) @Malfunction(i32 190, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.337, i64 0, i64 0), i8* %3, i8* %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load i32, i32* @nRequest, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @nRequest, align 4
  %call3 = call void (i32)* @signal(i32 14, void (i32)* @Timeout) #7
  %call4 = call void (i32)* @signal(i32 11, void (i32)* @Timeout) #7
  %call5 = call void (i32)* @signal(i32 13, void (i32)* @Timeout) #7
  %call6 = call void (i32)* @signal(i32 24, void (i32)* @Timeout) #7
  %5 = load i32, i32* @useTimeout, align 4
  %tobool7 = icmp ne i32 %5, 0
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %call9 = call i32 @alarm(i32 15) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  %arraydecay11 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call12 = call i8* @fgets(i8* %arraydecay11, i32 1000, %struct._IO_FILE* %6)
  %cmp13 = icmp eq i8* %call12, null
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end10
  call void @exit(i32 0) #9
  unreachable

if.end16:                                         ; preds = %if.end10
  %call17 = call i32 @gettimeofday(%struct.timeval* @beginTime, i8* null) #7
  store i32 0, i32* @omitLog, align 4
  %arraydecay18 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %call19 = call i64 @strlen(i8* %arraydecay18) #8
  %7 = load i32, i32* @nIn, align 4
  %conv20 = sext i32 %7 to i64
  %add = add i64 %conv20, %call19
  %conv21 = trunc i64 %add to i32
  store i32 %conv21, i32* @nIn, align 4
  %arraydecay22 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %call23 = call i8* @GetFirstElement(i8* %arraydecay22, i8** %z)
  %call24 = call i8* @StrDup(i8* %call23)
  store i8* %call24, i8** @zMethod, align 8
  %8 = load i8*, i8** %z, align 8
  %call25 = call i8* @GetFirstElement(i8* %8, i8** %z)
  %call26 = call i8* @StrDup(i8* %call25)
  store i8* %call26, i8** @zScript, align 8
  store i8* %call26, i8** @zRealScript, align 8
  %9 = load i8*, i8** %z, align 8
  %call27 = call i8* @GetFirstElement(i8* %9, i8** %z)
  %call28 = call i8* @StrDup(i8* %call27)
  store i8* %call28, i8** @zProtocol, align 8
  %10 = load i8*, i8** @zProtocol, align 8
  %cmp29 = icmp eq i8* %10, null
  br i1 %cmp29, label %if.then38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end16
  %11 = load i8*, i8** @zProtocol, align 8
  %call31 = call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.338, i64 0, i64 0), i64 5) #8
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then38, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false
  %12 = load i8*, i8** @zProtocol, align 8
  %call35 = call i64 @strlen(i8* %12) #8
  %cmp36 = icmp ne i64 %call35, 8
  br i1 %cmp36, label %if.then38, label %if.end41

if.then38:                                        ; preds = %lor.lhs.false34, %lor.lhs.false, %if.end16
  call void @StartResponse(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.339, i64 0, i64 0))
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.340, i64 0, i64 0))
  %13 = load i32, i32* @nOut, align 4
  %add40 = add nsw i32 %13, %call39
  store i32 %add40, i32* @nOut, align 4
  call void @MakeLogEntry(i32 0, i32 200)
  call void @exit(i32 0) #9
  unreachable

if.end41:                                         ; preds = %lor.lhs.false34
  %14 = load i8*, i8** @zScript, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %15 to i32
  %cmp44 = icmp ne i32 %conv43, 47
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end41
  call void @NotFound(i32 210)
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end41
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end47
  %16 = load i8*, i8** @zScript, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %17 to i32
  %cmp50 = icmp eq i32 %conv49, 47
  br i1 %cmp50, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i8*, i8** @zScript, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** @zScript, align 8
  %19 = load i8*, i8** @zRealScript, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr52, i8** @zRealScript, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load i32, i32* %forceClose.addr, align 4
  %tobool53 = icmp ne i32 %20, 0
  br i1 %tobool53, label %if.then54, label %if.else

if.then54:                                        ; preds = %while.end
  store i32 1, i32* @closeConnection, align 4
  br label %if.end66

if.else:                                          ; preds = %while.end
  %21 = load i8*, i8** @zProtocol, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %21, i64 5
  %22 = load i8, i8* %arrayidx55, align 1
  %conv56 = sext i8 %22 to i32
  %cmp57 = icmp slt i32 %conv56, 49
  br i1 %cmp57, label %if.then64, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.else
  %23 = load i8*, i8** @zProtocol, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %23, i64 7
  %24 = load i8, i8* %arrayidx60, align 1
  %conv61 = sext i8 %24 to i32
  %cmp62 = icmp slt i32 %conv61, 49
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %lor.lhs.false59, %if.else
  store i32 1, i32* @closeConnection, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %lor.lhs.false59
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then54
  %25 = load i8*, i8** @zMethod, align 8
  %call67 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.341, i64 0, i64 0)) #8
  %cmp68 = icmp ne i32 %call67, 0
  br i1 %cmp68, label %land.lhs.true, label %if.end80

land.lhs.true:                                    ; preds = %if.end66
  %26 = load i8*, i8** @zMethod, align 8
  %call70 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.342, i64 0, i64 0)) #8
  %cmp71 = icmp ne i32 %call70, 0
  br i1 %cmp71, label %land.lhs.true73, label %if.end80

land.lhs.true73:                                  ; preds = %land.lhs.true
  %27 = load i8*, i8** @zMethod, align 8
  %call74 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.343, i64 0, i64 0)) #8
  %cmp75 = icmp ne i32 %call74, 0
  br i1 %cmp75, label %if.then77, label %if.end80

if.then77:                                        ; preds = %land.lhs.true73
  call void @StartResponse(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.344, i64 0, i64 0))
  %28 = load i8*, i8** @zMethod, align 8
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.345, i64 0, i64 0), i8* %28)
  %29 = load i32, i32* @nOut, align 4
  %add79 = add nsw i32 %29, %call78
  store i32 %add79, i32* @nOut, align 4
  call void @MakeLogEntry(i32 0, i32 220)
  call void @exit(i32 0) #9
  unreachable

if.end80:                                         ; preds = %land.lhs.true73, %land.lhs.true, %if.end66
  store i8* null, i8** @zCookie, align 8
  store i8* null, i8** @zAuthType, align 8
  store i8* null, i8** @zRemoteUser, align 8
  store i8* null, i8** @zReferer, align 8
  store i8* null, i8** @zIfNoneMatch, align 8
  store i8* null, i8** @zIfModifiedSince, align 8
  store i32 0, i32* @rangeEnd, align 4
  br label %while.cond81

while.cond81:                                     ; preds = %if.end269, %if.end80
  %arraydecay82 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call83 = call i8* @fgets(i8* %arraydecay82, i32 1000, %struct._IO_FILE* %30)
  %tobool84 = icmp ne i8* %call83, null
  br i1 %tobool84, label %while.body85, label %while.end270

while.body85:                                     ; preds = %while.cond81
  %arraydecay86 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %call87 = call i64 @strlen(i8* %arraydecay86) #8
  %31 = load i32, i32* @nIn, align 4
  %conv88 = sext i32 %31 to i64
  %add89 = add i64 %conv88, %call87
  %conv90 = trunc i64 %add89 to i32
  store i32 %conv90, i32* @nIn, align 4
  %arraydecay91 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %call92 = call i8* @GetFirstElement(i8* %arraydecay91, i8** %zVal)
  store i8* %call92, i8** %zFieldName, align 8
  %32 = load i8*, i8** %zFieldName, align 8
  %cmp93 = icmp eq i8* %32, null
  br i1 %cmp93, label %if.then99, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %while.body85
  %33 = load i8*, i8** %zFieldName, align 8
  %34 = load i8, i8* %33, align 1
  %conv96 = sext i8 %34 to i32
  %cmp97 = icmp eq i32 %conv96, 0
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %lor.lhs.false95, %while.body85
  br label %while.end270

if.end100:                                        ; preds = %lor.lhs.false95
  %35 = load i8*, i8** %zVal, align 8
  call void @RemoveNewline(i8* %35)
  %36 = load i8*, i8** %zFieldName, align 8
  %call101 = call i32 @strcasecmp(i8* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.346, i64 0, i64 0)) #8
  %cmp102 = icmp eq i32 %call101, 0
  br i1 %cmp102, label %if.then104, label %if.else106

if.then104:                                       ; preds = %if.end100
  %37 = load i8*, i8** %zVal, align 8
  %call105 = call i8* @StrDup(i8* %37)
  store i8* %call105, i8** @zAgent, align 8
  br label %if.end269

if.else106:                                       ; preds = %if.end100
  %38 = load i8*, i8** %zFieldName, align 8
  %call107 = call i32 @strcasecmp(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.347, i64 0, i64 0)) #8
  %cmp108 = icmp eq i32 %call107, 0
  br i1 %cmp108, label %if.then110, label %if.else112

if.then110:                                       ; preds = %if.else106
  %39 = load i8*, i8** %zVal, align 8
  %call111 = call i8* @StrDup(i8* %39)
  store i8* %call111, i8** @zAccept, align 8
  br label %if.end268

if.else112:                                       ; preds = %if.else106
  %40 = load i8*, i8** %zFieldName, align 8
  %call113 = call i32 @strcasecmp(i8* %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.348, i64 0, i64 0)) #8
  %cmp114 = icmp eq i32 %call113, 0
  br i1 %cmp114, label %if.then116, label %if.else118

if.then116:                                       ; preds = %if.else112
  %41 = load i8*, i8** %zVal, align 8
  %call117 = call i8* @StrDup(i8* %41)
  store i8* %call117, i8** @zAcceptEncoding, align 8
  br label %if.end267

if.else118:                                       ; preds = %if.else112
  %42 = load i8*, i8** %zFieldName, align 8
  %call119 = call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.349, i64 0, i64 0)) #8
  %cmp120 = icmp eq i32 %call119, 0
  br i1 %cmp120, label %if.then122, label %if.else124

if.then122:                                       ; preds = %if.else118
  %43 = load i8*, i8** %zVal, align 8
  %call123 = call i8* @StrDup(i8* %43)
  store i8* %call123, i8** @zContentLength, align 8
  br label %if.end266

if.else124:                                       ; preds = %if.else118
  %44 = load i8*, i8** %zFieldName, align 8
  %call125 = call i32 @strcasecmp(i8* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.350, i64 0, i64 0)) #8
  %cmp126 = icmp eq i32 %call125, 0
  br i1 %cmp126, label %if.then128, label %if.else130

if.then128:                                       ; preds = %if.else124
  %45 = load i8*, i8** %zVal, align 8
  %call129 = call i8* @StrDup(i8* %45)
  store i8* %call129, i8** @zContentType, align 8
  br label %if.end265

if.else130:                                       ; preds = %if.else124
  %46 = load i8*, i8** %zFieldName, align 8
  %call131 = call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.351, i64 0, i64 0)) #8
  %cmp132 = icmp eq i32 %call131, 0
  br i1 %cmp132, label %if.then134, label %if.else141

if.then134:                                       ; preds = %if.else130
  %47 = load i8*, i8** %zVal, align 8
  %call135 = call i8* @StrDup(i8* %47)
  store i8* %call135, i8** @zReferer, align 8
  %48 = load i8*, i8** %zVal, align 8
  %call136 = call i8* @strstr(i8* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.352, i64 0, i64 0)) #8
  %cmp137 = icmp ne i8* %call136, null
  br i1 %cmp137, label %if.then139, label %if.end140

if.then139:                                       ; preds = %if.then134
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.353, i64 0, i64 0), i8** @zReferer, align 8
  call void @Forbidden(i32 230)
  br label %if.end140

if.end140:                                        ; preds = %if.then139, %if.then134
  br label %if.end264

if.else141:                                       ; preds = %if.else130
  %49 = load i8*, i8** %zFieldName, align 8
  %call142 = call i32 @strcasecmp(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.354, i64 0, i64 0)) #8
  %cmp143 = icmp eq i32 %call142, 0
  br i1 %cmp143, label %if.then145, label %if.else147

if.then145:                                       ; preds = %if.else141
  %50 = load i8*, i8** @zCookie, align 8
  %51 = load i8*, i8** %zVal, align 8
  %call146 = call i8* @StrAppend(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.355, i64 0, i64 0), i8* %51)
  store i8* %call146, i8** @zCookie, align 8
  br label %if.end263

if.else147:                                       ; preds = %if.else141
  %52 = load i8*, i8** %zFieldName, align 8
  %call148 = call i32 @strcasecmp(i8* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.356, i64 0, i64 0)) #8
  %cmp149 = icmp eq i32 %call148, 0
  br i1 %cmp149, label %if.then151, label %if.else165

if.then151:                                       ; preds = %if.else147
  %53 = load i8*, i8** %zVal, align 8
  %call152 = call i32 @strcasecmp(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.357, i64 0, i64 0)) #8
  %cmp153 = icmp eq i32 %call152, 0
  br i1 %cmp153, label %if.then155, label %if.else156

if.then155:                                       ; preds = %if.then151
  store i32 1, i32* @closeConnection, align 4
  br label %if.end164

if.else156:                                       ; preds = %if.then151
  %54 = load i32, i32* %forceClose.addr, align 4
  %tobool157 = icmp ne i32 %54, 0
  br i1 %tobool157, label %if.end163, label %land.lhs.true158

land.lhs.true158:                                 ; preds = %if.else156
  %55 = load i8*, i8** %zVal, align 8
  %call159 = call i32 @strcasecmp(i8* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.358, i64 0, i64 0)) #8
  %cmp160 = icmp eq i32 %call159, 0
  br i1 %cmp160, label %if.then162, label %if.end163

if.then162:                                       ; preds = %land.lhs.true158
  store i32 0, i32* @closeConnection, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.then162, %land.lhs.true158, %if.else156
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.then155
  br label %if.end262

if.else165:                                       ; preds = %if.else147
  %56 = load i8*, i8** %zFieldName, align 8
  %call166 = call i32 @strcasecmp(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.359, i64 0, i64 0)) #8
  %cmp167 = icmp eq i32 %call166, 0
  br i1 %cmp167, label %if.then169, label %if.else210

if.then169:                                       ; preds = %if.else165
  store i32 0, i32* %inSquare, align 4
  %57 = load i8*, i8** %zVal, align 8
  %call170 = call i32 @sanitizeString(i8* %57)
  %tobool171 = icmp ne i32 %call170, 0
  br i1 %tobool171, label %if.then172, label %if.end173

if.then172:                                       ; preds = %if.then169
  call void @Forbidden(i32 240)
  br label %if.end173

if.end173:                                        ; preds = %if.then172, %if.then169
  %58 = load i8*, i8** %zVal, align 8
  %call174 = call i8* @StrDup(i8* %58)
  store i8* %call174, i8** @zHttpHost, align 8
  %59 = load i8*, i8** @zHttpHost, align 8
  %call175 = call i8* @StrDup(i8* %59)
  store i8* %call175, i8** @zServerName, align 8
  store i8* %call175, i8** @zServerPort, align 8
  br label %while.cond176

while.cond176:                                    ; preds = %if.end196, %if.end173
  %60 = load i8*, i8** @zServerPort, align 8
  %tobool177 = icmp ne i8* %60, null
  br i1 %tobool177, label %land.lhs.true178, label %land.end

land.lhs.true178:                                 ; preds = %while.cond176
  %61 = load i8*, i8** @zServerPort, align 8
  %62 = load i8, i8* %61, align 1
  store i8 %62, i8* %c, align 1
  %conv179 = sext i8 %62 to i32
  %cmp180 = icmp ne i32 %conv179, 0
  br i1 %cmp180, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true178
  %63 = load i8, i8* %c, align 1
  %conv182 = sext i8 %63 to i32
  %cmp183 = icmp ne i32 %conv182, 58
  br i1 %cmp183, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %64 = load i32, i32* %inSquare, align 4
  %tobool185 = icmp ne i32 %64, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %65 = phi i1 [ true, %land.rhs ], [ %tobool185, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true178, %while.cond176
  %66 = phi i1 [ false, %land.lhs.true178 ], [ false, %while.cond176 ], [ %65, %lor.end ]
  br i1 %66, label %while.body186, label %while.end198

while.body186:                                    ; preds = %land.end
  %67 = load i8, i8* %c, align 1
  %conv187 = sext i8 %67 to i32
  %cmp188 = icmp eq i32 %conv187, 91
  br i1 %cmp188, label %if.then190, label %if.end191

if.then190:                                       ; preds = %while.body186
  store i32 1, i32* %inSquare, align 4
  br label %if.end191

if.end191:                                        ; preds = %if.then190, %while.body186
  %68 = load i8, i8* %c, align 1
  %conv192 = sext i8 %68 to i32
  %cmp193 = icmp eq i32 %conv192, 93
  br i1 %cmp193, label %if.then195, label %if.end196

if.then195:                                       ; preds = %if.end191
  store i32 0, i32* %inSquare, align 4
  br label %if.end196

if.end196:                                        ; preds = %if.then195, %if.end191
  %69 = load i8*, i8** @zServerPort, align 8
  %incdec.ptr197 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr197, i8** @zServerPort, align 8
  br label %while.cond176

while.end198:                                     ; preds = %land.end
  %70 = load i8*, i8** @zServerPort, align 8
  %tobool199 = icmp ne i8* %70, null
  br i1 %tobool199, label %land.lhs.true200, label %if.end205

land.lhs.true200:                                 ; preds = %while.end198
  %71 = load i8*, i8** @zServerPort, align 8
  %72 = load i8, i8* %71, align 1
  %conv201 = sext i8 %72 to i32
  %tobool202 = icmp ne i32 %conv201, 0
  br i1 %tobool202, label %if.then203, label %if.end205

if.then203:                                       ; preds = %land.lhs.true200
  %73 = load i8*, i8** @zServerPort, align 8
  store i8 0, i8* %73, align 1
  %74 = load i8*, i8** @zServerPort, align 8
  %incdec.ptr204 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr204, i8** @zServerPort, align 8
  br label %if.end205

if.end205:                                        ; preds = %if.then203, %land.lhs.true200, %while.end198
  %75 = load i8*, i8** @zRealPort, align 8
  %tobool206 = icmp ne i8* %75, null
  br i1 %tobool206, label %if.then207, label %if.end209

if.then207:                                       ; preds = %if.end205
  %76 = load i8*, i8** @zRealPort, align 8
  %call208 = call i8* @StrDup(i8* %76)
  store i8* %call208, i8** @zServerPort, align 8
  br label %if.end209

if.end209:                                        ; preds = %if.then207, %if.end205
  br label %if.end261

if.else210:                                       ; preds = %if.else165
  %77 = load i8*, i8** %zFieldName, align 8
  %call211 = call i32 @strcasecmp(i8* %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.360, i64 0, i64 0)) #8
  %cmp212 = icmp eq i32 %call211, 0
  br i1 %cmp212, label %if.then214, label %if.else217

if.then214:                                       ; preds = %if.else210
  %78 = load i8*, i8** %zVal, align 8
  %call215 = call i8* @StrDup(i8* %78)
  %call216 = call i8* @GetFirstElement(i8* %call215, i8** @zAuthArg)
  store i8* %call216, i8** @zAuthType, align 8
  br label %if.end260

if.else217:                                       ; preds = %if.else210
  %79 = load i8*, i8** %zFieldName, align 8
  %call218 = call i32 @strcasecmp(i8* %79, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.361, i64 0, i64 0)) #8
  %cmp219 = icmp eq i32 %call218, 0
  br i1 %cmp219, label %if.then221, label %if.else223

if.then221:                                       ; preds = %if.else217
  %80 = load i8*, i8** %zVal, align 8
  %call222 = call i8* @StrDup(i8* %80)
  store i8* %call222, i8** @zIfNoneMatch, align 8
  br label %if.end259

if.else223:                                       ; preds = %if.else217
  %81 = load i8*, i8** %zFieldName, align 8
  %call224 = call i32 @strcasecmp(i8* %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.362, i64 0, i64 0)) #8
  %cmp225 = icmp eq i32 %call224, 0
  br i1 %cmp225, label %if.then227, label %if.else229

if.then227:                                       ; preds = %if.else223
  %82 = load i8*, i8** %zVal, align 8
  %call228 = call i8* @StrDup(i8* %82)
  store i8* %call228, i8** @zIfModifiedSince, align 8
  br label %if.end258

if.else229:                                       ; preds = %if.else223
  %83 = load i8*, i8** %zFieldName, align 8
  %call230 = call i32 @strcasecmp(i8* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.363, i64 0, i64 0)) #8
  %cmp231 = icmp eq i32 %call230, 0
  br i1 %cmp231, label %land.lhs.true233, label %if.end257

land.lhs.true233:                                 ; preds = %if.else229
  %84 = load i8*, i8** @zMethod, align 8
  %call234 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.341, i64 0, i64 0)) #8
  %cmp235 = icmp eq i32 %call234, 0
  br i1 %cmp235, label %if.then237, label %if.end257

if.then237:                                       ; preds = %land.lhs.true233
  store i32 0, i32* %x1, align 4
  store i32 0, i32* %x2, align 4
  %85 = load i8*, i8** %zVal, align 8
  %call238 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.364, i64 0, i64 0), i32* %x1, i32* %x2) #7
  store i32 %call238, i32* %n, align 4
  %86 = load i32, i32* %n, align 4
  %cmp239 = icmp eq i32 %86, 2
  br i1 %cmp239, label %land.lhs.true241, label %if.else248

land.lhs.true241:                                 ; preds = %if.then237
  %87 = load i32, i32* %x1, align 4
  %cmp242 = icmp sge i32 %87, 0
  br i1 %cmp242, label %land.lhs.true244, label %if.else248

land.lhs.true244:                                 ; preds = %land.lhs.true241
  %88 = load i32, i32* %x2, align 4
  %89 = load i32, i32* %x1, align 4
  %cmp245 = icmp sge i32 %88, %89
  br i1 %cmp245, label %if.then247, label %if.else248

if.then247:                                       ; preds = %land.lhs.true244
  %90 = load i32, i32* %x1, align 4
  store i32 %90, i32* @rangeStart, align 4
  %91 = load i32, i32* %x2, align 4
  store i32 %91, i32* @rangeEnd, align 4
  br label %if.end256

if.else248:                                       ; preds = %land.lhs.true244, %land.lhs.true241, %if.then237
  %92 = load i32, i32* %n, align 4
  %cmp249 = icmp eq i32 %92, 1
  br i1 %cmp249, label %land.lhs.true251, label %if.end255

land.lhs.true251:                                 ; preds = %if.else248
  %93 = load i32, i32* %x1, align 4
  %cmp252 = icmp sgt i32 %93, 0
  br i1 %cmp252, label %if.then254, label %if.end255

if.then254:                                       ; preds = %land.lhs.true251
  %94 = load i32, i32* %x1, align 4
  store i32 %94, i32* @rangeStart, align 4
  store i32 2147483647, i32* @rangeEnd, align 4
  br label %if.end255

if.end255:                                        ; preds = %if.then254, %land.lhs.true251, %if.else248
  br label %if.end256

if.end256:                                        ; preds = %if.end255, %if.then247
  br label %if.end257

if.end257:                                        ; preds = %if.end256, %land.lhs.true233, %if.else229
  br label %if.end258

if.end258:                                        ; preds = %if.end257, %if.then227
  br label %if.end259

if.end259:                                        ; preds = %if.end258, %if.then221
  br label %if.end260

if.end260:                                        ; preds = %if.end259, %if.then214
  br label %if.end261

if.end261:                                        ; preds = %if.end260, %if.end209
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.end164
  br label %if.end263

if.end263:                                        ; preds = %if.end262, %if.then145
  br label %if.end264

if.end264:                                        ; preds = %if.end263, %if.end140
  br label %if.end265

if.end265:                                        ; preds = %if.end264, %if.then128
  br label %if.end266

if.end266:                                        ; preds = %if.end265, %if.then122
  br label %if.end267

if.end267:                                        ; preds = %if.end266, %if.then116
  br label %if.end268

if.end268:                                        ; preds = %if.end267, %if.then110
  br label %if.end269

if.end269:                                        ; preds = %if.end268, %if.then104
  br label %while.cond81

while.end270:                                     ; preds = %if.then99, %while.cond81
  %95 = load i8*, i8** @zAgent, align 8
  %tobool271 = icmp ne i8* %95, null
  br i1 %tobool271, label %if.then272, label %if.end282

if.then272:                                       ; preds = %while.end270
  %96 = bitcast [13 x i8*]* %azDisallow to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %96, i8* align 16 bitcast ([13 x i8*]* @__const.ProcessOneRequest.azDisallow to i8*), i64 104, i1 false)
  store i64 0, i64* %ii, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then272
  %97 = load i64, i64* %ii, align 8
  %cmp273 = icmp ult i64 %97, 13
  br i1 %cmp273, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %98 = load i8*, i8** @zAgent, align 8
  %99 = load i64, i64* %ii, align 8
  %arrayidx275 = getelementptr inbounds [13 x i8*], [13 x i8*]* %azDisallow, i64 0, i64 %99
  %100 = load i8*, i8** %arrayidx275, align 8
  %call276 = call i8* @strstr(i8* %98, i8* %100) #8
  %cmp277 = icmp ne i8* %call276, null
  br i1 %cmp277, label %if.then279, label %if.end280

if.then279:                                       ; preds = %for.body
  call void @Forbidden(i32 250)
  br label %if.end280

if.end280:                                        ; preds = %if.then279, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end280
  %101 = load i64, i64* %ii, align 8
  %inc281 = add i64 %101, 1
  store i64 %inc281, i64* %ii, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end282

if.end282:                                        ; preds = %for.end, %while.end270
  %102 = load i8*, i8** @zServerName, align 8
  %cmp283 = icmp eq i8* %102, null
  br i1 %cmp283, label %if.then285, label %if.end288

if.then285:                                       ; preds = %if.end282
  %call286 = call i8* @SafeMalloc(i64 100)
  store i8* %call286, i8** @zServerName, align 8
  %103 = load i8*, i8** @zServerName, align 8
  %call287 = call i32 @gethostname(i8* %103, i64 100) #7
  br label %if.end288

if.end288:                                        ; preds = %if.then285, %if.end282
  %104 = load i8*, i8** @zServerPort, align 8
  %cmp289 = icmp eq i8* %104, null
  br i1 %cmp289, label %if.then295, label %lor.lhs.false291

lor.lhs.false291:                                 ; preds = %if.end288
  %105 = load i8*, i8** @zServerPort, align 8
  %106 = load i8, i8* %105, align 1
  %conv292 = sext i8 %106 to i32
  %cmp293 = icmp eq i32 %conv292, 0
  br i1 %cmp293, label %if.then295, label %if.end296

if.then295:                                       ; preds = %lor.lhs.false291, %if.end288
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.378, i64 0, i64 0), i8** @zServerPort, align 8
  br label %if.end296

if.end296:                                        ; preds = %if.then295, %lor.lhs.false291
  %107 = load i8*, i8** @zScript, align 8
  store i8* %107, i8** %z, align 8
  br label %for.cond297

for.cond297:                                      ; preds = %for.inc306, %if.end296
  %108 = load i8*, i8** %z, align 8
  %109 = load i8, i8* %108, align 1
  %conv298 = sext i8 %109 to i32
  %tobool299 = icmp ne i32 %conv298, 0
  br i1 %tobool299, label %land.rhs300, label %land.end304

land.rhs300:                                      ; preds = %for.cond297
  %110 = load i8*, i8** %z, align 8
  %111 = load i8, i8* %110, align 1
  %conv301 = sext i8 %111 to i32
  %cmp302 = icmp ne i32 %conv301, 63
  br label %land.end304

land.end304:                                      ; preds = %land.rhs300, %for.cond297
  %112 = phi i1 [ false, %for.cond297 ], [ %cmp302, %land.rhs300 ]
  br i1 %112, label %for.body305, label %for.end308

for.body305:                                      ; preds = %land.end304
  br label %for.inc306

for.inc306:                                       ; preds = %for.body305
  %113 = load i8*, i8** %z, align 8
  %incdec.ptr307 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %incdec.ptr307, i8** %z, align 8
  br label %for.cond297

for.end308:                                       ; preds = %land.end304
  %114 = load i8*, i8** %z, align 8
  %115 = load i8, i8* %114, align 1
  %conv309 = sext i8 %115 to i32
  %cmp310 = icmp eq i32 %conv309, 63
  br i1 %cmp310, label %if.then312, label %if.else314

if.then312:                                       ; preds = %for.end308
  %116 = load i8*, i8** %z, align 8
  %call313 = call i8* @StrDup(i8* %116)
  store i8* %call313, i8** @zQuerySuffix, align 8
  %117 = load i8*, i8** %z, align 8
  store i8 0, i8* %117, align 1
  br label %if.end315

if.else314:                                       ; preds = %for.end308
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), i8** @zQuerySuffix, align 8
  br label %if.end315

if.end315:                                        ; preds = %if.else314, %if.then312
  %118 = load i8*, i8** @zQuerySuffix, align 8
  %119 = load i8, i8* %118, align 1
  %conv316 = sext i8 %119 to i32
  %tobool317 = icmp ne i32 %conv316, 0
  br i1 %tobool317, label %cond.true318, label %cond.false320

cond.true318:                                     ; preds = %if.end315
  %120 = load i8*, i8** @zQuerySuffix, align 8
  %arrayidx319 = getelementptr inbounds i8, i8* %120, i64 1
  br label %cond.end321

cond.false320:                                    ; preds = %if.end315
  %121 = load i8*, i8** @zQuerySuffix, align 8
  br label %cond.end321

cond.end321:                                      ; preds = %cond.false320, %cond.true318
  %cond322 = phi i8* [ %arrayidx319, %cond.true318 ], [ %121, %cond.false320 ]
  store i8* %cond322, i8** @zQueryString, align 8
  %122 = load i8*, i8** @zMethod, align 8
  %arrayidx323 = getelementptr inbounds i8, i8* %122, i64 0
  %123 = load i8, i8* %arrayidx323, align 1
  %conv324 = sext i8 %123 to i32
  %cmp325 = icmp eq i32 %conv324, 80
  br i1 %cmp325, label %land.lhs.true327, label %if.end368

land.lhs.true327:                                 ; preds = %cond.end321
  %124 = load i8*, i8** @zContentLength, align 8
  %cmp328 = icmp ne i8* %124, null
  br i1 %cmp328, label %if.then330, label %if.end368

if.then330:                                       ; preds = %land.lhs.true327
  %125 = load i8*, i8** @zContentLength, align 8
  %call331 = call i32 @atoi(i8* %125) #8
  %conv332 = sext i32 %call331 to i64
  store i64 %conv332, i64* %len, align 8
  %126 = load i64, i64* %len, align 8
  %cmp335 = icmp ugt i64 %126, 250000000
  br i1 %cmp335, label %if.then337, label %if.end340

if.then337:                                       ; preds = %if.then330
  call void @StartResponse(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.380, i64 0, i64 0))
  %call338 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.381, i64 0, i64 0))
  %127 = load i32, i32* @nOut, align 4
  %add339 = add nsw i32 %127, %call338
  store i32 %add339, i32* @nOut, align 4
  call void @MakeLogEntry(i32 0, i32 270)
  call void @exit(i32 0) #9
  unreachable

if.end340:                                        ; preds = %if.then330
  store i32 0, i32* @rangeEnd, align 4
  %call341 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([500 x i8], [500 x i8]* @zTmpNamBuf, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.382, i64 0, i64 0)) #7
  store i8* getelementptr inbounds ([500 x i8], [500 x i8]* @zTmpNamBuf, i64 0, i64 0), i8** @zTmpNam, align 8
  %128 = load i8*, i8** @zTmpNam, align 8
  %call342 = call i32 @mkstemp(i8* %128)
  %cmp343 = icmp slt i32 %call342, 0
  br i1 %cmp343, label %if.then345, label %if.end346

if.then345:                                       ; preds = %if.end340
  call void (i32, i8*, ...) @Malfunction(i32 280, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.383, i64 0, i64 0))
  br label %if.end346

if.end346:                                        ; preds = %if.then345, %if.end340
  %129 = load i8*, i8** @zTmpNam, align 8
  %call347 = call %struct._IO_FILE* @fopen(i8* %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.384, i64 0, i64 0))
  store %struct._IO_FILE* %call347, %struct._IO_FILE** %out, align 8
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %cmp348 = icmp eq %struct._IO_FILE* %130, null
  br i1 %cmp348, label %if.then350, label %if.end353

if.then350:                                       ; preds = %if.end346
  call void @StartResponse(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.385, i64 0, i64 0))
  %131 = load i8*, i8** @zTmpNam, align 8
  %call351 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.386, i64 0, i64 0), i8* %131)
  %132 = load i32, i32* @nOut, align 4
  %add352 = add nsw i32 %132, %call351
  store i32 %add352, i32* @nOut, align 4
  call void @MakeLogEntry(i32 0, i32 290)
  call void @exit(i32 0) #9
  unreachable

if.end353:                                        ; preds = %if.end346
  %133 = load i64, i64* %len, align 8
  %add354 = add i64 %133, 1
  %call355 = call i8* @SafeMalloc(i64 %add354)
  store i8* %call355, i8** %zBuf333, align 8
  %134 = load i32, i32* @useTimeout, align 4
  %tobool356 = icmp ne i32 %134, 0
  br i1 %tobool356, label %if.then357, label %if.end361

if.then357:                                       ; preds = %if.end353
  %135 = load i64, i64* %len, align 8
  %div = udiv i64 %135, 2000
  %add358 = add i64 15, %div
  %conv359 = trunc i64 %add358 to i32
  %call360 = call i32 @alarm(i32 %conv359) #7
  br label %if.end361

if.end361:                                        ; preds = %if.then357, %if.end353
  %136 = load i8*, i8** %zBuf333, align 8
  %137 = load i64, i64* %len, align 8
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call362 = call i64 @fread(i8* %136, i64 1, i64 %137, %struct._IO_FILE* %138)
  %conv363 = trunc i64 %call362 to i32
  store i32 %conv363, i32* %n334, align 4
  %139 = load i32, i32* %n334, align 4
  %140 = load i32, i32* @nIn, align 4
  %add364 = add nsw i32 %140, %139
  store i32 %add364, i32* @nIn, align 4
  %141 = load i8*, i8** %zBuf333, align 8
  %142 = load i32, i32* %n334, align 4
  %conv365 = sext i32 %142 to i64
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call366 = call i64 @fwrite(i8* %141, i64 1, i64 %conv365, %struct._IO_FILE* %143)
  %144 = load i8*, i8** %zBuf333, align 8
  call void @free(i8* %144) #7
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call367 = call i32 @fclose(%struct._IO_FILE* %145)
  br label %if.end368

if.end368:                                        ; preds = %if.end361, %land.lhs.true327, %cond.end321
  %146 = load i32, i32* @useTimeout, align 4
  %tobool369 = icmp ne i32 %146, 0
  br i1 %tobool369, label %if.then370, label %if.end372

if.then370:                                       ; preds = %if.end368
  %call371 = call i32 @alarm(i32 10) #7
  br label %if.end372

if.end372:                                        ; preds = %if.then370, %if.end368
  %147 = load i8*, i8** @zScript, align 8
  %call373 = call i32 @sanitizeString(i8* %147)
  %148 = load i8*, i8** @zScript, align 8
  store i8* %148, i8** %z, align 8
  br label %for.cond374

for.cond374:                                      ; preds = %for.inc407, %if.end372
  %149 = load i8*, i8** %z, align 8
  %150 = load i8, i8* %149, align 1
  %tobool375 = icmp ne i8 %150, 0
  br i1 %tobool375, label %for.body376, label %for.end409

for.body376:                                      ; preds = %for.cond374
  %151 = load i8*, i8** %z, align 8
  %152 = load i8, i8* %151, align 1
  %conv377 = sext i8 %152 to i32
  %cmp378 = icmp eq i32 %conv377, 47
  br i1 %cmp378, label %land.lhs.true380, label %if.end406

land.lhs.true380:                                 ; preds = %for.body376
  %153 = load i8*, i8** %z, align 8
  %arrayidx381 = getelementptr inbounds i8, i8* %153, i64 1
  %154 = load i8, i8* %arrayidx381, align 1
  %conv382 = sext i8 %154 to i32
  %cmp383 = icmp eq i32 %conv382, 46
  br i1 %cmp383, label %if.then390, label %lor.lhs.false385

lor.lhs.false385:                                 ; preds = %land.lhs.true380
  %155 = load i8*, i8** %z, align 8
  %arrayidx386 = getelementptr inbounds i8, i8* %155, i64 1
  %156 = load i8, i8* %arrayidx386, align 1
  %conv387 = sext i8 %156 to i32
  %cmp388 = icmp eq i32 %conv387, 45
  br i1 %cmp388, label %if.then390, label %if.end406

if.then390:                                       ; preds = %lor.lhs.false385, %land.lhs.true380
  %157 = load i8*, i8** @zScript, align 8
  %call391 = call i32 @strncmp(i8* %157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.387, i64 0, i64 0), i64 13) #8
  %cmp392 = icmp eq i32 %call391, 0
  br i1 %cmp392, label %land.lhs.true394, label %if.end405

land.lhs.true394:                                 ; preds = %if.then390
  %158 = load i8*, i8** %z, align 8
  %arrayidx395 = getelementptr inbounds i8, i8* %158, i64 1
  %159 = load i8, i8* %arrayidx395, align 1
  %conv396 = sext i8 %159 to i32
  %cmp397 = icmp ne i32 %conv396, 46
  br i1 %cmp397, label %if.then404, label %lor.lhs.false399

lor.lhs.false399:                                 ; preds = %land.lhs.true394
  %160 = load i8*, i8** %z, align 8
  %arrayidx400 = getelementptr inbounds i8, i8* %160, i64 2
  %161 = load i8, i8* %arrayidx400, align 1
  %conv401 = sext i8 %161 to i32
  %cmp402 = icmp ne i32 %conv401, 46
  br i1 %cmp402, label %if.then404, label %if.end405

if.then404:                                       ; preds = %lor.lhs.false399, %land.lhs.true394
  br label %for.inc407

if.end405:                                        ; preds = %lor.lhs.false399, %if.then390
  call void @NotFound(i32 300)
  br label %if.end406

if.end406:                                        ; preds = %if.end405, %lor.lhs.false385, %for.body376
  br label %for.inc407

for.inc407:                                       ; preds = %if.end406, %if.then404
  %162 = load i8*, i8** %z, align 8
  %incdec.ptr408 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %incdec.ptr408, i8** %z, align 8
  br label %for.cond374

for.end409:                                       ; preds = %for.cond374
  %163 = load i8*, i8** @zScript, align 8
  %arrayidx410 = getelementptr inbounds i8, i8* %163, i64 0
  %164 = load i8, i8* %arrayidx410, align 1
  %conv411 = sext i8 %164 to i32
  %cmp412 = icmp ne i32 %conv411, 47
  br i1 %cmp412, label %if.then414, label %if.end415

if.then414:                                       ; preds = %for.end409
  call void @NotFound(i32 310)
  br label %if.end415

if.end415:                                        ; preds = %if.then414, %for.end409
  %165 = load i8*, i8** @zRoot, align 8
  %call416 = call i64 @strlen(i8* %165) #8
  %add417 = add i64 %call416, 40
  %cmp418 = icmp uge i64 %add417, 1000
  br i1 %cmp418, label %if.then420, label %if.end421

if.then420:                                       ; preds = %if.end415
  call void @NotFound(i32 320)
  br label %if.end421

if.end421:                                        ; preds = %if.then420, %if.end415
  %166 = load i8*, i8** @zHttpHost, align 8
  %cmp422 = icmp eq i8* %166, null
  br i1 %cmp422, label %if.then429, label %lor.lhs.false424

lor.lhs.false424:                                 ; preds = %if.end421
  %167 = load i8*, i8** @zHttpHost, align 8
  %arrayidx425 = getelementptr inbounds i8, i8* %167, i64 0
  %168 = load i8, i8* %arrayidx425, align 1
  %conv426 = sext i8 %168 to i32
  %cmp427 = icmp eq i32 %conv426, 0
  br i1 %cmp427, label %if.then429, label %if.else430

if.then429:                                       ; preds = %lor.lhs.false424, %if.end421
  call void @NotFound(i32 330)
  br label %if.end510

if.else430:                                       ; preds = %lor.lhs.false424
  %169 = load i8*, i8** @zHttpHost, align 8
  %call431 = call i64 @strlen(i8* %169) #8
  %170 = load i8*, i8** @zRoot, align 8
  %call432 = call i64 @strlen(i8* %170) #8
  %add433 = add i64 %call431, %call432
  %add434 = add i64 %add433, 10
  %cmp435 = icmp uge i64 %add434, 1000
  br i1 %cmp435, label %if.then437, label %if.else438

if.then437:                                       ; preds = %if.else430
  call void @NotFound(i32 340)
  br label %if.end509

if.else438:                                       ; preds = %if.else430
  %arraydecay439 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %171 = load i8*, i8** @zRoot, align 8
  %172 = load i8*, i8** @zHttpHost, align 8
  %call440 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay439, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.388, i64 0, i64 0), i8* %171, i8* %172) #7
  %173 = load i8*, i8** @zRoot, align 8
  %call441 = call i64 @strlen(i8* %173) #8
  %add442 = add i64 %call441, 1
  %conv443 = trunc i64 %add442 to i32
  store i32 %conv443, i32* %i, align 4
  br label %for.cond444

for.cond444:                                      ; preds = %for.inc503, %if.else438
  %174 = load i32, i32* %i, align 4
  %idxprom = sext i32 %174 to i64
  %arrayidx445 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 %idxprom
  %175 = load i8, i8* %arrayidx445, align 1
  %conv446 = sext i8 %175 to i32
  %tobool447 = icmp ne i32 %conv446, 0
  br i1 %tobool447, label %land.rhs448, label %land.end454

land.rhs448:                                      ; preds = %for.cond444
  %176 = load i32, i32* %i, align 4
  %idxprom449 = sext i32 %176 to i64
  %arrayidx450 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 %idxprom449
  %177 = load i8, i8* %arrayidx450, align 1
  %conv451 = sext i8 %177 to i32
  %cmp452 = icmp ne i32 %conv451, 58
  br label %land.end454

land.end454:                                      ; preds = %land.rhs448, %for.cond444
  %178 = phi i1 [ false, %for.cond444 ], [ %cmp452, %land.rhs448 ]
  br i1 %178, label %for.body455, label %for.end505

for.body455:                                      ; preds = %land.end454
  %179 = load i32, i32* %i, align 4
  %idxprom457 = sext i32 %179 to i64
  %arrayidx458 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 %idxprom457
  %180 = load i8, i8* %arrayidx458, align 1
  store i8 %180, i8* %c456, align 1
  %call459 = call i16** @__ctype_b_loc() #10
  %181 = load i16*, i16** %call459, align 8
  %182 = load i8, i8* %c456, align 1
  %conv460 = zext i8 %182 to i32
  %idxprom461 = sext i32 %conv460 to i64
  %arrayidx462 = getelementptr inbounds i16, i16* %181, i64 %idxprom461
  %183 = load i16, i16* %arrayidx462, align 2
  %conv463 = zext i16 %183 to i32
  %and = and i32 %conv463, 8
  %tobool464 = icmp ne i32 %and, 0
  br i1 %tobool464, label %if.else487, label %if.then465

if.then465:                                       ; preds = %for.body455
  %184 = load i8, i8* %c456, align 1
  %conv466 = zext i8 %184 to i32
  %cmp467 = icmp eq i32 %conv466, 46
  br i1 %cmp467, label %land.lhs.true469, label %if.end484

land.lhs.true469:                                 ; preds = %if.then465
  %185 = load i32, i32* %i, align 4
  %add470 = add nsw i32 %185, 1
  %idxprom471 = sext i32 %add470 to i64
  %arrayidx472 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 %idxprom471
  %186 = load i8, i8* %arrayidx472, align 1
  %conv473 = sext i8 %186 to i32
  %cmp474 = icmp eq i32 %conv473, 0
  br i1 %cmp474, label %if.then483, label %lor.lhs.false476

lor.lhs.false476:                                 ; preds = %land.lhs.true469
  %187 = load i32, i32* %i, align 4
  %add477 = add nsw i32 %187, 1
  %idxprom478 = sext i32 %add477 to i64
  %arrayidx479 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 %idxprom478
  %188 = load i8, i8* %arrayidx479, align 1
  %conv480 = sext i8 %188 to i32
  %cmp481 = icmp eq i32 %conv480, 58
  br i1 %cmp481, label %if.then483, label %if.end484

if.then483:                                       ; preds = %lor.lhs.false476, %land.lhs.true469
  br label %for.end505

if.end484:                                        ; preds = %lor.lhs.false476, %if.then465
  %189 = load i32, i32* %i, align 4
  %idxprom485 = sext i32 %189 to i64
  %arrayidx486 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 %idxprom485
  store i8 95, i8* %arrayidx486, align 1
  br label %if.end502

if.else487:                                       ; preds = %for.body455
  %call488 = call i16** @__ctype_b_loc() #10
  %190 = load i16*, i16** %call488, align 8
  %191 = load i8, i8* %c456, align 1
  %conv489 = zext i8 %191 to i32
  %idxprom490 = sext i32 %conv489 to i64
  %arrayidx491 = getelementptr inbounds i16, i16* %190, i64 %idxprom490
  %192 = load i16, i16* %arrayidx491, align 2
  %conv492 = zext i16 %192 to i32
  %and493 = and i32 %conv492, 256
  %tobool494 = icmp ne i32 %and493, 0
  br i1 %tobool494, label %if.then495, label %if.end501

if.then495:                                       ; preds = %if.else487
  %193 = load i8, i8* %c456, align 1
  %conv496 = zext i8 %193 to i32
  %call497 = call i32 @tolower(i32 %conv496) #8
  %conv498 = trunc i32 %call497 to i8
  %194 = load i32, i32* %i, align 4
  %idxprom499 = sext i32 %194 to i64
  %arrayidx500 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 %idxprom499
  store i8 %conv498, i8* %arrayidx500, align 1
  br label %if.end501

if.end501:                                        ; preds = %if.then495, %if.else487
  br label %if.end502

if.end502:                                        ; preds = %if.end501, %if.end484
  br label %for.inc503

for.inc503:                                       ; preds = %if.end502
  %195 = load i32, i32* %i, align 4
  %inc504 = add nsw i32 %195, 1
  store i32 %inc504, i32* %i, align 4
  br label %for.cond444

for.end505:                                       ; preds = %if.then483, %land.end454
  %196 = load i32, i32* %i, align 4
  %idxprom506 = sext i32 %196 to i64
  %arrayidx507 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 %idxprom506
  %call508 = call i8* @strcpy(i8* %arrayidx507, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.389, i64 0, i64 0)) #7
  br label %if.end509

if.end509:                                        ; preds = %for.end505, %if.then437
  br label %if.end510

if.end510:                                        ; preds = %if.end509, %if.then429
  %arraydecay511 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %call512 = call i32 @stat(i8* %arraydecay511, %struct.stat* %statbuf) #7
  %tobool513 = icmp ne i32 %call512, 0
  br i1 %tobool513, label %if.then518, label %lor.lhs.false514

lor.lhs.false514:                                 ; preds = %if.end510
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %197 = load i32, i32* %st_mode, align 8
  %and515 = and i32 %197, 61440
  %cmp516 = icmp eq i32 %and515, 16384
  br i1 %cmp516, label %if.end537, label %if.then518

if.then518:                                       ; preds = %lor.lhs.false514, %if.end510
  %arraydecay519 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %198 = load i8*, i8** @zRoot, align 8
  %call520 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay519, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.390, i64 0, i64 0), i8* %198) #7
  %arraydecay521 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %call522 = call i32 @stat(i8* %arraydecay521, %struct.stat* %statbuf) #7
  %tobool523 = icmp ne i32 %call522, 0
  br i1 %tobool523, label %if.then529, label %lor.lhs.false524

lor.lhs.false524:                                 ; preds = %if.then518
  %st_mode525 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %199 = load i32, i32* %st_mode525, align 8
  %and526 = and i32 %199, 61440
  %cmp527 = icmp eq i32 %and526, 16384
  br i1 %cmp527, label %if.end536, label %if.then529

if.then529:                                       ; preds = %lor.lhs.false524, %if.then518
  %200 = load i32, i32* @standalone, align 4
  %tobool530 = icmp ne i32 %200, 0
  br i1 %tobool530, label %if.then531, label %if.else534

if.then531:                                       ; preds = %if.then529
  %arraydecay532 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %201 = load i8*, i8** @zRoot, align 8
  %call533 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay532, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.391, i64 0, i64 0), i8* %201) #7
  br label %if.end535

if.else534:                                       ; preds = %if.then529
  call void @NotFound(i32 350)
  br label %if.end535

if.end535:                                        ; preds = %if.else534, %if.then531
  br label %if.end536

if.end536:                                        ; preds = %if.end535, %lor.lhs.false524
  br label %if.end537

if.end537:                                        ; preds = %if.end536, %lor.lhs.false514
  %arraydecay538 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %call539 = call i8* @StrDup(i8* %arraydecay538)
  store i8* %call539, i8** @zHome, align 8
  %202 = load i8*, i8** @zHome, align 8
  %call540 = call i32 @chdir(i8* %202) #7
  %cmp541 = icmp ne i32 %call540, 0
  br i1 %cmp541, label %if.then543, label %if.end547

if.then543:                                       ; preds = %if.end537
  %203 = load i8*, i8** @zHome, align 8
  %arraydecay545 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zBuf544, i64 0, i64 0
  %call546 = call i8* @getcwd(i8* %arraydecay545, i64 999) #7
  call void (i32, i8*, ...) @Malfunction(i32 360, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.337, i64 0, i64 0), i8* %203, i8* %call546)
  br label %if.end547

if.end547:                                        ; preds = %if.then543, %if.end537
  %arraydecay548 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %call549 = call i64 @strlen(i8* %arraydecay548) #8
  %conv550 = trunc i64 %call549 to i32
  store i32 %conv550, i32* %j0, align 4
  store i32 %conv550, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond551

while.cond551:                                    ; preds = %if.end725, %if.end547
  %204 = load i8*, i8** @zScript, align 8
  %205 = load i32, i32* %i, align 4
  %idxprom552 = sext i32 %205 to i64
  %arrayidx553 = getelementptr inbounds i8, i8* %204, i64 %idxprom552
  %206 = load i8, i8* %arrayidx553, align 1
  %tobool554 = icmp ne i8 %206, 0
  br i1 %tobool554, label %while.body555, label %while.end732

while.body555:                                    ; preds = %while.cond551
  br label %while.cond556

while.cond556:                                    ; preds = %while.body572, %while.body555
  %207 = load i8*, i8** @zScript, align 8
  %208 = load i32, i32* %i, align 4
  %idxprom557 = sext i32 %208 to i64
  %arrayidx558 = getelementptr inbounds i8, i8* %207, i64 %idxprom557
  %209 = load i8, i8* %arrayidx558, align 1
  %conv559 = sext i8 %209 to i32
  %tobool560 = icmp ne i32 %conv559, 0
  br i1 %tobool560, label %land.rhs561, label %land.end571

land.rhs561:                                      ; preds = %while.cond556
  %210 = load i32, i32* %i, align 4
  %cmp562 = icmp eq i32 %210, 0
  br i1 %cmp562, label %lor.end570, label %lor.rhs564

lor.rhs564:                                       ; preds = %land.rhs561
  %211 = load i8*, i8** @zScript, align 8
  %212 = load i32, i32* %i, align 4
  %idxprom565 = sext i32 %212 to i64
  %arrayidx566 = getelementptr inbounds i8, i8* %211, i64 %idxprom565
  %213 = load i8, i8* %arrayidx566, align 1
  %conv567 = sext i8 %213 to i32
  %cmp568 = icmp ne i32 %conv567, 47
  br label %lor.end570

lor.end570:                                       ; preds = %lor.rhs564, %land.rhs561
  %214 = phi i1 [ true, %land.rhs561 ], [ %cmp568, %lor.rhs564 ]
  br label %land.end571

land.end571:                                      ; preds = %lor.end570, %while.cond556
  %215 = phi i1 [ false, %while.cond556 ], [ %214, %lor.end570 ]
  br i1 %215, label %while.body572, label %while.end579

while.body572:                                    ; preds = %land.end571
  %216 = load i8*, i8** @zScript, align 8
  %217 = load i32, i32* %i, align 4
  %idxprom573 = sext i32 %217 to i64
  %arrayidx574 = getelementptr inbounds i8, i8* %216, i64 %idxprom573
  %218 = load i8, i8* %arrayidx574, align 1
  %219 = load i32, i32* %j, align 4
  %idxprom575 = sext i32 %219 to i64
  %arrayidx576 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 %idxprom575
  store i8 %218, i8* %arrayidx576, align 1
  %220 = load i32, i32* %i, align 4
  %inc577 = add nsw i32 %220, 1
  store i32 %inc577, i32* %i, align 4
  %221 = load i32, i32* %j, align 4
  %inc578 = add nsw i32 %221, 1
  store i32 %inc578, i32* %j, align 4
  br label %while.cond556

while.end579:                                     ; preds = %land.end571
  %222 = load i32, i32* %j, align 4
  %idxprom580 = sext i32 %222 to i64
  %arrayidx581 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 %idxprom580
  store i8 0, i8* %arrayidx581, align 1
  %arraydecay582 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %call583 = call i32 @stat(i8* %arraydecay582, %struct.stat* %statbuf) #7
  %cmp584 = icmp ne i32 %call583, 0
  br i1 %cmp584, label %if.then586, label %if.end638

if.then586:                                       ; preds = %while.end579
  store i32 1, i32* %stillSearching, align 4
  br label %while.cond587

while.cond587:                                    ; preds = %if.end633, %if.then586
  %223 = load i32, i32* %stillSearching, align 4
  %tobool588 = icmp ne i32 %223, 0
  br i1 %tobool588, label %land.lhs.true589, label %land.end595

land.lhs.true589:                                 ; preds = %while.cond587
  %224 = load i32, i32* %i, align 4
  %cmp590 = icmp sgt i32 %224, 0
  br i1 %cmp590, label %land.rhs592, label %land.end595

land.rhs592:                                      ; preds = %land.lhs.true589
  %225 = load i32, i32* %j, align 4
  %226 = load i32, i32* %j0, align 4
  %cmp593 = icmp sgt i32 %225, %226
  br label %land.end595

land.end595:                                      ; preds = %land.rhs592, %land.lhs.true589, %while.cond587
  %227 = phi i1 [ false, %land.lhs.true589 ], [ false, %while.cond587 ], [ %cmp593, %land.rhs592 ]
  br i1 %227, label %while.body596, label %while.end634

while.body596:                                    ; preds = %land.end595
  br label %while.cond597

while.cond597:                                    ; preds = %while.body607, %while.body596
  %228 = load i32, i32* %j, align 4
  %229 = load i32, i32* %j0, align 4
  %cmp598 = icmp sgt i32 %228, %229
  br i1 %cmp598, label %land.rhs600, label %land.end606

land.rhs600:                                      ; preds = %while.cond597
  %230 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %230, 1
  %idxprom601 = sext i32 %sub to i64
  %arrayidx602 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 %idxprom601
  %231 = load i8, i8* %arrayidx602, align 1
  %conv603 = sext i8 %231 to i32
  %cmp604 = icmp ne i32 %conv603, 47
  br label %land.end606

land.end606:                                      ; preds = %land.rhs600, %while.cond597
  %232 = phi i1 [ false, %while.cond597 ], [ %cmp604, %land.rhs600 ]
  br i1 %232, label %while.body607, label %while.end608

while.body607:                                    ; preds = %land.end606
  %233 = load i32, i32* %j, align 4
  %dec = add nsw i32 %233, -1
  store i32 %dec, i32* %j, align 4
  br label %while.cond597

while.end608:                                     ; preds = %land.end606
  %234 = load i32, i32* %j, align 4
  %sub609 = sub nsw i32 %234, 1
  %idxprom610 = sext i32 %sub609 to i64
  %arrayidx611 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 %idxprom610
  %call612 = call i8* @strcpy(i8* %arrayidx611, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.392, i64 0, i64 0)) #7
  %arraydecay613 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %call614 = call i32 @stat(i8* %arraydecay613, %struct.stat* %statbuf) #7
  %cmp615 = icmp eq i32 %call614, 0
  br i1 %cmp615, label %land.lhs.true617, label %if.else631

land.lhs.true617:                                 ; preds = %while.end608
  %st_mode618 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %235 = load i32, i32* %st_mode618, align 8
  %and619 = and i32 %235, 61440
  %cmp620 = icmp eq i32 %and619, 32768
  br i1 %cmp620, label %land.lhs.true622, label %if.else631

land.lhs.true622:                                 ; preds = %land.lhs.true617
  %arraydecay623 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %call624 = call i32 @access(i8* %arraydecay623, i32 4) #7
  %cmp625 = icmp eq i32 %call624, 0
  br i1 %cmp625, label %if.then627, label %if.else631

if.then627:                                       ; preds = %land.lhs.true622
  %236 = load i32, i32* %j0, align 4
  %idxprom628 = sext i32 %236 to i64
  %arrayidx629 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 %idxprom628
  %call630 = call i8* @StrDup(i8* %arrayidx629)
  store i8* %call630, i8** @zRealScript, align 8
  %237 = load i8*, i8** @zRealScript, align 8
  call void @Redirect(i8* %237, i32 302, i32 1, i32 370)
  br label %if.end932

if.else631:                                       ; preds = %land.lhs.true622, %land.lhs.true617, %while.end608
  %238 = load i32, i32* %j, align 4
  %dec632 = add nsw i32 %238, -1
  store i32 %dec632, i32* %j, align 4
  br label %if.end633

if.end633:                                        ; preds = %if.else631
  br label %while.cond587

while.end634:                                     ; preds = %land.end595
  %239 = load i32, i32* %stillSearching, align 4
  %tobool635 = icmp ne i32 %239, 0
  br i1 %tobool635, label %if.then636, label %if.end637

if.then636:                                       ; preds = %while.end634
  call void @NotFound(i32 380)
  br label %if.end637

if.end637:                                        ; preds = %if.then636, %while.end634
  br label %while.end732

if.end638:                                        ; preds = %while.end579
  %st_mode639 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %240 = load i32, i32* %st_mode639, align 8
  %and640 = and i32 %240, 61440
  %cmp641 = icmp eq i32 %and640, 32768
  br i1 %cmp641, label %if.then643, label %if.end652

if.then643:                                       ; preds = %if.end638
  %arraydecay644 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %call645 = call i32 @access(i8* %arraydecay644, i32 4) #7
  %tobool646 = icmp ne i32 %call645, 0
  br i1 %tobool646, label %if.then647, label %if.end648

if.then647:                                       ; preds = %if.then643
  call void @NotFound(i32 390)
  br label %if.end648

if.end648:                                        ; preds = %if.then647, %if.then643
  %241 = load i32, i32* %j0, align 4
  %idxprom649 = sext i32 %241 to i64
  %arrayidx650 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 %idxprom649
  %call651 = call i8* @StrDup(i8* %arrayidx650)
  store i8* %call651, i8** @zRealScript, align 8
  br label %while.end732

if.end652:                                        ; preds = %if.end638
  %242 = load i8*, i8** @zScript, align 8
  %243 = load i32, i32* %i, align 4
  %idxprom653 = sext i32 %243 to i64
  %arrayidx654 = getelementptr inbounds i8, i8* %242, i64 %idxprom653
  %244 = load i8, i8* %arrayidx654, align 1
  %conv655 = sext i8 %244 to i32
  %cmp656 = icmp eq i32 %conv655, 0
  br i1 %cmp656, label %if.then665, label %lor.lhs.false658

lor.lhs.false658:                                 ; preds = %if.end652
  %245 = load i8*, i8** @zScript, align 8
  %246 = load i32, i32* %i, align 4
  %add659 = add nsw i32 %246, 1
  %idxprom660 = sext i32 %add659 to i64
  %arrayidx661 = getelementptr inbounds i8, i8* %245, i64 %idxprom660
  %247 = load i8, i8* %arrayidx661, align 1
  %conv662 = sext i8 %247 to i32
  %cmp663 = icmp eq i32 %conv662, 0
  br i1 %cmp663, label %if.then665, label %if.end725

if.then665:                                       ; preds = %lor.lhs.false658, %if.end652
  %248 = load i32, i32* %j, align 4
  %cmp666 = icmp sgt i32 %248, 0
  br i1 %cmp666, label %land.lhs.true668, label %cond.false677

land.lhs.true668:                                 ; preds = %if.then665
  %249 = load i32, i32* %j, align 4
  %sub669 = sub nsw i32 %249, 1
  %idxprom670 = sext i32 %sub669 to i64
  %arrayidx671 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 %idxprom670
  %250 = load i8, i8* %arrayidx671, align 1
  %conv672 = sext i8 %250 to i32
  %cmp673 = icmp eq i32 %conv672, 47
  br i1 %cmp673, label %cond.true675, label %cond.false677

cond.true675:                                     ; preds = %land.lhs.true668
  %251 = load i32, i32* %j, align 4
  %sub676 = sub nsw i32 %251, 1
  br label %cond.end678

cond.false677:                                    ; preds = %land.lhs.true668, %if.then665
  %252 = load i32, i32* %j, align 4
  br label %cond.end678

cond.end678:                                      ; preds = %cond.false677, %cond.true675
  %cond679 = phi i32 [ %sub676, %cond.true675 ], [ %252, %cond.false677 ]
  store i32 %cond679, i32* %k, align 4
  store i32 0, i32* %jj, align 4
  br label %for.cond680

for.cond680:                                      ; preds = %for.inc707, %cond.end678
  %253 = load i32, i32* %jj, align 4
  %conv681 = zext i32 %253 to i64
  %cmp682 = icmp ult i64 %conv681, 3
  br i1 %cmp682, label %for.body684, label %for.end709

for.body684:                                      ; preds = %for.cond680
  %254 = load i32, i32* %k, align 4
  %idxprom685 = sext i32 %254 to i64
  %arrayidx686 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 %idxprom685
  %255 = load i32, i32* %jj, align 4
  %idxprom687 = zext i32 %255 to i64
  %arrayidx688 = getelementptr inbounds [3 x i8*], [3 x i8*]* @ProcessOneRequest.azIndex, i64 0, i64 %idxprom687
  %256 = load i8*, i8** %arrayidx688, align 8
  %call689 = call i8* @strcpy(i8* %arrayidx686, i8* %256) #7
  %arraydecay690 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %call691 = call i32 @stat(i8* %arraydecay690, %struct.stat* %statbuf) #7
  %cmp692 = icmp ne i32 %call691, 0
  br i1 %cmp692, label %if.then694, label %if.end695

if.then694:                                       ; preds = %for.body684
  br label %for.inc707

if.end695:                                        ; preds = %for.body684
  %st_mode696 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %257 = load i32, i32* %st_mode696, align 8
  %and697 = and i32 %257, 61440
  %cmp698 = icmp eq i32 %and697, 32768
  br i1 %cmp698, label %if.end701, label %if.then700

if.then700:                                       ; preds = %if.end695
  br label %for.inc707

if.end701:                                        ; preds = %if.end695
  %arraydecay702 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %call703 = call i32 @access(i8* %arraydecay702, i32 4) #7
  %tobool704 = icmp ne i32 %call703, 0
  br i1 %tobool704, label %if.then705, label %if.end706

if.then705:                                       ; preds = %if.end701
  br label %for.inc707

if.end706:                                        ; preds = %if.end701
  br label %for.end709

for.inc707:                                       ; preds = %if.then705, %if.then700, %if.then694
  %258 = load i32, i32* %jj, align 4
  %inc708 = add i32 %258, 1
  store i32 %inc708, i32* %jj, align 4
  br label %for.cond680

for.end709:                                       ; preds = %if.end706, %for.cond680
  %259 = load i32, i32* %jj, align 4
  %conv710 = zext i32 %259 to i64
  %cmp711 = icmp uge i64 %conv710, 3
  br i1 %cmp711, label %if.then713, label %if.end714

if.then713:                                       ; preds = %for.end709
  call void @NotFound(i32 400)
  br label %if.end714

if.end714:                                        ; preds = %if.then713, %for.end709
  %260 = load i32, i32* %j0, align 4
  %idxprom715 = sext i32 %260 to i64
  %arrayidx716 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 %idxprom715
  %call717 = call i8* @StrDup(i8* %arrayidx716)
  store i8* %call717, i8** @zRealScript, align 8
  %261 = load i8*, i8** @zScript, align 8
  %262 = load i32, i32* %i, align 4
  %idxprom718 = sext i32 %262 to i64
  %arrayidx719 = getelementptr inbounds i8, i8* %261, i64 %idxprom718
  %263 = load i8, i8* %arrayidx719, align 1
  %conv720 = sext i8 %263 to i32
  %cmp721 = icmp eq i32 %conv720, 0
  br i1 %cmp721, label %if.then723, label %if.end724

if.then723:                                       ; preds = %if.end714
  %264 = load i8*, i8** @zRealScript, align 8
  call void @Redirect(i8* %264, i32 301, i32 1, i32 410)
  br label %if.end932

if.end724:                                        ; preds = %if.end714
  br label %while.end732

if.end725:                                        ; preds = %lor.lhs.false658
  %265 = load i8*, i8** @zScript, align 8
  %266 = load i32, i32* %i, align 4
  %idxprom726 = sext i32 %266 to i64
  %arrayidx727 = getelementptr inbounds i8, i8* %265, i64 %idxprom726
  %267 = load i8, i8* %arrayidx727, align 1
  %268 = load i32, i32* %j, align 4
  %idxprom728 = sext i32 %268 to i64
  %arrayidx729 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 %idxprom728
  store i8 %267, i8* %arrayidx729, align 1
  %269 = load i32, i32* %i, align 4
  %inc730 = add nsw i32 %269, 1
  store i32 %inc730, i32* %i, align 4
  %270 = load i32, i32* %j, align 4
  %inc731 = add nsw i32 %270, 1
  store i32 %inc731, i32* %j, align 4
  br label %while.cond551

while.end732:                                     ; preds = %if.end724, %if.end648, %if.end637, %while.cond551
  %arraydecay733 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %call734 = call i8* @StrDup(i8* %arraydecay733)
  store i8* %call734, i8** @zFile, align 8
  %271 = load i8*, i8** @zScript, align 8
  %272 = load i32, i32* %i, align 4
  %idxprom735 = sext i32 %272 to i64
  %arrayidx736 = getelementptr inbounds i8, i8* %271, i64 %idxprom735
  %call737 = call i8* @StrDup(i8* %arrayidx736)
  store i8* %call737, i8** @zPathInfo, align 8
  %273 = load i8*, i8** @zFile, align 8
  %call738 = call i64 @strlen(i8* %273) #8
  %conv739 = trunc i64 %call738 to i32
  store i32 %conv739, i32* @lenFile, align 4
  %274 = load i8*, i8** @zFile, align 8
  %call740 = call i8* @StrDup(i8* %274)
  store i8* %call740, i8** @zDir, align 8
  %275 = load i8*, i8** @zDir, align 8
  %call741 = call i64 @strlen(i8* %275) #8
  %sub742 = sub i64 %call741, 1
  %conv743 = trunc i64 %sub742 to i32
  store i32 %conv743, i32* %i, align 4
  br label %for.cond744

for.cond744:                                      ; preds = %for.inc755, %while.end732
  %276 = load i32, i32* %i, align 4
  %cmp745 = icmp sgt i32 %276, 0
  br i1 %cmp745, label %land.rhs747, label %land.end753

land.rhs747:                                      ; preds = %for.cond744
  %277 = load i8*, i8** @zDir, align 8
  %278 = load i32, i32* %i, align 4
  %idxprom748 = sext i32 %278 to i64
  %arrayidx749 = getelementptr inbounds i8, i8* %277, i64 %idxprom748
  %279 = load i8, i8* %arrayidx749, align 1
  %conv750 = sext i8 %279 to i32
  %cmp751 = icmp ne i32 %conv750, 47
  br label %land.end753

land.end753:                                      ; preds = %land.rhs747, %for.cond744
  %280 = phi i1 [ false, %for.cond744 ], [ %cmp751, %land.rhs747 ]
  br i1 %280, label %for.body754, label %for.end757

for.body754:                                      ; preds = %land.end753
  br label %for.inc755

for.inc755:                                       ; preds = %for.body754
  %281 = load i32, i32* %i, align 4
  %dec756 = add nsw i32 %281, -1
  store i32 %dec756, i32* %i, align 4
  br label %for.cond744

for.end757:                                       ; preds = %land.end753
  %282 = load i32, i32* %i, align 4
  %cmp758 = icmp eq i32 %282, 0
  br i1 %cmp758, label %if.then760, label %if.else762

if.then760:                                       ; preds = %for.end757
  %283 = load i8*, i8** @zDir, align 8
  %call761 = call i8* @strcpy(i8* %283, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.336, i64 0, i64 0)) #7
  br label %if.end765

if.else762:                                       ; preds = %for.end757
  %284 = load i8*, i8** @zDir, align 8
  %285 = load i32, i32* %i, align 4
  %idxprom763 = sext i32 %285 to i64
  %arrayidx764 = getelementptr inbounds i8, i8* %284, i64 %idxprom763
  store i8 0, i8* %arrayidx764, align 1
  br label %if.end765

if.end765:                                        ; preds = %if.else762, %if.then760
  %arraydecay766 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %286 = load i8*, i8** @zDir, align 8
  %call767 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay766, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.396, i64 0, i64 0), i8* %286) #7
  %arraydecay768 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %call769 = call i32 @access(i8* %arraydecay768, i32 4) #7
  %cmp770 = icmp eq i32 %call769, 0
  br i1 %cmp770, label %land.lhs.true772, label %if.end777

land.lhs.true772:                                 ; preds = %if.end765
  %arraydecay773 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %call774 = call i32 @CheckBasicAuthorization(i8* %arraydecay773)
  %tobool775 = icmp ne i32 %call774, 0
  br i1 %tobool775, label %if.end777, label %if.then776

if.then776:                                       ; preds = %land.lhs.true772
  br label %if.end932

if.end777:                                        ; preds = %land.lhs.true772, %if.end765
  %st_mode778 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %287 = load i32, i32* %st_mode778, align 8
  %and779 = and i32 %287, 64
  %cmp780 = icmp eq i32 %and779, 64
  br i1 %cmp780, label %land.lhs.true782, label %if.else903

land.lhs.true782:                                 ; preds = %if.end777
  %288 = load i8*, i8** @zFile, align 8
  %call783 = call i32 @access(i8* %288, i32 1) #7
  %cmp784 = icmp eq i32 %call783, 0
  br i1 %cmp784, label %if.then786, label %if.else903

if.then786:                                       ; preds = %land.lhs.true782
  %st_mode787 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %289 = load i32, i32* %st_mode787, align 8
  %and788 = and i32 %289, 18
  %tobool789 = icmp ne i32 %and788, 0
  br i1 %tobool789, label %if.then790, label %if.end791

if.then790:                                       ; preds = %if.then786
  call void @CgiScriptWritable()
  br label %if.end791

if.end791:                                        ; preds = %if.then790, %if.then786
  %290 = load i8*, i8** @zDir, align 8
  %call792 = call i32 @chdir(i8* %290) #7
  %tobool793 = icmp ne i32 %call792, 0
  br i1 %tobool793, label %if.then794, label %if.end798

if.then794:                                       ; preds = %if.end791
  %291 = load i8*, i8** @zDir, align 8
  %arraydecay796 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zBuf795, i64 0, i64 0
  %call797 = call i8* @getcwd(i8* %arraydecay796, i64 999) #7
  call void (i32, i8*, ...) @Malfunction(i32 420, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.337, i64 0, i64 0), i8* %291, i8* %call797)
  br label %if.end798

if.end798:                                        ; preds = %if.then794, %if.end791
  %292 = load i8*, i8** @zFile, align 8
  %call799 = call i64 @strlen(i8* %292) #8
  %sub800 = sub i64 %call799, 1
  %conv801 = trunc i64 %sub800 to i32
  store i32 %conv801, i32* %i, align 4
  br label %for.cond802

for.cond802:                                      ; preds = %for.inc813, %if.end798
  %293 = load i32, i32* %i, align 4
  %cmp803 = icmp sge i32 %293, 0
  br i1 %cmp803, label %land.rhs805, label %land.end811

land.rhs805:                                      ; preds = %for.cond802
  %294 = load i8*, i8** @zFile, align 8
  %295 = load i32, i32* %i, align 4
  %idxprom806 = sext i32 %295 to i64
  %arrayidx807 = getelementptr inbounds i8, i8* %294, i64 %idxprom806
  %296 = load i8, i8* %arrayidx807, align 1
  %conv808 = sext i8 %296 to i32
  %cmp809 = icmp ne i32 %conv808, 47
  br label %land.end811

land.end811:                                      ; preds = %land.rhs805, %for.cond802
  %297 = phi i1 [ false, %for.cond802 ], [ %cmp809, %land.rhs805 ]
  br i1 %297, label %for.body812, label %for.end815

for.body812:                                      ; preds = %land.end811
  br label %for.inc813

for.inc813:                                       ; preds = %for.body812
  %298 = load i32, i32* %i, align 4
  %dec814 = add nsw i32 %298, -1
  store i32 %dec814, i32* %i, align 4
  br label %for.cond802

for.end815:                                       ; preds = %land.end811
  %299 = load i8*, i8** @zFile, align 8
  %300 = load i32, i32* %i, align 4
  %add816 = add nsw i32 %300, 1
  %idxprom817 = sext i32 %add816 to i64
  %arrayidx818 = getelementptr inbounds i8, i8* %299, i64 %idxprom817
  store i8* %arrayidx818, i8** %zBaseFilename, align 8
  %call819 = call i32 @putenv(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.397, i64 0, i64 0)) #7
  store i32 0, i32* %i, align 4
  br label %for.cond820

for.cond820:                                      ; preds = %for.inc834, %for.end815
  %301 = load i32, i32* %i, align 4
  %cmp821 = icmp slt i32 %301, 27
  br i1 %cmp821, label %for.body823, label %for.end836

for.body823:                                      ; preds = %for.cond820
  %302 = load i32, i32* %i, align 4
  %idxprom824 = sext i32 %302 to i64
  %arrayidx825 = getelementptr inbounds [27 x %struct.anon.0], [27 x %struct.anon.0]* @cgienv, i64 0, i64 %idxprom824
  %pzEnvValue = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx825, i32 0, i32 1
  %303 = load i8**, i8*** %pzEnvValue, align 8
  %304 = load i8*, i8** %303, align 8
  %tobool826 = icmp ne i8* %304, null
  br i1 %tobool826, label %if.then827, label %if.end833

if.then827:                                       ; preds = %for.body823
  %305 = load i32, i32* %i, align 4
  %idxprom828 = sext i32 %305 to i64
  %arrayidx829 = getelementptr inbounds [27 x %struct.anon.0], [27 x %struct.anon.0]* @cgienv, i64 0, i64 %idxprom828
  %zEnvName = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx829, i32 0, i32 0
  %306 = load i8*, i8** %zEnvName, align 16
  %307 = load i32, i32* %i, align 4
  %idxprom830 = sext i32 %307 to i64
  %arrayidx831 = getelementptr inbounds [27 x %struct.anon.0], [27 x %struct.anon.0]* @cgienv, i64 0, i64 %idxprom830
  %pzEnvValue832 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx831, i32 0, i32 1
  %308 = load i8**, i8*** %pzEnvValue832, align 8
  %309 = load i8*, i8** %308, align 8
  call void @SetEnv(i8* %306, i8* %309)
  br label %if.end833

if.end833:                                        ; preds = %if.then827, %for.body823
  br label %for.inc834

for.inc834:                                       ; preds = %if.end833
  %310 = load i32, i32* %i, align 4
  %inc835 = add nsw i32 %310, 1
  store i32 %inc835, i32* %i, align 4
  br label %for.cond820

for.end836:                                       ; preds = %for.cond820
  %311 = load i32, i32* @useHttps, align 4
  %tobool837 = icmp ne i32 %311, 0
  br i1 %tobool837, label %if.then838, label %if.else841

if.then838:                                       ; preds = %for.end836
  %call839 = call i32 @putenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.398, i64 0, i64 0)) #7
  %call840 = call i32 @putenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.399, i64 0, i64 0)) #7
  br label %if.end843

if.else841:                                       ; preds = %for.end836
  %call842 = call i32 @putenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.400, i64 0, i64 0)) #7
  br label %if.end843

if.end843:                                        ; preds = %if.else841, %if.then838
  %312 = load i8*, i8** @zMethod, align 8
  %arrayidx844 = getelementptr inbounds i8, i8* %312, i64 0
  %313 = load i8, i8* %arrayidx844, align 1
  %conv845 = sext i8 %313 to i32
  %cmp846 = icmp eq i32 %conv845, 80
  br i1 %cmp846, label %if.then848, label %if.end856

if.then848:                                       ; preds = %if.end843
  %call849 = call i32 @dup(i32 0) #7
  %cmp850 = icmp slt i32 %call849, 0
  br i1 %cmp850, label %if.then852, label %if.end853

if.then852:                                       ; preds = %if.then848
  call void (i32, i8*, ...) @Malfunction(i32 430, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.401, i64 0, i64 0))
  br label %if.end853

if.end853:                                        ; preds = %if.then852, %if.then848
  %call854 = call i32 @close(i32 0)
  %314 = load i8*, i8** @zTmpNam, align 8
  %call855 = call i32 (i8*, i32, ...) @open(i8* %314, i32 0)
  br label %if.end856

if.end856:                                        ; preds = %if.end853, %if.end843
  %315 = load i8*, i8** %zBaseFilename, align 8
  %call857 = call i32 @strncmp(i8* %315, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.402, i64 0, i64 0), i64 4) #8
  %cmp858 = icmp eq i32 %call857, 0
  br i1 %cmp858, label %if.then860, label %if.end862

if.then860:                                       ; preds = %if.end856
  %316 = load i8*, i8** %zBaseFilename, align 8
  %317 = load i8*, i8** %zBaseFilename, align 8
  %call861 = call i32 (i8*, i8*, ...) @execl(i8* %316, i8* %317, i8* null) #7
  call void @exit(i32 0) #9
  unreachable

if.end862:                                        ; preds = %if.end856
  %arraydecay863 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i64 0, i64 0
  %call864 = call i32 @pipe(i32* %arraydecay863) #7
  %tobool865 = icmp ne i32 %call864, 0
  br i1 %tobool865, label %if.then866, label %if.end867

if.then866:                                       ; preds = %if.end862
  call void (i32, i8*, ...) @Malfunction(i32 440, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.403, i64 0, i64 0))
  br label %if.end867

if.end867:                                        ; preds = %if.then866, %if.end862
  %call868 = call i32 @fork() #7
  %cmp869 = icmp eq i32 %call868, 0
  br i1 %cmp869, label %if.then871, label %if.end893

if.then871:                                       ; preds = %if.end867
  %arrayidx872 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i64 0, i64 0
  %318 = load i32, i32* %arrayidx872, align 4
  %call873 = call i32 @close(i32 %318)
  %call874 = call i32 @close(i32 1)
  %arrayidx875 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i64 0, i64 1
  %319 = load i32, i32* %arrayidx875, align 4
  %call876 = call i32 @dup(i32 %319) #7
  %cmp877 = icmp ne i32 %call876, 1
  br i1 %cmp877, label %if.then879, label %if.end881

if.then879:                                       ; preds = %if.then871
  %arrayidx880 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i64 0, i64 1
  %320 = load i32, i32* %arrayidx880, align 4
  call void (i32, i8*, ...) @Malfunction(i32 450, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.404, i64 0, i64 0), i32 %320)
  br label %if.end881

if.end881:                                        ; preds = %if.then879, %if.then871
  %arrayidx882 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i64 0, i64 1
  %321 = load i32, i32* %arrayidx882, align 4
  %call883 = call i32 @close(i32 %321)
  store i32 3, i32* %i, align 4
  br label %for.cond884

for.cond884:                                      ; preds = %for.inc889, %if.end881
  %322 = load i32, i32* %i, align 4
  %call885 = call i32 @close(i32 %322)
  %cmp886 = icmp eq i32 %call885, 0
  br i1 %cmp886, label %for.body888, label %for.end891

for.body888:                                      ; preds = %for.cond884
  br label %for.inc889

for.inc889:                                       ; preds = %for.body888
  %323 = load i32, i32* %i, align 4
  %inc890 = add nsw i32 %323, 1
  store i32 %inc890, i32* %i, align 4
  br label %for.cond884

for.end891:                                       ; preds = %for.cond884
  %324 = load i8*, i8** %zBaseFilename, align 8
  %325 = load i8*, i8** %zBaseFilename, align 8
  %call892 = call i32 (i8*, i8*, ...) @execl(i8* %324, i8* %325, i8* null) #7
  call void @exit(i32 0) #9
  unreachable

if.end893:                                        ; preds = %if.end867
  %arrayidx894 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i64 0, i64 1
  %326 = load i32, i32* %arrayidx894, align 4
  %call895 = call i32 @close(i32 %326)
  %arrayidx896 = getelementptr inbounds [2 x i32], [2 x i32]* %px, i64 0, i64 0
  %327 = load i32, i32* %arrayidx896, align 4
  %call897 = call %struct._IO_FILE* @fdopen(i32 %327, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.405, i64 0, i64 0)) #7
  store %struct._IO_FILE* %call897, %struct._IO_FILE** %in, align 8
  %328 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %cmp898 = icmp eq %struct._IO_FILE* %328, null
  br i1 %cmp898, label %if.then900, label %if.else901

if.then900:                                       ; preds = %if.end893
  call void @CgiError()
  br label %if.end902

if.else901:                                       ; preds = %if.end893
  %329 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  call void @CgiHandleReply(%struct._IO_FILE* %329)
  br label %if.end902

if.end902:                                        ; preds = %if.else901, %if.then900
  br label %if.end927

if.else903:                                       ; preds = %land.lhs.true782, %if.end777
  %330 = load i32, i32* @lenFile, align 4
  %cmp904 = icmp sgt i32 %330, 5
  br i1 %cmp904, label %land.lhs.true906, label %if.else914

land.lhs.true906:                                 ; preds = %if.else903
  %331 = load i8*, i8** @zFile, align 8
  %332 = load i32, i32* @lenFile, align 4
  %sub907 = sub nsw i32 %332, 5
  %idxprom908 = sext i32 %sub907 to i64
  %arrayidx909 = getelementptr inbounds i8, i8* %331, i64 %idxprom908
  %call910 = call i32 @strcmp(i8* %arrayidx909, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.406, i64 0, i64 0)) #8
  %cmp911 = icmp eq i32 %call910, 0
  br i1 %cmp911, label %if.then913, label %if.else914

if.then913:                                       ; preds = %land.lhs.true906
  %333 = load i8*, i8** @zFile, align 8
  %334 = load i8*, i8** @zScript, align 8
  call void @SendScgiRequest(i8* %333, i8* %334)
  br label %if.end926

if.else914:                                       ; preds = %land.lhs.true906, %if.else903
  %335 = load i8*, i8** @zRealScript, align 8
  %call915 = call i32 @countSlashes(i8* %335)
  %336 = load i8*, i8** @zScript, align 8
  %call916 = call i32 @countSlashes(i8* %336)
  %cmp917 = icmp ne i32 %call915, %call916
  br i1 %cmp917, label %if.then919, label %if.else920

if.then919:                                       ; preds = %if.else914
  call void @NotFound(i32 460)
  br label %if.end925

if.else920:                                       ; preds = %if.else914
  %337 = load i8*, i8** @zFile, align 8
  %338 = load i32, i32* @lenFile, align 4
  %call921 = call i32 @SendFile(i8* %337, i32 %338, %struct.stat* %statbuf)
  %tobool922 = icmp ne i32 %call921, 0
  br i1 %tobool922, label %if.then923, label %if.end924

if.then923:                                       ; preds = %if.else920
  br label %if.end932

if.end924:                                        ; preds = %if.else920
  br label %if.end925

if.end925:                                        ; preds = %if.end924, %if.then919
  br label %if.end926

if.end926:                                        ; preds = %if.end925, %if.then913
  br label %if.end927

if.end927:                                        ; preds = %if.end926, %if.end902
  %339 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call928 = call i32 @fflush(%struct._IO_FILE* %339)
  call void @MakeLogEntry(i32 0, i32 0)
  store i32 1, i32* @omitLog, align 4
  %340 = load i32, i32* @useTimeout, align 4
  %tobool929 = icmp ne i32 %340, 0
  br i1 %tobool929, label %if.then930, label %if.end932

if.then930:                                       ; preds = %if.end927
  %call931 = call i32 @alarm(i32 30) #7
  br label %if.end932

if.end932:                                        ; preds = %if.then627, %if.then723, %if.then776, %if.then923, %if.then930, %if.end927
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @chdir(i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @Malfunction(i32 %linenum, i8* %zFormat, ...) #0 {
entry:
  %linenum.addr = alloca i32, align 4
  %zFormat.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %linenum, i32* %linenum.addr, align 4
  store i8* %zFormat, i8** %zFormat.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  call void @StartResponse(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.446, i64 0, i64 0))
  %0 = load i32, i32* %linenum.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.447, i64 0, i64 0), i32 %0)
  %1 = load i32, i32* @nOut, align 4
  %add = add nsw i32 %1, %call
  store i32 %add, i32* @nOut, align 4
  %2 = load i8*, i8** %zFormat.addr, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %zFormat.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0
  %call3 = call i32 @vprintf(i8* %3, %struct.__va_list_tag* %arraydecay2)
  %4 = load i32, i32* @nOut, align 4
  %add4 = add nsw i32 %4, %call3
  store i32 %add4, i32* @nOut, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.448, i64 0, i64 0))
  %5 = load i32, i32* @nOut, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @nOut, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %linenum.addr, align 4
  call void @MakeLogEntry(i32 0, i32 %6)
  call void @exit(i32 0) #9
  unreachable
}

; Function Attrs: nounwind
declare dso_local i8* @getcwd(i8*, i64) #1

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32, void (i32)*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @Timeout(i32 %iSig) #0 {
entry:
  %iSig.addr = alloca i32, align 4
  %zBuf = alloca [10 x i8], align 1
  store i32 %iSig, i32* %iSig.addr, align 4
  %0 = load i32, i32* @debugFlag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @zScript, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load i8*, i8** @zScript, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %land.lhs.true
  %arrayidx4 = getelementptr inbounds [10 x i8], [10 x i8]* %zBuf, i64 0, i64 0
  store i8 57, i8* %arrayidx4, align 1
  %4 = load i32, i32* %iSig.addr, align 4
  %div = sdiv i32 %4, 10
  %rem = srem i32 %div, 10
  %add = add nsw i32 48, %rem
  %conv5 = trunc i32 %add to i8
  %arrayidx6 = getelementptr inbounds [10 x i8], [10 x i8]* %zBuf, i64 0, i64 1
  store i8 %conv5, i8* %arrayidx6, align 1
  %5 = load i32, i32* %iSig.addr, align 4
  %rem7 = srem i32 %5, 10
  %add8 = add nsw i32 48, %rem7
  %conv9 = trunc i32 %add8 to i8
  %arrayidx10 = getelementptr inbounds [10 x i8], [10 x i8]* %zBuf, i64 0, i64 2
  store i8 %conv9, i8* %arrayidx10, align 1
  %arrayidx11 = getelementptr inbounds [10 x i8], [10 x i8]* %zBuf, i64 0, i64 3
  store i8 0, i8* %arrayidx11, align 1
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %zBuf, i64 0, i64 0
  %call = call i8* @strcpy(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @zReplyStatus, i64 0, i64 0), i8* %arraydecay) #7
  call void @MakeLogEntry(i32 0, i32 130)
  br label %if.end

if.end:                                           ; preds = %if.then3, %land.lhs.true, %if.then
  call void @exit(i32 0) #9
  unreachable

if.end12:                                         ; preds = %entry
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @alarm(i32) #1

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @StrDup(i8* %zSrc) #0 {
entry:
  %retval = alloca i8*, align 8
  %zSrc.addr = alloca i8*, align 8
  %zDest = alloca i8*, align 8
  %size = alloca i64, align 8
  store i8* %zSrc, i8** %zSrc.addr, align 8
  %0 = load i8*, i8** %zSrc.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %zSrc.addr, align 8
  %call = call i64 @strlen(i8* %1) #8
  %add = add i64 %call, 1
  store i64 %add, i64* %size, align 8
  %2 = load i64, i64* %size, align 8
  %call1 = call i8* @SafeMalloc(i64 %2)
  store i8* %call1, i8** %zDest, align 8
  %3 = load i8*, i8** %zDest, align 8
  %4 = load i8*, i8** %zSrc.addr, align 8
  %call2 = call i8* @strcpy(i8* %3, i8* %4) #7
  %5 = load i8*, i8** %zDest, align 8
  store i8* %5, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i8*, i8** %retval, align 8
  ret i8* %6
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @GetFirstElement(i8* %zInput, i8** %zLeftOver) #0 {
entry:
  %retval = alloca i8*, align 8
  %zInput.addr = alloca i8*, align 8
  %zLeftOver.addr = alloca i8**, align 8
  %zResult = alloca i8*, align 8
  store i8* %zInput, i8** %zInput.addr, align 8
  store i8** %zLeftOver, i8*** %zLeftOver.addr, align 8
  store i8* null, i8** %zResult, align 8
  %0 = load i8*, i8** %zInput.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %zLeftOver.addr, align 8
  %tobool = icmp ne i8** %1, null
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %2 = load i8**, i8*** %zLeftOver.addr, align 8
  store i8* null, i8** %2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  store i8* null, i8** %retval, align 8
  br label %return

if.end2:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end2
  %call = call i16** @__ctype_b_loc() #10
  %3 = load i16*, i16** %call, align 8
  %4 = load i8*, i8** %zInput.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %6 to i32
  %and = and i32 %conv3, 8192
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %zInput.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %zInput.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i8*, i8** %zInput.addr, align 8
  store i8* %8, i8** %zResult, align 8
  br label %while.cond5

while.cond5:                                      ; preds = %while.body15, %while.end
  %9 = load i8*, i8** %zInput.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv6 = sext i8 %10 to i32
  %tobool7 = icmp ne i32 %conv6, 0
  br i1 %tobool7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond5
  %call8 = call i16** @__ctype_b_loc() #10
  %11 = load i16*, i16** %call8, align 8
  %12 = load i8*, i8** %zInput.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv9 = zext i8 %13 to i32
  %idxprom10 = sext i32 %conv9 to i64
  %arrayidx11 = getelementptr inbounds i16, i16* %11, i64 %idxprom10
  %14 = load i16, i16* %arrayidx11, align 2
  %conv12 = zext i16 %14 to i32
  %and13 = and i32 %conv12, 8192
  %tobool14 = icmp ne i32 %and13, 0
  %lnot = xor i1 %tobool14, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond5
  %15 = phi i1 [ false, %while.cond5 ], [ %lnot, %land.rhs ]
  br i1 %15, label %while.body15, label %while.end17

while.body15:                                     ; preds = %land.end
  %16 = load i8*, i8** %zInput.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr16, i8** %zInput.addr, align 8
  br label %while.cond5

while.end17:                                      ; preds = %land.end
  %17 = load i8*, i8** %zInput.addr, align 8
  %18 = load i8, i8* %17, align 1
  %tobool18 = icmp ne i8 %18, 0
  br i1 %tobool18, label %if.then19, label %if.end32

if.then19:                                        ; preds = %while.end17
  %19 = load i8*, i8** %zInput.addr, align 8
  store i8 0, i8* %19, align 1
  %20 = load i8*, i8** %zInput.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr20, i8** %zInput.addr, align 8
  br label %while.cond21

while.cond21:                                     ; preds = %while.body29, %if.then19
  %call22 = call i16** @__ctype_b_loc() #10
  %21 = load i16*, i16** %call22, align 8
  %22 = load i8*, i8** %zInput.addr, align 8
  %23 = load i8, i8* %22, align 1
  %conv23 = zext i8 %23 to i32
  %idxprom24 = sext i32 %conv23 to i64
  %arrayidx25 = getelementptr inbounds i16, i16* %21, i64 %idxprom24
  %24 = load i16, i16* %arrayidx25, align 2
  %conv26 = zext i16 %24 to i32
  %and27 = and i32 %conv26, 8192
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %while.body29, label %while.end31

while.body29:                                     ; preds = %while.cond21
  %25 = load i8*, i8** %zInput.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr30, i8** %zInput.addr, align 8
  br label %while.cond21

while.end31:                                      ; preds = %while.cond21
  br label %if.end32

if.end32:                                         ; preds = %while.end31, %while.end17
  %26 = load i8**, i8*** %zLeftOver.addr, align 8
  %tobool33 = icmp ne i8** %26, null
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end32
  %27 = load i8*, i8** %zInput.addr, align 8
  %28 = load i8**, i8*** %zLeftOver.addr, align 8
  store i8* %27, i8** %28, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end32
  %29 = load i8*, i8** %zResult, align 8
  store i8* %29, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end35, %if.end
  %30 = load i8*, i8** %retval, align 8
  ret i8* %30
}

; Function Attrs: noinline nounwind uwtable
define internal void @StartResponse(i8* %zResultCode) #0 {
entry:
  %zResultCode.addr = alloca i8*, align 8
  %now = alloca i64, align 8
  store i8* %zResultCode, i8** %zResultCode.addr, align 8
  %call = call i64 @time(i64* %now) #7
  %0 = load i32, i32* @statusSent, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** @zProtocol, align 8
  %2 = load i8*, i8** %zResultCode.addr, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.449, i64 0, i64 0), i8* %1, i8* %2)
  %3 = load i32, i32* @nOut, align 4
  %add = add nsw i32 %3, %call1
  store i32 %add, i32* @nOut, align 4
  %4 = load i8*, i8** %zResultCode.addr, align 8
  %call2 = call i8* @strncpy(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @zReplyStatus, i64 0, i64 0), i8* %4, i64 3) #7
  store i8 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @zReplyStatus, i64 0, i64 3), align 1
  %5 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @zReplyStatus, i64 0, i64 0), align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp sge i32 %conv, 52
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 1, i32* @closeConnection, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %6 = load i32, i32* @closeConnection, align 4
  %tobool6 = icmp ne i32 %6, 0
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.450, i64 0, i64 0))
  %7 = load i32, i32* @nOut, align 4
  %add9 = add nsw i32 %7, %call8
  store i32 %add9, i32* @nOut, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end5
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.451, i64 0, i64 0))
  %8 = load i32, i32* @nOut, align 4
  %add11 = add nsw i32 %8, %call10
  store i32 %add11, i32* @nOut, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7
  %9 = load i64, i64* %now, align 8
  %call13 = call i32 @DateTag(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.452, i64 0, i64 0), i64 %9)
  %10 = load i32, i32* @nOut, align 4
  %add14 = add nsw i32 %10, %call13
  store i32 %add14, i32* @nOut, align 4
  store i32 1, i32* @statusSent, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then
  ret void
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind uwtable
define internal void @MakeLogEntry(i32 %exitCode, i32 %lineNum) #0 {
entry:
  %exitCode.addr = alloca i32, align 4
  %lineNum.addr = alloca i32, align 4
  %log = alloca %struct._IO_FILE*, align 8
  %now = alloca %struct.timeval, align 8
  %pTm = alloca %struct.tm*, align 8
  %self = alloca %struct.rusage, align 8
  %children = alloca %struct.rusage, align 8
  %waitStatus = alloca i32, align 4
  %zRM = alloca i8*, align 8
  %zFilename = alloca i8*, align 8
  %sz = alloca i64, align 8
  %zDate = alloca [200 x i8], align 16
  %zExpLogFile = alloca [500 x i8], align 16
  store i32 %exitCode, i32* %exitCode.addr, align 4
  store i32 %lineNum, i32* %lineNum.addr, align 4
  %0 = load i8*, i8** @zTmpNam, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @zTmpNam, align 8
  %call = call i32 @unlink(i8* %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** @zLogFile, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %land.lhs.true, label %if.end71

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, i32* @omitLog, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.end71, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  %4 = load i8*, i8** @zRemoteUser, align 8
  %tobool4 = icmp ne i8* %4, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then3
  %5 = load i8*, i8** @zRemoteUser, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), %cond.false ]
  store i8* %cond, i8** %zRM, align 8
  %6 = load i8*, i8** @zScript, align 8
  %cmp = icmp eq i8* %6, null
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %cond.end
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), i8** @zScript, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %cond.end
  %7 = load i8*, i8** @zRealScript, align 8
  %cmp7 = icmp eq i8* %7, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), i8** @zRealScript, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %8 = load i8*, i8** @zRemoteAddr, align 8
  %cmp10 = icmp eq i8* %8, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), i8** @zRemoteAddr, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9
  %9 = load i8*, i8** @zHttpHost, align 8
  %cmp13 = icmp eq i8* %9, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), i8** @zHttpHost, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12
  %10 = load i8*, i8** @zReferer, align 8
  %cmp16 = icmp eq i8* %10, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), i8** @zReferer, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15
  %11 = load i8*, i8** @zAgent, align 8
  %cmp19 = icmp eq i8* %11, null
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end18
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), i8** @zAgent, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18
  %call22 = call i32 @gettimeofday(%struct.timeval* %now, i8* null) #7
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 0
  %call23 = call %struct.tm* @localtime(i64* %tv_sec) #7
  store %struct.tm* %call23, %struct.tm** %pTm, align 8
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %zDate, i64 0, i64 0
  %12 = load %struct.tm*, %struct.tm** %pTm, align 8
  %call24 = call i64 @strftime(i8* %arraydecay, i64 200, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.454, i64 0, i64 0), %struct.tm* %12) #7
  %arraydecay25 = getelementptr inbounds [500 x i8], [500 x i8]* %zExpLogFile, i64 0, i64 0
  %13 = load i8*, i8** @zLogFile, align 8
  %14 = load %struct.tm*, %struct.tm** %pTm, align 8
  %call26 = call i64 @strftime(i8* %arraydecay25, i64 500, i8* %13, %struct.tm* %14) #7
  store i64 %call26, i64* %sz, align 8
  %15 = load i64, i64* %sz, align 8
  %cmp27 = icmp ugt i64 %15, 0
  br i1 %cmp27, label %land.lhs.true28, label %if.else

land.lhs.true28:                                  ; preds = %if.end21
  %16 = load i64, i64* %sz, align 8
  %cmp29 = icmp ult i64 %16, 498
  br i1 %cmp29, label %if.then30, label %if.else

if.then30:                                        ; preds = %land.lhs.true28
  %arraydecay31 = getelementptr inbounds [500 x i8], [500 x i8]* %zExpLogFile, i64 0, i64 0
  store i8* %arraydecay31, i8** %zFilename, align 8
  br label %if.end32

if.else:                                          ; preds = %land.lhs.true28, %if.end21
  %17 = load i8*, i8** @zLogFile, align 8
  store i8* %17, i8** %zFilename, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then30
  %call33 = call i32 @waitpid(i32 -1, i32* %waitStatus, i32 1)
  %call34 = call i32 @getrusage(i32 0, %struct.rusage* %self) #7
  %call35 = call i32 @getrusage(i32 -1, %struct.rusage* %children) #7
  %18 = load i8*, i8** %zFilename, align 8
  %call36 = call %struct._IO_FILE* @fopen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.455, i64 0, i64 0))
  store %struct._IO_FILE* %call36, %struct._IO_FILE** %log, align 8
  %cmp37 = icmp ne %struct._IO_FILE* %call36, null
  br i1 %cmp37, label %if.then38, label %if.end70

if.then38:                                        ; preds = %if.end32
  %arraydecay39 = getelementptr inbounds [200 x i8], [200 x i8]* %zDate, i64 0, i64 0
  %19 = load %struct.tm*, %struct.tm** %pTm, align 8
  %call40 = call i64 @strftime(i8* %arraydecay39, i64 200, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.454, i64 0, i64 0), %struct.tm* %19) #7
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %log, align 8
  %arraydecay41 = getelementptr inbounds [200 x i8], [200 x i8]* %zDate, i64 0, i64 0
  %21 = load i8*, i8** @zRemoteAddr, align 8
  %22 = load i8*, i8** @zHttp, align 8
  %23 = load i8*, i8** @zHttpHost, align 8
  %call42 = call i8* @Escape(i8* %23)
  %24 = load i8*, i8** @zScript, align 8
  %call43 = call i8* @Escape(i8* %24)
  %25 = load i8*, i8** @zReferer, align 8
  %call44 = call i8* @Escape(i8* %25)
  %26 = load i32, i32* @nIn, align 4
  %27 = load i32, i32* @nOut, align 4
  %ru_utime = getelementptr inbounds %struct.rusage, %struct.rusage* %self, i32 0, i32 0
  %call45 = call i64 @tvms(%struct.timeval* %ru_utime)
  %call46 = call i64 @tvms(%struct.timeval* getelementptr inbounds (%struct.rusage, %struct.rusage* @priorSelf, i32 0, i32 0))
  %sub = sub nsw i64 %call45, %call46
  %ru_stime = getelementptr inbounds %struct.rusage, %struct.rusage* %self, i32 0, i32 1
  %call47 = call i64 @tvms(%struct.timeval* %ru_stime)
  %call48 = call i64 @tvms(%struct.timeval* getelementptr inbounds (%struct.rusage, %struct.rusage* @priorSelf, i32 0, i32 1))
  %sub49 = sub nsw i64 %call47, %call48
  %ru_utime50 = getelementptr inbounds %struct.rusage, %struct.rusage* %children, i32 0, i32 0
  %call51 = call i64 @tvms(%struct.timeval* %ru_utime50)
  %call52 = call i64 @tvms(%struct.timeval* getelementptr inbounds (%struct.rusage, %struct.rusage* @priorChild, i32 0, i32 0))
  %sub53 = sub nsw i64 %call51, %call52
  %ru_stime54 = getelementptr inbounds %struct.rusage, %struct.rusage* %children, i32 0, i32 1
  %call55 = call i64 @tvms(%struct.timeval* %ru_stime54)
  %call56 = call i64 @tvms(%struct.timeval* getelementptr inbounds (%struct.rusage, %struct.rusage* @priorChild, i32 0, i32 1))
  %sub57 = sub nsw i64 %call55, %call56
  %call58 = call i64 @tvms(%struct.timeval* %now)
  %call59 = call i64 @tvms(%struct.timeval* @beginTime)
  %sub60 = sub nsw i64 %call58, %call59
  %28 = load i32, i32* @nRequest, align 4
  %29 = load i8*, i8** @zAgent, align 8
  %call61 = call i8* @Escape(i8* %29)
  %30 = load i8*, i8** %zRM, align 8
  %call62 = call i8* @Escape(i8* %30)
  %31 = load i8*, i8** @zHttp, align 8
  %call63 = call i64 @strlen(i8* %31) #8
  %32 = load i8*, i8** @zHttpHost, align 8
  %call64 = call i64 @strlen(i8* %32) #8
  %add = add i64 %call63, %call64
  %33 = load i8*, i8** @zRealScript, align 8
  %call65 = call i64 @strlen(i8* %33) #8
  %add66 = add i64 %add, %call65
  %add67 = add i64 %add66, 3
  %conv = trunc i64 %add67 to i32
  %34 = load i32, i32* %lineNum.addr, align 4
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.456, i64 0, i64 0), i8* %arraydecay41, i8* %21, i8* %22, i8* %call42, i8* %call43, i8* %call44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @zReplyStatus, i64 0, i64 0), i32 %26, i32 %27, i64 %sub, i64 %sub49, i64 %sub53, i64 %sub57, i64 %sub60, i32 %28, i8* %call61, i8* %call62, i32 %conv, i32 %34)
  %35 = bitcast %struct.rusage* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.rusage* @priorSelf to i8*), i8* align 8 %35, i64 144, i1 false)
  %36 = bitcast %struct.rusage* %children to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.rusage* @priorChild to i8*), i8* align 8 %36, i64 144, i1 false)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %log, align 8
  %call69 = call i32 @fclose(%struct._IO_FILE* %37)
  store i32 0, i32* @nOut, align 4
  store i32 0, i32* @nIn, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then38, %if.end32
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %land.lhs.true, %if.end
  %38 = load i32, i32* @closeConnection, align 4
  %tobool72 = icmp ne i32 %38, 0
  br i1 %tobool72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end71
  %39 = load i32, i32* %exitCode.addr, align 4
  call void @exit(i32 %39) #9
  unreachable

if.end74:                                         ; preds = %if.end71
  store i32 0, i32* @statusSent, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @NotFound(i32 %lineno) #0 {
entry:
  %lineno.addr = alloca i32, align 4
  store i32 %lineno, i32* %lineno.addr, align 4
  call void @StartResponse(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.457, i64 0, i64 0))
  %0 = load i32, i32* %lineno.addr, align 4
  %1 = load i8*, i8** @zScript, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([183 x i8], [183 x i8]* @.str.458, i64 0, i64 0), i32 %0, i8* %1)
  %2 = load i32, i32* @nOut, align 4
  %add = add nsw i32 %2, %call
  store i32 %add, i32* @nOut, align 4
  %3 = load i32, i32* %lineno.addr, align 4
  call void @MakeLogEntry(i32 0, i32 %3)
  call void @exit(i32 0) #9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @RemoveNewline(i8* %z) #0 {
entry:
  %z.addr = alloca i8*, align 8
  store i8* %z, i8** %z.addr, align 8
  %0 = load i8*, i8** %z.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load i8*, i8** %z.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %3 = load i8*, i8** %z.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv1 = sext i8 %4 to i32
  %cmp2 = icmp ne i32 %conv1, 10
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i8*, i8** %z.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv4 = sext i8 %6 to i32
  %cmp5 = icmp ne i32 %conv4, 13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %7 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i8*, i8** %z.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %z.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i8*, i8** %z.addr, align 8
  store i8 0, i8* %9, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare dso_local i8* @strstr(i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @Forbidden(i32 %lineno) #0 {
entry:
  %lineno.addr = alloca i32, align 4
  store i32 %lineno, i32* %lineno.addr, align 4
  call void @StartResponse(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.459, i64 0, i64 0))
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.460, i64 0, i64 0))
  %0 = load i32, i32* @nOut, align 4
  %add = add nsw i32 %0, %call
  store i32 %add, i32* @nOut, align 4
  store i32 1, i32* @closeConnection, align 4
  %1 = load i32, i32* %lineno.addr, align 4
  call void @MakeLogEntry(i32 0, i32 %1)
  call void @exit(i32 0) #9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @StrAppend(i8* %zPrior, i8* %zSep, i8* %zSrc) #0 {
entry:
  %retval = alloca i8*, align 8
  %zPrior.addr = alloca i8*, align 8
  %zSep.addr = alloca i8*, align 8
  %zSrc.addr = alloca i8*, align 8
  %zDest = alloca i8*, align 8
  %size = alloca i64, align 8
  %n0 = alloca i64, align 8
  %n1 = alloca i64, align 8
  %n2 = alloca i64, align 8
  store i8* %zPrior, i8** %zPrior.addr, align 8
  store i8* %zSep, i8** %zSep.addr, align 8
  store i8* %zSrc, i8** %zSrc.addr, align 8
  %0 = load i8*, i8** %zSrc.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %zPrior.addr, align 8
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load i8*, i8** %zSrc.addr, align 8
  %call = call i8* @StrDup(i8* %2)
  store i8* %call, i8** %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load i8*, i8** %zPrior.addr, align 8
  %call4 = call i64 @strlen(i8* %3) #8
  store i64 %call4, i64* %n0, align 8
  %4 = load i8*, i8** %zSep.addr, align 8
  %call5 = call i64 @strlen(i8* %4) #8
  store i64 %call5, i64* %n1, align 8
  %5 = load i8*, i8** %zSrc.addr, align 8
  %call6 = call i64 @strlen(i8* %5) #8
  store i64 %call6, i64* %n2, align 8
  %6 = load i64, i64* %n0, align 8
  %7 = load i64, i64* %n1, align 8
  %add = add i64 %6, %7
  %8 = load i64, i64* %n2, align 8
  %add7 = add i64 %add, %8
  %add8 = add i64 %add7, 1
  store i64 %add8, i64* %size, align 8
  %9 = load i64, i64* %size, align 8
  %call9 = call i8* @SafeMalloc(i64 %9)
  store i8* %call9, i8** %zDest, align 8
  %10 = load i8*, i8** %zDest, align 8
  %11 = load i8*, i8** %zPrior.addr, align 8
  %12 = load i64, i64* %n0, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 %11, i64 %12, i1 false)
  %13 = load i8*, i8** %zPrior.addr, align 8
  call void @free(i8* %13) #7
  %14 = load i8*, i8** %zDest, align 8
  %15 = load i64, i64* %n0, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %15
  %16 = load i8*, i8** %zSep.addr, align 8
  %17 = load i64, i64* %n1, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx, i8* align 1 %16, i64 %17, i1 false)
  %18 = load i8*, i8** %zDest, align 8
  %19 = load i64, i64* %n0, align 8
  %20 = load i64, i64* %n1, align 8
  %add10 = add i64 %19, %20
  %arrayidx11 = getelementptr inbounds i8, i8* %18, i64 %add10
  %21 = load i8*, i8** %zSrc.addr, align 8
  %22 = load i64, i64* %n2, align 8
  %add12 = add i64 %22, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx11, i8* align 1 %21, i64 %add12, i1 false)
  %23 = load i8*, i8** %zDest, align 8
  store i8* %23, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %24 = load i8*, i8** %retval, align 8
  ret i8* %24
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sanitizeString(i8* %z) #0 {
entry:
  %z.addr = alloca i8*, align 8
  %nChange = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %z, i8** %z.addr, align 8
  store i32 0, i32* %nChange, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end21, %entry
  %0 = load i8*, i8** %z.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %z.addr, align 8
  %3 = load i8, i8* %2, align 1
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [127 x i8], [129 x i8] }>* @allowedInName to [256 x i8]*), i64 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %tobool1 = icmp ne i8 %4, 0
  br i1 %tobool1, label %if.end21, label %if.then

if.then:                                          ; preds = %while.body
  %5 = load i8*, i8** %z.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 37
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %7 = load i8*, i8** %z.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %8 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  br i1 %cmp5, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %9 = load i8*, i8** %z.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %9, i64 2
  %10 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %10 to i32
  %cmp10 = icmp ne i32 %conv9, 0
  br i1 %cmp10, label %if.then12, label %if.end

if.then12:                                        ; preds = %land.lhs.true7
  store i32 3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then12
  %11 = load i8*, i8** %z.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds i8, i8* %11, i64 %idxprom13
  %13 = load i8, i8* %arrayidx14, align 1
  %14 = load i8*, i8** %z.addr, align 8
  %15 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %15, 2
  %idxprom15 = sext i32 %sub to i64
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %idxprom15
  store i8 %13, i8* %arrayidx16, align 1
  %conv17 = sext i8 %13 to i32
  %cmp18 = icmp ne i32 %conv17, 0
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true7, %land.lhs.true, %if.then
  %17 = load i8*, i8** %z.addr, align 8
  store i8 95, i8* %17, align 1
  %18 = load i32, i32* %nChange, align 4
  %inc20 = add nsw i32 %18, 1
  store i32 %inc20, i32* %nChange, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end, %while.body
  %19 = load i8*, i8** %z.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %z.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load i32, i32* %nChange, align 4
  ret i32 %20
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define internal i8* @SafeMalloc(i64 %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %call = call noalias i8* @malloc(i64 %0) #7
  store i8* %call, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i8* @strcpy(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @zReplyStatus, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.462, i64 0, i64 0)) #7
  call void @MakeLogEntry(i32 1, i32 100)
  call void @exit(i32 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %p, align 8
  ret i8* %2
}

; Function Attrs: nounwind
declare dso_local i32 @gethostname(i8*, i64) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @mkstemp(i8*) #4

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #4

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #4

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @stat(i8*, %struct.stat*) #1

; Function Attrs: nounwind
declare dso_local i32 @access(i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define internal void @Redirect(i8* %zPath, i32 %iStatus, i32 %finish, i32 %lineno) #0 {
entry:
  %zPath.addr = alloca i8*, align 8
  %iStatus.addr = alloca i32, align 4
  %finish.addr = alloca i32, align 4
  %lineno.addr = alloca i32, align 4
  store i8* %zPath, i8** %zPath.addr, align 8
  store i32 %iStatus, i32* %iStatus.addr, align 4
  store i32 %finish, i32* %finish.addr, align 4
  store i32 %lineno, i32* %lineno.addr, align 4
  %0 = load i32, i32* %iStatus.addr, align 4
  switch i32 %0, label %sw.default [
    i32 301, label %sw.bb
    i32 308, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @StartResponse(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.463, i64 0, i64 0))
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @StartResponse(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.464, i64 0, i64 0))
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @StartResponse(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.465, i64 0, i64 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  %1 = load i8*, i8** @zServerPort, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %2 = load i8*, i8** @zServerPort, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %4 = load i8*, i8** @zServerPort, align 8
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.378, i64 0, i64 0)) #8
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %sw.epilog
  %5 = load i8*, i8** @zHttp, align 8
  %6 = load i8*, i8** @zServerName, align 8
  %7 = load i8*, i8** %zPath.addr, align 8
  %8 = load i8*, i8** @zQuerySuffix, align 8
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.466, i64 0, i64 0), i8* %5, i8* %6, i8* %7, i8* %8)
  %9 = load i32, i32* @nOut, align 4
  %add = add nsw i32 %9, %call7
  store i32 %add, i32* @nOut, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false4
  %10 = load i8*, i8** @zHttp, align 8
  %11 = load i8*, i8** @zServerName, align 8
  %12 = load i8*, i8** @zServerPort, align 8
  %13 = load i8*, i8** %zPath.addr, align 8
  %14 = load i8*, i8** @zQuerySuffix, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.467, i64 0, i64 0), i8* %10, i8* %11, i8* %12, i8* %13, i8* %14)
  %15 = load i32, i32* @nOut, align 4
  %add9 = add nsw i32 %15, %call8
  store i32 %add9, i32* @nOut, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load i32, i32* %finish.addr, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.end
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.468, i64 0, i64 0))
  %17 = load i32, i32* @nOut, align 4
  %add12 = add nsw i32 %17, %call11
  store i32 %add12, i32* @nOut, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.469, i64 0, i64 0))
  %18 = load i32, i32* @nOut, align 4
  %add14 = add nsw i32 %18, %call13
  store i32 %add14, i32* @nOut, align 4
  %19 = load i32, i32* %lineno.addr, align 4
  call void @MakeLogEntry(i32 0, i32 %19)
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call16 = call i32 @fflush(%struct._IO_FILE* %20)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @CheckBasicAuthorization(i8* %zAuthFile) #0 {
entry:
  %retval = alloca i32, align 4
  %zAuthFile.addr = alloca i8*, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %zRealm = alloca i8*, align 8
  %zLoginPswd = alloca i8*, align 8
  %zName = alloca i8*, align 8
  %zLine = alloca [2000 x i8], align 16
  %zFieldName = alloca i8*, align 8
  %zVal = alloca i8*, align 8
  store i8* %zAuthFile, i8** %zAuthFile.addr, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.470, i64 0, i64 0), i8** %zRealm, align 8
  %0 = load i8*, i8** %zAuthFile.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.405, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %in, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @NotFound(i32 150)
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** @zAuthArg, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %3 = load i8*, i8** @zAuthArg, align 8
  call void @Decode64(i8* %3)
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end73, %if.then34, %if.then28, %if.then15, %if.then10, %if.end2
  %arraydecay = getelementptr inbounds [2000 x i8], [2000 x i8]* %zLine, i64 0, i64 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call3 = call i8* @fgets(i8* %arraydecay, i32 2000, %struct._IO_FILE* %4)
  %tobool4 = icmp ne i8* %call3, null
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay5 = getelementptr inbounds [2000 x i8], [2000 x i8]* %zLine, i64 0, i64 0
  %call6 = call i8* @GetFirstElement(i8* %arraydecay5, i8** %zVal)
  store i8* %call6, i8** %zFieldName, align 8
  %5 = load i8*, i8** %zFieldName, align 8
  %cmp7 = icmp eq i8* %5, null
  br i1 %cmp7, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %6 = load i8*, i8** %zFieldName, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %while.body
  br label %while.cond

if.end11:                                         ; preds = %lor.lhs.false
  %8 = load i8*, i8** %zFieldName, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx, align 1
  %conv12 = sext i8 %9 to i32
  %cmp13 = icmp eq i32 %conv12, 35
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  br label %while.cond

if.end16:                                         ; preds = %if.end11
  %10 = load i8*, i8** %zVal, align 8
  call void @RemoveNewline(i8* %10)
  %11 = load i8*, i8** %zFieldName, align 8
  %call17 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.471, i64 0, i64 0)) #8
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end16
  %12 = load i8*, i8** %zVal, align 8
  %call21 = call i8* @StrDup(i8* %12)
  store i8* %call21, i8** %zRealm, align 8
  br label %if.end73

if.else:                                          ; preds = %if.end16
  %13 = load i8*, i8** %zFieldName, align 8
  %call22 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.472, i64 0, i64 0)) #8
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.else44

if.then25:                                        ; preds = %if.else
  %14 = load i8*, i8** @zAuthArg, align 8
  %cmp26 = icmp eq i8* %14, null
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then25
  br label %while.cond

if.end29:                                         ; preds = %if.then25
  %15 = load i8*, i8** %zVal, align 8
  %call30 = call i8* @GetFirstElement(i8* %15, i8** %zVal)
  store i8* %call30, i8** %zName, align 8
  %16 = load i8*, i8** %zVal, align 8
  %call31 = call i8* @GetFirstElement(i8* %16, i8** %zVal)
  store i8* %call31, i8** %zLoginPswd, align 8
  %17 = load i8*, i8** %zLoginPswd, align 8
  %cmp32 = icmp eq i8* %17, null
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end29
  br label %while.cond

if.end35:                                         ; preds = %if.end29
  %18 = load i8*, i8** @zAuthArg, align 8
  %tobool36 = icmp ne i8* %18, null
  br i1 %tobool36, label %land.lhs.true, label %if.end43

land.lhs.true:                                    ; preds = %if.end35
  %19 = load i8*, i8** @zAuthArg, align 8
  %20 = load i8*, i8** %zLoginPswd, align 8
  %call37 = call i32 @strcmp(i8* %19, i8* %20) #8
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.end43

if.then40:                                        ; preds = %land.lhs.true
  %21 = load i8*, i8** %zName, align 8
  %call41 = call i8* @StrDup(i8* %21)
  store i8* %call41, i8** @zRemoteUser, align 8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call42 = call i32 @fclose(%struct._IO_FILE* %22)
  store i32 1, i32* %retval, align 4
  br label %return

if.end43:                                         ; preds = %land.lhs.true, %if.end35
  br label %if.end72

if.else44:                                        ; preds = %if.else
  %23 = load i8*, i8** %zFieldName, align 8
  %call45 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.473, i64 0, i64 0)) #8
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then48, label %if.else53

if.then48:                                        ; preds = %if.else44
  %24 = load i32, i32* @useHttps, align 4
  %tobool49 = icmp ne i32 %24, 0
  br i1 %tobool49, label %if.end52, label %if.then50

if.then50:                                        ; preds = %if.then48
  call void @NotFound(i32 160)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call51 = call i32 @fclose(%struct._IO_FILE* %25)
  store i32 0, i32* %retval, align 4
  br label %return

if.end52:                                         ; preds = %if.then48
  br label %if.end71

if.else53:                                        ; preds = %if.else44
  %26 = load i8*, i8** %zFieldName, align 8
  %call54 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.474, i64 0, i64 0)) #8
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %if.then57, label %if.else62

if.then57:                                        ; preds = %if.else53
  %27 = load i32, i32* @useHttps, align 4
  %tobool58 = icmp ne i32 %27, 0
  br i1 %tobool58, label %if.end61, label %if.then59

if.then59:                                        ; preds = %if.then57
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.420, i64 0, i64 0), i8** @zHttp, align 8
  %28 = load i8*, i8** @zScript, align 8
  call void @Redirect(i8* %28, i32 301, i32 1, i32 170)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call60 = call i32 @fclose(%struct._IO_FILE* %29)
  store i32 0, i32* %retval, align 4
  br label %return

if.end61:                                         ; preds = %if.then57
  br label %if.end70

if.else62:                                        ; preds = %if.else53
  %30 = load i8*, i8** %zFieldName, align 8
  %call63 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.475, i64 0, i64 0)) #8
  %cmp64 = icmp eq i32 %call63, 0
  br i1 %cmp64, label %if.then66, label %if.else68

if.then66:                                        ; preds = %if.else62
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call67 = call i32 @fclose(%struct._IO_FILE* %31)
  store i32 1, i32* %retval, align 4
  br label %return

if.else68:                                        ; preds = %if.else62
  call void @NotFound(i32 180)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call69 = call i32 @fclose(%struct._IO_FILE* %32)
  store i32 0, i32* %retval, align 4
  br label %return

if.end70:                                         ; preds = %if.end61
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.end52
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.end43
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.then20
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call74 = call i32 @fclose(%struct._IO_FILE* %33)
  %34 = load i8*, i8** %zRealm, align 8
  call void @NotAuthorized(i8* %34)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.else68, %if.then66, %if.then59, %if.then50, %if.then40, %if.then
  %35 = load i32, i32* %retval, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind uwtable
define internal void @CgiScriptWritable() #0 {
entry:
  call void @StartResponse(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.478, i64 0, i64 0))
  %0 = load i8*, i8** @zRealScript, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.479, i64 0, i64 0), i8* %0)
  %1 = load i32, i32* @nOut, align 4
  %add = add nsw i32 %1, %call
  store i32 %add, i32* @nOut, align 4
  call void @MakeLogEntry(i32 0, i32 140)
  call void @exit(i32 0) #9
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @putenv(i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @SetEnv(i8* %zVar, i8* %zValue) #0 {
entry:
  %zVar.addr = alloca i8*, align 8
  %zValue.addr = alloca i8*, align 8
  %z = alloca i8*, align 8
  %len = alloca i64, align 8
  store i8* %zVar, i8** %zVar.addr, align 8
  store i8* %zValue, i8** %zValue.addr, align 8
  %0 = load i8*, i8** %zValue.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), i8** %zValue.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %zValue.addr, align 8
  %call = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.508, i64 0, i64 0), i64 4) #8
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), i8** %zValue.addr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = load i8*, i8** %zVar.addr, align 8
  %call4 = call i64 @strlen(i8* %2) #8
  %3 = load i8*, i8** %zValue.addr, align 8
  %call5 = call i64 @strlen(i8* %3) #8
  %add = add i64 %call4, %call5
  %add6 = add i64 %add, 2
  store i64 %add6, i64* %len, align 8
  %4 = load i64, i64* %len, align 8
  %call7 = call i8* @SafeMalloc(i64 %4)
  store i8* %call7, i8** %z, align 8
  %5 = load i8*, i8** %z, align 8
  %6 = load i8*, i8** %zVar.addr, align 8
  %7 = load i8*, i8** %zValue.addr, align 8
  %call8 = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.509, i64 0, i64 0), i8* %6, i8* %7) #7
  %8 = load i8*, i8** %z, align 8
  %call9 = call i32 @putenv(i8* %8) #7
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @dup(i32) #1

declare dso_local i32 @close(i32) #4

declare dso_local i32 @open(i8*, i32, ...) #4

; Function Attrs: nounwind
declare dso_local i32 @execl(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare dso_local i32 @pipe(i32*) #1

; Function Attrs: nounwind
declare dso_local i32 @fork() #1

; Function Attrs: nounwind
declare dso_local %struct._IO_FILE* @fdopen(i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @CgiError() #0 {
entry:
  call void @StartResponse(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.510, i64 0, i64 0))
  %0 = load i8*, i8** @zScript, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([168 x i8], [168 x i8]* @.str.511, i64 0, i64 0), i8* %0)
  %1 = load i32, i32* @nOut, align 4
  %add = add nsw i32 %1, %call
  store i32 %add, i32* @nOut, align 4
  call void @MakeLogEntry(i32 0, i32 120)
  call void @exit(i32 0) #9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @CgiHandleReply(%struct._IO_FILE* %in) #0 {
entry:
  %in.addr = alloca %struct._IO_FILE*, align 8
  %seenContentLength = alloca i32, align 4
  %contentLength = alloca i32, align 4
  %nRes = alloca i64, align 8
  %nMalloc = alloca i64, align 8
  %aRes = alloca i8*, align 8
  %c = alloca i32, align 4
  %z = alloca i8*, align 8
  %iStatus = alloca i32, align 4
  %zLine = alloca [1000 x i8], align 16
  %i = alloca i32, align 4
  %nLine = alloca i64, align 8
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  store i32 0, i32* %seenContentLength, align 4
  store i32 0, i32* %contentLength, align 4
  store i64 0, i64* %nRes, align 8
  store i64 0, i64* %nMalloc, align 8
  store i8* null, i8** %aRes, align 8
  store i32 0, i32* %iStatus, align 4
  %0 = load i32, i32* @useTimeout, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @alarm(i32 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end78, %if.end
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call1 = call i8* @fgets(i8* %arraydecay, i32 1000, %struct._IO_FILE* %1)
  %tobool2 = icmp ne i8* %call1, null
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call3 = call i16** @__ctype_b_loc() #10
  %2 = load i16*, i16** %call3, align 8
  %arrayidx = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %3 = load i8, i8* %arrayidx, align 16
  %conv = zext i8 %3 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx4 = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %4 = load i16, i16* %arrayidx4, align 2
  %conv5 = zext i16 %4 to i32
  %and = and i32 %conv5, 8192
  %tobool6 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool6, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %5, label %while.body, label %while.end79

while.body:                                       ; preds = %land.end
  %arraydecay7 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %call8 = call i32 @strncasecmp(i8* %arraydecay7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.512, i64 0, i64 0), i64 9) #8
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %while.body
  call void @StartResponse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.513, i64 0, i64 0))
  %arraydecay11 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  call void @RemoveNewline(i8* %arraydecay11)
  %arrayidx12 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 10
  store i8* %arrayidx12, i8** %z, align 8
  br label %while.cond13

while.cond13:                                     ; preds = %while.body21, %if.then10
  %call14 = call i16** @__ctype_b_loc() #10
  %6 = load i16*, i16** %call14, align 8
  %7 = load i8*, i8** %z, align 8
  %8 = load i8, i8* %7, align 1
  %conv15 = zext i8 %8 to i32
  %idxprom16 = sext i32 %conv15 to i64
  %arrayidx17 = getelementptr inbounds i16, i16* %6, i64 %idxprom16
  %9 = load i16, i16* %arrayidx17, align 2
  %conv18 = zext i16 %9 to i32
  %and19 = and i32 %conv18, 8192
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %while.body21, label %while.end

while.body21:                                     ; preds = %while.cond13
  %10 = load i8*, i8** %z, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %z, align 8
  br label %while.cond13

while.end:                                        ; preds = %while.cond13
  %11 = load i8*, i8** %z, align 8
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.514, i64 0, i64 0), i8* %11)
  %12 = load i32, i32* @nOut, align 4
  %add = add nsw i32 %12, %call22
  store i32 %add, i32* @nOut, align 4
  store i32 0, i32* @rangeEnd, align 4
  br label %if.end78

if.else:                                          ; preds = %while.body
  %arraydecay23 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %call24 = call i32 @strncasecmp(i8* %arraydecay23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.515, i64 0, i64 0), i64 7) #8
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.else49

if.then27:                                        ; preds = %if.else
  store i32 7, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then27
  %call28 = call i16** @__ctype_b_loc() #10
  %13 = load i16*, i16** %call28, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %14 to i64
  %arrayidx30 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 %idxprom29
  %15 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %15 to i32
  %idxprom32 = sext i32 %conv31 to i64
  %arrayidx33 = getelementptr inbounds i16, i16* %13, i64 %idxprom32
  %16 = load i16, i16* %arrayidx33, align 2
  %conv34 = zext i16 %16 to i32
  %and35 = and i32 %conv34, 8192
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i8*, i8** @zProtocol, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %19 to i64
  %arrayidx38 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 %idxprom37
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.516, i64 0, i64 0), i8* %18, i8* %arrayidx38)
  %20 = load i32, i32* @nOut, align 4
  %add40 = add nsw i32 %20, %call39
  store i32 %add40, i32* @nOut, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %21 to i64
  %arrayidx42 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 %idxprom41
  %call43 = call i8* @strncpy(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @zReplyStatus, i64 0, i64 0), i8* %arrayidx42, i64 3) #7
  store i8 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @zReplyStatus, i64 0, i64 3), align 1
  %call44 = call i32 @atoi(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @zReplyStatus, i64 0, i64 0)) #8
  store i32 %call44, i32* %iStatus, align 4
  %22 = load i32, i32* %iStatus, align 4
  %cmp45 = icmp ne i32 %22, 200
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %for.end
  store i32 0, i32* @rangeEnd, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %for.end
  store i32 1, i32* @statusSent, align 4
  br label %if.end77

if.else49:                                        ; preds = %if.else
  %arraydecay50 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %call51 = call i32 @strncasecmp(i8* %arraydecay50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.349, i64 0, i64 0), i64 15) #8
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %if.then54, label %if.else57

if.then54:                                        ; preds = %if.else49
  store i32 1, i32* %seenContentLength, align 4
  %arraydecay55 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay55, i64 15
  %call56 = call i32 @atoi(i8* %add.ptr) #8
  store i32 %call56, i32* %contentLength, align 4
  br label %if.end76

if.else57:                                        ; preds = %if.else49
  %arraydecay58 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %call59 = call i64 @strlen(i8* %arraydecay58) #8
  store i64 %call59, i64* %nLine, align 8
  %23 = load i64, i64* %nRes, align 8
  %24 = load i64, i64* %nLine, align 8
  %add60 = add i64 %23, %24
  %25 = load i64, i64* %nMalloc, align 8
  %cmp61 = icmp uge i64 %add60, %25
  br i1 %cmp61, label %if.then63, label %if.end72

if.then63:                                        ; preds = %if.else57
  %26 = load i64, i64* %nMalloc, align 8
  %27 = load i64, i64* %nLine, align 8
  %mul = mul i64 %27, 2
  %add64 = add i64 %26, %mul
  %28 = load i64, i64* %nMalloc, align 8
  %add65 = add i64 %28, %add64
  store i64 %add65, i64* %nMalloc, align 8
  %29 = load i8*, i8** %aRes, align 8
  %30 = load i64, i64* %nMalloc, align 8
  %add66 = add i64 %30, 1
  %call67 = call i8* @realloc(i8* %29, i64 %add66) #7
  store i8* %call67, i8** %aRes, align 8
  %31 = load i8*, i8** %aRes, align 8
  %cmp68 = icmp eq i8* %31, null
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.then63
  %32 = load i64, i64* %nMalloc, align 8
  call void (i32, i8*, ...) @Malfunction(i32 600, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.517, i64 0, i64 0), i64 %32)
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.then63
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.else57
  %33 = load i8*, i8** %aRes, align 8
  %34 = load i64, i64* %nRes, align 8
  %add.ptr73 = getelementptr inbounds i8, i8* %33, i64 %34
  %arraydecay74 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %35 = load i64, i64* %nLine, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr73, i8* align 16 %arraydecay74, i64 %35, i1 false)
  %36 = load i64, i64* %nLine, align 8
  %37 = load i64, i64* %nRes, align 8
  %add75 = add i64 %37, %36
  store i64 %add75, i64* %nRes, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.end72, %if.then54
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.end48
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %while.end
  br label %while.cond

while.end79:                                      ; preds = %land.end
  %38 = load i32, i32* @rangeEnd, align 4
  %cmp80 = icmp sgt i32 %38, 0
  br i1 %cmp80, label %land.lhs.true, label %if.else95

land.lhs.true:                                    ; preds = %while.end79
  %39 = load i32, i32* %seenContentLength, align 4
  %tobool82 = icmp ne i32 %39, 0
  br i1 %tobool82, label %land.lhs.true83, label %if.else95

land.lhs.true83:                                  ; preds = %land.lhs.true
  %40 = load i32, i32* @rangeStart, align 4
  %41 = load i32, i32* %contentLength, align 4
  %cmp84 = icmp slt i32 %40, %41
  br i1 %cmp84, label %if.then86, label %if.else95

if.then86:                                        ; preds = %land.lhs.true83
  call void @StartResponse(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.518, i64 0, i64 0))
  %42 = load i32, i32* @rangeEnd, align 4
  %43 = load i32, i32* %contentLength, align 4
  %cmp87 = icmp sge i32 %42, %43
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.then86
  %44 = load i32, i32* %contentLength, align 4
  %sub = sub nsw i32 %44, 1
  store i32 %sub, i32* @rangeEnd, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.then86
  %45 = load i32, i32* @rangeStart, align 4
  %46 = load i32, i32* @rangeEnd, align 4
  %47 = load i32, i32* %contentLength, align 4
  %call91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.519, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  %48 = load i32, i32* @nOut, align 4
  %add92 = add nsw i32 %48, %call91
  store i32 %add92, i32* @nOut, align 4
  %49 = load i32, i32* @rangeEnd, align 4
  %add93 = add nsw i32 %49, 1
  %50 = load i32, i32* @rangeStart, align 4
  %sub94 = sub nsw i32 %add93, %50
  store i32 %sub94, i32* %contentLength, align 4
  br label %if.end96

if.else95:                                        ; preds = %land.lhs.true83, %land.lhs.true, %while.end79
  call void @StartResponse(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.520, i64 0, i64 0))
  br label %if.end96

if.end96:                                         ; preds = %if.else95, %if.end90
  %51 = load i64, i64* %nRes, align 8
  %cmp97 = icmp ugt i64 %51, 0
  br i1 %cmp97, label %if.then99, label %if.end105

if.then99:                                        ; preds = %if.end96
  %52 = load i8*, i8** %aRes, align 8
  %53 = load i64, i64* %nRes, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8 0, i8* %arrayidx100, align 1
  %54 = load i8*, i8** %aRes, align 8
  %call101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.391, i64 0, i64 0), i8* %54)
  %55 = load i64, i64* %nRes, align 8
  %56 = load i32, i32* @nOut, align 4
  %conv102 = sext i32 %56 to i64
  %add103 = add i64 %conv102, %55
  %conv104 = trunc i64 %add103 to i32
  store i32 %conv104, i32* @nOut, align 4
  store i64 0, i64* %nRes, align 8
  br label %if.end105

if.end105:                                        ; preds = %if.then99, %if.end96
  %57 = load i32, i32* %iStatus, align 4
  %cmp106 = icmp eq i32 %57, 304
  br i1 %cmp106, label %if.then108, label %if.else111

if.then108:                                       ; preds = %if.end105
  %call109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.521, i64 0, i64 0))
  %58 = load i32, i32* @nOut, align 4
  %add110 = add nsw i32 %58, %call109
  store i32 %add110, i32* @nOut, align 4
  br label %if.end149

if.else111:                                       ; preds = %if.end105
  %59 = load i32, i32* %seenContentLength, align 4
  %tobool112 = icmp ne i32 %59, 0
  br i1 %tobool112, label %if.then113, label %if.else116

if.then113:                                       ; preds = %if.else111
  %60 = load i32, i32* %contentLength, align 4
  %call114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.522, i64 0, i64 0), i32 %60)
  %61 = load i32, i32* @nOut, align 4
  %add115 = add nsw i32 %61, %call114
  store i32 %add115, i32* @nOut, align 4
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %64 = load i32, i32* %contentLength, align 4
  %65 = load i32, i32* @rangeStart, align 4
  call void @xferBytes(%struct._IO_FILE* %62, %struct._IO_FILE* %63, i32 %64, i32 %65)
  br label %if.end148

if.else116:                                       ; preds = %if.else111
  br label %while.cond117

while.cond117:                                    ; preds = %if.end133, %if.else116
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call118 = call i32 @getc(%struct._IO_FILE* %66)
  store i32 %call118, i32* %c, align 4
  %cmp119 = icmp ne i32 %call118, -1
  br i1 %cmp119, label %while.body121, label %while.end137

while.body121:                                    ; preds = %while.cond117
  %67 = load i64, i64* %nRes, align 8
  %68 = load i64, i64* %nMalloc, align 8
  %cmp122 = icmp uge i64 %67, %68
  br i1 %cmp122, label %if.then124, label %if.end133

if.then124:                                       ; preds = %while.body121
  %69 = load i64, i64* %nMalloc, align 8
  %mul125 = mul i64 %69, 2
  %add126 = add i64 %mul125, 1000
  store i64 %add126, i64* %nMalloc, align 8
  %70 = load i8*, i8** %aRes, align 8
  %71 = load i64, i64* %nMalloc, align 8
  %add127 = add i64 %71, 1
  %call128 = call i8* @realloc(i8* %70, i64 %add127) #7
  store i8* %call128, i8** %aRes, align 8
  %72 = load i8*, i8** %aRes, align 8
  %cmp129 = icmp eq i8* %72, null
  br i1 %cmp129, label %if.then131, label %if.end132

if.then131:                                       ; preds = %if.then124
  %73 = load i64, i64* %nMalloc, align 8
  call void (i32, i8*, ...) @Malfunction(i32 610, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.517, i64 0, i64 0), i64 %73)
  br label %if.end132

if.end132:                                        ; preds = %if.then131, %if.then124
  br label %if.end133

if.end133:                                        ; preds = %if.end132, %while.body121
  %74 = load i32, i32* %c, align 4
  %conv134 = trunc i32 %74 to i8
  %75 = load i8*, i8** %aRes, align 8
  %76 = load i64, i64* %nRes, align 8
  %inc135 = add i64 %76, 1
  store i64 %inc135, i64* %nRes, align 8
  %arrayidx136 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8 %conv134, i8* %arrayidx136, align 1
  br label %while.cond117

while.end137:                                     ; preds = %while.cond117
  %77 = load i64, i64* %nRes, align 8
  %tobool138 = icmp ne i64 %77, 0
  br i1 %tobool138, label %if.then139, label %if.else144

if.then139:                                       ; preds = %while.end137
  %78 = load i8*, i8** %aRes, align 8
  %79 = load i64, i64* %nRes, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8 0, i8* %arrayidx140, align 1
  %80 = load i64, i64* %nRes, align 8
  %conv141 = trunc i64 %80 to i32
  %81 = load i8*, i8** %aRes, align 8
  %call142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.523, i64 0, i64 0), i32 %conv141, i8* %81)
  %82 = load i32, i32* @nOut, align 4
  %add143 = add nsw i32 %82, %call142
  store i32 %add143, i32* @nOut, align 4
  br label %if.end147

if.else144:                                       ; preds = %while.end137
  %call145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.524, i64 0, i64 0))
  %83 = load i32, i32* @nOut, align 4
  %add146 = add nsw i32 %83, %call145
  store i32 %add146, i32* @nOut, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.else144, %if.then139
  br label %if.end148

if.end148:                                        ; preds = %if.end147, %if.then113
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %if.then108
  %84 = load i8*, i8** %aRes, align 8
  call void @free(i8* %84) #7
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call150 = call i32 @fclose(%struct._IO_FILE* %85)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @SendScgiRequest(i8* %zFile, i8* %zScript) #0 {
entry:
  %zFile.addr = alloca i8*, align 8
  %zScript.addr = alloca i8*, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %s = alloca %struct._IO_FILE*, align 8
  %z = alloca i8*, align 8
  %zHost = alloca i8*, align 8
  %zPort = alloca i8*, align 8
  %zRelight = alloca i8*, align 8
  %zFallback = alloca i8*, align 8
  %rc = alloca i32, align 4
  %iSocket = alloca i32, align 4
  %hints = alloca %struct.addrinfo, align 8
  %ai = alloca %struct.addrinfo*, align 8
  %p = alloca %struct.addrinfo*, align 8
  %zHdr = alloca i8*, align 8
  %nHdr = alloca i64, align 8
  %nHdrAlloc = alloca i64, align 8
  %i = alloca i32, align 4
  %zLine = alloca [1000 x i8], align 16
  %zExtra = alloca [1000 x i8], align 16
  %zCmd = alloca i8*, align 8
  %statbuf = alloca %struct.stat, align 8
  %rc98 = alloca i32, align 4
  %zBuf = alloca [1000 x i8], align 16
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  %n = alloca i64, align 8
  store i8* %zFile, i8** %zFile.addr, align 8
  store i8* %zScript, i8** %zScript.addr, align 8
  store i8* null, i8** %zPort, align 8
  store i8* null, i8** %zRelight, align 8
  store i8* null, i8** %zFallback, align 8
  store i32 -1, i32* %iSocket, align 4
  store %struct.addrinfo* null, %struct.addrinfo** %ai, align 8
  store i64 0, i64* %nHdr, align 8
  %0 = load i8*, i8** %zFile.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.405, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %in, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %zFile.addr, align 8
  call void (i32, i8*, ...) @Malfunction(i32 700, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.525, i64 0, i64 0), i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call1 = call i8* @fgets(i8* %arraydecay, i32 999, %struct._IO_FILE* %3)
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load i8*, i8** %zFile.addr, align 8
  call void (i32, i8*, ...) @Malfunction(i32 701, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.526, i64 0, i64 0), i8* %4)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %arraydecay5 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %call6 = call i32 @strncmp(i8* %arraydecay5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.527, i64 0, i64 0), i64 5) #8
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  %5 = load i8*, i8** %zFile.addr, align 8
  call void (i32, i8*, ...) @Malfunction(i32 702, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.528, i64 0, i64 0), i8* %5)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end4
  %arraydecay10 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay10, i64 5
  store i8* %add.ptr, i8** %z, align 8
  %6 = load i8*, i8** %z, align 8
  %call11 = call i8* @GetFirstElement(i8* %6, i8** %z)
  store i8* %call11, i8** %zHost, align 8
  %7 = load i8*, i8** %z, align 8
  %call12 = call i8* @GetFirstElement(i8* %7, i8** null)
  store i8* %call12, i8** %zPort, align 8
  %8 = load i8*, i8** %zHost, align 8
  %cmp13 = icmp eq i8* %8, null
  br i1 %cmp13, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %9 = load i8*, i8** %zHost, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %10 to i32
  %cmp14 = icmp eq i32 %conv, 0
  br i1 %cmp14, label %if.then24, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %11 = load i8*, i8** %zPort, align 8
  %cmp17 = icmp eq i8* %11, null
  br i1 %cmp17, label %if.then24, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %12 = load i8*, i8** %zPort, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %13 to i32
  %cmp22 = icmp eq i32 %conv21, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %lor.lhs.false19, %lor.lhs.false16, %lor.lhs.false, %if.end9
  %14 = load i8*, i8** %zFile.addr, align 8
  call void (i32, i8*, ...) @Malfunction(i32 703, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.528, i64 0, i64 0), i8* %14)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %lor.lhs.false19
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.then49, %if.then43, %if.then38, %if.then32, %if.end25
  %arraydecay26 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zExtra, i64 0, i64 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call27 = call i8* @fgets(i8* %arraydecay26, i32 999, %struct._IO_FILE* %15)
  %tobool = icmp ne i8* %call27, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay28 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zExtra, i64 0, i64 0
  %call29 = call i8* @GetFirstElement(i8* %arraydecay28, i8** %z)
  store i8* %call29, i8** %zCmd, align 8
  %16 = load i8*, i8** %zCmd, align 8
  %cmp30 = icmp eq i8* %16, null
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %while.body
  br label %while.cond

if.end33:                                         ; preds = %while.body
  %17 = load i8*, i8** %zCmd, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %18 to i32
  %cmp36 = icmp eq i32 %conv35, 35
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end33
  br label %while.cond

if.end39:                                         ; preds = %if.end33
  %19 = load i8*, i8** %z, align 8
  call void @RemoveNewline(i8* %19)
  %20 = load i8*, i8** %zCmd, align 8
  %call40 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.529, i64 0, i64 0)) #8
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end39
  %21 = load i8*, i8** %zRelight, align 8
  call void @free(i8* %21) #7
  %22 = load i8*, i8** %z, align 8
  %call44 = call i8* @StrDup(i8* %22)
  store i8* %call44, i8** %zRelight, align 8
  br label %while.cond

if.end45:                                         ; preds = %if.end39
  %23 = load i8*, i8** %zCmd, align 8
  %call46 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.530, i64 0, i64 0)) #8
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end45
  %24 = load i8*, i8** %zFallback, align 8
  call void @free(i8* %24) #7
  %25 = load i8*, i8** %z, align 8
  %call50 = call i8* @StrDup(i8* %25)
  store i8* %call50, i8** %zFallback, align 8
  br label %while.cond

if.end51:                                         ; preds = %if.end45
  %26 = load i8*, i8** %zCmd, align 8
  %27 = load i8*, i8** %z, align 8
  %tobool52 = icmp ne i8* %27, null
  br i1 %tobool52, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end51
  %28 = load i8*, i8** %z, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end51
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %28, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), %cond.false ]
  call void (i32, i8*, ...) @Malfunction(i32 704, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.531, i64 0, i64 0), i8* %26, i8* %cond)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call53 = call i32 @fclose(%struct._IO_FILE* %29)
  %30 = bitcast %struct.addrinfo* %hints to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 48, i1 false)
  %ai_family = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 1
  store i32 0, i32* %ai_family, align 4
  %ai_socktype = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 2
  store i32 1, i32* %ai_socktype, align 8
  %ai_protocol = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 3
  store i32 6, i32* %ai_protocol, align 4
  %31 = load i8*, i8** %zHost, align 8
  %32 = load i8*, i8** %zPort, align 8
  %call54 = call i32 @getaddrinfo(i8* %31, i8* %32, %struct.addrinfo* %hints, %struct.addrinfo** %ai)
  store i32 %call54, i32* %rc, align 4
  %33 = load i32, i32* %rc, align 4
  %tobool55 = icmp ne i32 %33, 0
  br i1 %tobool55, label %if.then56, label %if.end58

if.then56:                                        ; preds = %while.end
  %34 = load i8*, i8** %zHost, align 8
  %35 = load i8*, i8** %zPort, align 8
  %36 = load i32, i32* %rc, align 4
  %call57 = call i8* @gai_strerror(i32 %36) #7
  call void (i32, i8*, ...) @Malfunction(i32 704, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.532, i64 0, i64 0), i8* %34, i8* %35, i8* %call57)
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %while.end
  br label %while.body60

while.body60:                                     ; preds = %if.end58, %if.end93
  %37 = load %struct.addrinfo*, %struct.addrinfo** %ai, align 8
  store %struct.addrinfo* %37, %struct.addrinfo** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body60
  %38 = load %struct.addrinfo*, %struct.addrinfo** %p, align 8
  %tobool61 = icmp ne %struct.addrinfo* %38, null
  br i1 %tobool61, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load %struct.addrinfo*, %struct.addrinfo** %p, align 8
  %ai_family62 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %39, i32 0, i32 1
  %40 = load i32, i32* %ai_family62, align 4
  %41 = load %struct.addrinfo*, %struct.addrinfo** %p, align 8
  %ai_socktype63 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %41, i32 0, i32 2
  %42 = load i32, i32* %ai_socktype63, align 8
  %43 = load %struct.addrinfo*, %struct.addrinfo** %p, align 8
  %ai_protocol64 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %43, i32 0, i32 3
  %44 = load i32, i32* %ai_protocol64, align 4
  %call65 = call i32 @socket(i32 %40, i32 %42, i32 %44) #7
  store i32 %call65, i32* %iSocket, align 4
  %45 = load i32, i32* %iSocket, align 4
  %cmp66 = icmp slt i32 %45, 0
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %for.body
  br label %for.inc

if.end69:                                         ; preds = %for.body
  %46 = load i32, i32* %iSocket, align 4
  %47 = load %struct.addrinfo*, %struct.addrinfo** %p, align 8
  %ai_addr = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 5
  %48 = load %struct.sockaddr*, %struct.sockaddr** %ai_addr, align 8
  %49 = load %struct.addrinfo*, %struct.addrinfo** %p, align 8
  %ai_addrlen = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %49, i32 0, i32 4
  %50 = load i32, i32* %ai_addrlen, align 8
  %call70 = call i32 @connect(i32 %46, %struct.sockaddr* %48, i32 %50)
  %cmp71 = icmp sge i32 %call70, 0
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end69
  br label %for.end

if.end74:                                         ; preds = %if.end69
  %51 = load i32, i32* %iSocket, align 4
  %call75 = call i32 @close(i32 %51)
  br label %for.inc

for.inc:                                          ; preds = %if.end74, %if.then68
  %52 = load %struct.addrinfo*, %struct.addrinfo** %p, align 8
  %ai_next = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %52, i32 0, i32 7
  %53 = load %struct.addrinfo*, %struct.addrinfo** %ai_next, align 8
  store %struct.addrinfo* %53, %struct.addrinfo** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then73, %for.cond
  %54 = load i32, i32* %iSocket, align 4
  %cmp76 = icmp slt i32 %54, 0
  br i1 %cmp76, label %if.then82, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %for.end
  %55 = load i32, i32* %iSocket, align 4
  %call79 = call %struct._IO_FILE* @fdopen(i32 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.533, i64 0, i64 0)) #7
  store %struct._IO_FILE* %call79, %struct._IO_FILE** %s, align 8
  %cmp80 = icmp eq %struct._IO_FILE* %call79, null
  br i1 %cmp80, label %if.then82, label %if.end120

if.then82:                                        ; preds = %lor.lhs.false78, %for.end
  %56 = load i32, i32* %iSocket, align 4
  %cmp83 = icmp sge i32 %56, 0
  br i1 %cmp83, label %if.then85, label %if.end87

if.then85:                                        ; preds = %if.then82
  %57 = load i32, i32* %iSocket, align 4
  %call86 = call i32 @close(i32 %57)
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.then82
  %58 = load i8*, i8** %zRelight, align 8
  %tobool88 = icmp ne i8* %58, null
  br i1 %tobool88, label %if.then89, label %if.end95

if.then89:                                        ; preds = %if.end87
  %59 = load i8*, i8** %zRelight, align 8
  %call90 = call i32 @system(i8* %59)
  store i32 %call90, i32* %rc, align 4
  %60 = load i32, i32* %rc, align 4
  %tobool91 = icmp ne i32 %60, 0
  br i1 %tobool91, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.then89
  %61 = load i32, i32* %rc, align 4
  %62 = load i8*, i8** %zRelight, align 8
  call void (i32, i8*, ...) @Malfunction(i32 721, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.534, i64 0, i64 0), i32 %61, i8* %62)
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %if.then89
  %63 = load i8*, i8** %zRelight, align 8
  call void @free(i8* %63) #7
  store i8* null, i8** %zRelight, align 8
  %call94 = call i32 @sleep(i32 1)
  br label %while.body60

if.end95:                                         ; preds = %if.end87
  %64 = load i8*, i8** %zFallback, align 8
  %tobool96 = icmp ne i8* %64, null
  br i1 %tobool96, label %if.then97, label %if.end119

if.then97:                                        ; preds = %if.end95
  %65 = bitcast %struct.stat* %statbuf to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 144, i1 false)
  %66 = load i8*, i8** @zDir, align 8
  %call99 = call i32 @chdir(i8* %66) #7
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.then101, label %if.end104

if.then101:                                       ; preds = %if.then97
  %67 = load i8*, i8** @zDir, align 8
  %arraydecay102 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zBuf, i64 0, i64 0
  %call103 = call i8* @getcwd(i8* %arraydecay102, i64 999) #7
  call void (i32, i8*, ...) @Malfunction(i32 720, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.337, i64 0, i64 0), i8* %67, i8* %call103)
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %if.then97
  %68 = load i8*, i8** %zFallback, align 8
  %call105 = call i32 @stat(i8* %68, %struct.stat* %statbuf) #7
  store i32 %call105, i32* %rc98, align 4
  %69 = load i32, i32* %rc98, align 4
  %cmp106 = icmp eq i32 %69, 0
  br i1 %cmp106, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end104
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %70 = load i32, i32* %st_mode, align 8
  %and = and i32 %70, 61440
  %cmp108 = icmp eq i32 %and, 32768
  br i1 %cmp108, label %land.lhs.true110, label %if.else

land.lhs.true110:                                 ; preds = %land.lhs.true
  %71 = load i8*, i8** %zFallback, align 8
  %call111 = call i32 @access(i8* %71, i32 4) #7
  %cmp112 = icmp eq i32 %call111, 0
  br i1 %cmp112, label %if.then114, label %if.else

if.then114:                                       ; preds = %land.lhs.true110
  store i32 1, i32* @closeConnection, align 4
  %72 = load i8*, i8** %zFallback, align 8
  %73 = load i8*, i8** %zFallback, align 8
  %call115 = call i64 @strlen(i8* %73) #8
  %conv116 = trunc i64 %call115 to i32
  %call117 = call i32 @SendFile(i8* %72, i32 %conv116, %struct.stat* %statbuf)
  store i32 %call117, i32* %rc98, align 4
  %74 = load i8*, i8** %zFallback, align 8
  call void @free(i8* %74) #7
  call void @exit(i32 0) #9
  unreachable

if.else:                                          ; preds = %land.lhs.true110, %land.lhs.true, %if.end104
  %75 = load i8*, i8** %zFallback, align 8
  call void (i32, i8*, ...) @Malfunction(i32 706, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.535, i64 0, i64 0), i8* %75)
  br label %if.end118

if.end118:                                        ; preds = %if.else
  br label %if.end119

if.end119:                                        ; preds = %if.end118, %if.end95
  %76 = load i8*, i8** %zScript.addr, align 8
  call void (i32, i8*, ...) @Malfunction(i32 707, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.536, i64 0, i64 0), i8* %76)
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %lor.lhs.false78
  br label %while.end121

while.end121:                                     ; preds = %if.end120
  store i64 0, i64* %nHdrAlloc, align 8
  store i8* null, i8** %zHdr, align 8
  %77 = load i8*, i8** @zContentLength, align 8
  %cmp122 = icmp eq i8* %77, null
  br i1 %cmp122, label %if.then124, label %if.end125

if.then124:                                       ; preds = %while.end121
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.413, i64 0, i64 0), i8** @zContentLength, align 8
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %while.end121
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.537, i64 0, i64 0), i8** @zScgi, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond126

for.cond126:                                      ; preds = %for.inc179, %if.end125
  %78 = load i32, i32* %i, align 4
  %cmp127 = icmp slt i32 %78, 27
  br i1 %cmp127, label %for.body129, label %for.end181

for.body129:                                      ; preds = %for.cond126
  %79 = load i32, i32* %i, align 4
  %idxprom = sext i32 %79 to i64
  %arrayidx130 = getelementptr inbounds [27 x %struct.anon.0], [27 x %struct.anon.0]* @cgienv, i64 0, i64 %idxprom
  %pzEnvValue = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx130, i32 0, i32 1
  %80 = load i8**, i8*** %pzEnvValue, align 8
  %arrayidx131 = getelementptr inbounds i8*, i8** %80, i64 0
  %81 = load i8*, i8** %arrayidx131, align 8
  %cmp132 = icmp eq i8* %81, null
  br i1 %cmp132, label %if.then134, label %if.end135

if.then134:                                       ; preds = %for.body129
  br label %for.inc179

if.end135:                                        ; preds = %for.body129
  %82 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %82 to i64
  %arrayidx137 = getelementptr inbounds [27 x %struct.anon.0], [27 x %struct.anon.0]* @cgienv, i64 0, i64 %idxprom136
  %zEnvName = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx137, i32 0, i32 0
  %83 = load i8*, i8** %zEnvName, align 16
  %call138 = call i64 @strlen(i8* %83) #8
  %conv139 = trunc i64 %call138 to i32
  store i32 %conv139, i32* %n1, align 4
  %84 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %84 to i64
  %arrayidx141 = getelementptr inbounds [27 x %struct.anon.0], [27 x %struct.anon.0]* @cgienv, i64 0, i64 %idxprom140
  %pzEnvValue142 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx141, i32 0, i32 1
  %85 = load i8**, i8*** %pzEnvValue142, align 8
  %86 = load i8*, i8** %85, align 8
  %call143 = call i64 @strlen(i8* %86) #8
  %conv144 = trunc i64 %call143 to i32
  store i32 %conv144, i32* %n2, align 4
  %87 = load i32, i32* %n1, align 4
  %88 = load i32, i32* %n2, align 4
  %add = add nsw i32 %87, %88
  %add145 = add nsw i32 %add, 2
  %conv146 = sext i32 %add145 to i64
  %89 = load i64, i64* %nHdr, align 8
  %add147 = add i64 %conv146, %89
  %90 = load i64, i64* %nHdrAlloc, align 8
  %cmp148 = icmp uge i64 %add147, %90
  br i1 %cmp148, label %if.then150, label %if.end161

if.then150:                                       ; preds = %if.end135
  %91 = load i64, i64* %nHdr, align 8
  %92 = load i32, i32* %n1, align 4
  %conv151 = sext i32 %92 to i64
  %add152 = add i64 %91, %conv151
  %93 = load i32, i32* %n2, align 4
  %conv153 = sext i32 %93 to i64
  %add154 = add i64 %add152, %conv153
  %add155 = add i64 %add154, 1000
  store i64 %add155, i64* %nHdrAlloc, align 8
  %94 = load i8*, i8** %zHdr, align 8
  %95 = load i64, i64* %nHdrAlloc, align 8
  %call156 = call i8* @realloc(i8* %94, i64 %95) #7
  store i8* %call156, i8** %zHdr, align 8
  %96 = load i8*, i8** %zHdr, align 8
  %cmp157 = icmp eq i8* %96, null
  br i1 %cmp157, label %if.then159, label %if.end160

if.then159:                                       ; preds = %if.then150
  call void (i32, i8*, ...) @Malfunction(i32 706, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.538, i64 0, i64 0))
  br label %if.end160

if.end160:                                        ; preds = %if.then159, %if.then150
  br label %if.end161

if.end161:                                        ; preds = %if.end160, %if.end135
  %97 = load i8*, i8** %zHdr, align 8
  %98 = load i64, i64* %nHdr, align 8
  %add.ptr162 = getelementptr inbounds i8, i8* %97, i64 %98
  %99 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %99 to i64
  %arrayidx164 = getelementptr inbounds [27 x %struct.anon.0], [27 x %struct.anon.0]* @cgienv, i64 0, i64 %idxprom163
  %zEnvName165 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx164, i32 0, i32 0
  %100 = load i8*, i8** %zEnvName165, align 16
  %101 = load i32, i32* %n1, align 4
  %conv166 = sext i32 %101 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr162, i8* align 1 %100, i64 %conv166, i1 false)
  %102 = load i32, i32* %n1, align 4
  %conv167 = sext i32 %102 to i64
  %103 = load i64, i64* %nHdr, align 8
  %add168 = add i64 %103, %conv167
  store i64 %add168, i64* %nHdr, align 8
  %104 = load i8*, i8** %zHdr, align 8
  %105 = load i64, i64* %nHdr, align 8
  %inc = add i64 %105, 1
  store i64 %inc, i64* %nHdr, align 8
  %arrayidx169 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8 0, i8* %arrayidx169, align 1
  %106 = load i8*, i8** %zHdr, align 8
  %107 = load i64, i64* %nHdr, align 8
  %add.ptr170 = getelementptr inbounds i8, i8* %106, i64 %107
  %108 = load i32, i32* %i, align 4
  %idxprom171 = sext i32 %108 to i64
  %arrayidx172 = getelementptr inbounds [27 x %struct.anon.0], [27 x %struct.anon.0]* @cgienv, i64 0, i64 %idxprom171
  %pzEnvValue173 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx172, i32 0, i32 1
  %109 = load i8**, i8*** %pzEnvValue173, align 8
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %n2, align 4
  %conv174 = sext i32 %111 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr170, i8* align 1 %110, i64 %conv174, i1 false)
  %112 = load i32, i32* %n2, align 4
  %conv175 = sext i32 %112 to i64
  %113 = load i64, i64* %nHdr, align 8
  %add176 = add i64 %113, %conv175
  store i64 %add176, i64* %nHdr, align 8
  %114 = load i8*, i8** %zHdr, align 8
  %115 = load i64, i64* %nHdr, align 8
  %inc177 = add i64 %115, 1
  store i64 %inc177, i64* %nHdr, align 8
  %arrayidx178 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8 0, i8* %arrayidx178, align 1
  br label %for.inc179

for.inc179:                                       ; preds = %if.end161, %if.then134
  %116 = load i32, i32* %i, align 4
  %inc180 = add nsw i32 %116, 1
  store i32 %inc180, i32* %i, align 4
  br label %for.cond126

for.end181:                                       ; preds = %for.cond126
  store i8* null, i8** @zScgi, align 8
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %s, align 8
  %118 = load i64, i64* %nHdr, align 8
  %conv182 = trunc i64 %118 to i32
  %call183 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.539, i64 0, i64 0), i32 %conv182)
  %119 = load i8*, i8** %zHdr, align 8
  %120 = load i64, i64* %nHdr, align 8
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %s, align 8
  %call184 = call i64 @fwrite(i8* %119, i64 1, i64 %120, %struct._IO_FILE* %121)
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %s, align 8
  %call185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.540, i64 0, i64 0))
  %123 = load i8*, i8** %zHdr, align 8
  call void @free(i8* %123) #7
  %124 = load i8*, i8** @zMethod, align 8
  %arrayidx186 = getelementptr inbounds i8, i8* %124, i64 0
  %125 = load i8, i8* %arrayidx186, align 1
  %conv187 = sext i8 %125 to i32
  %cmp188 = icmp eq i32 %conv187, 80
  br i1 %cmp188, label %land.lhs.true190, label %if.end209

land.lhs.true190:                                 ; preds = %for.end181
  %126 = load i8*, i8** @zContentLength, align 8
  %call191 = call i32 @atoi(i8* %126) #8
  %cmp192 = icmp sgt i32 %call191, 0
  br i1 %cmp192, label %land.lhs.true194, label %if.end209

land.lhs.true194:                                 ; preds = %land.lhs.true190
  %127 = load i8*, i8** @zTmpNam, align 8
  %call195 = call %struct._IO_FILE* @fopen(i8* %127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.541, i64 0, i64 0))
  store %struct._IO_FILE* %call195, %struct._IO_FILE** %in, align 8
  %cmp196 = icmp ne %struct._IO_FILE* %call195, null
  br i1 %cmp196, label %if.then198, label %if.end209

if.then198:                                       ; preds = %land.lhs.true194
  br label %while.cond199

while.cond199:                                    ; preds = %while.body204, %if.then198
  %arraydecay200 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call201 = call i64 @fread(i8* %arraydecay200, i64 1, i64 1000, %struct._IO_FILE* %128)
  store i64 %call201, i64* %n, align 8
  %cmp202 = icmp ugt i64 %call201, 0
  br i1 %cmp202, label %while.body204, label %while.end207

while.body204:                                    ; preds = %while.cond199
  %arraydecay205 = getelementptr inbounds [1000 x i8], [1000 x i8]* %zLine, i64 0, i64 0
  %129 = load i64, i64* %n, align 8
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %s, align 8
  %call206 = call i64 @fwrite(i8* %arraydecay205, i64 1, i64 %129, %struct._IO_FILE* %130)
  br label %while.cond199

while.end207:                                     ; preds = %while.cond199
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call208 = call i32 @fclose(%struct._IO_FILE* %131)
  br label %if.end209

if.end209:                                        ; preds = %while.end207, %land.lhs.true194, %land.lhs.true190, %for.end181
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %s, align 8
  %call210 = call i32 @fflush(%struct._IO_FILE* %132)
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** %s, align 8
  call void @CgiHandleReply(%struct._IO_FILE* %133)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @countSlashes(i8* %z) #0 {
entry:
  %z.addr = alloca i8*, align 8
  %n = alloca i32, align 4
  store i8* %z, i8** %z.addr, align 8
  store i32 0, i32* %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %z.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %z.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %z.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load i32, i32* %n, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %n, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @SendFile(i8* %zFile, i32 %lenFile, %struct.stat* %pStat) #0 {
entry:
  %retval = alloca i32, align 4
  %zFile.addr = alloca i8*, align 8
  %lenFile.addr = alloca i32, align 4
  %pStat.addr = alloca %struct.stat*, align 8
  %zContentType = alloca i8*, align 8
  %t = alloca i64, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %zETag = alloca [100 x i8], align 16
  %offset = alloca i64, align 8
  store i8* %zFile, i8** %zFile.addr, align 8
  store i32 %lenFile, i32* %lenFile.addr, align 4
  store %struct.stat* %pStat, %struct.stat** %pStat.addr, align 8
  %0 = load i8*, i8** %zFile.addr, align 8
  %1 = load i32, i32* %lenFile.addr, align 4
  %call = call i8* @GetMimeType(i8* %0, i32 %1)
  store i8* %call, i8** %zContentType, align 8
  %2 = load i8*, i8** @zTmpNam, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** @zTmpNam, align 8
  %call1 = call i32 @unlink(i8* %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %zETag, i64 0, i64 0
  %4 = load %struct.stat*, %struct.stat** %pStat.addr, align 8
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 12
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %5 = load i64, i64* %tv_sec, align 8
  %conv = trunc i64 %5 to i32
  %6 = load %struct.stat*, %struct.stat** %pStat.addr, align 8
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 8
  %7 = load i64, i64* %st_size, align 8
  %conv2 = trunc i64 %7 to i32
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.542, i64 0, i64 0), i32 %conv, i32 %conv2) #7
  %8 = load i8*, i8** @zIfNoneMatch, align 8
  %arraydecay4 = getelementptr inbounds [100 x i8], [100 x i8]* %zETag, i64 0, i64 0
  %call5 = call i32 @CompareEtags(i8* %8, i8* %arraydecay4)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i8*, i8** @zIfModifiedSince, align 8
  %cmp7 = icmp ne i8* %9, null
  br i1 %cmp7, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %lor.lhs.false
  %10 = load i8*, i8** @zIfModifiedSince, align 8
  %call9 = call i64 @ParseRfc822Date(i8* %10)
  store i64 %call9, i64* %t, align 8
  %cmp10 = icmp sgt i64 %call9, 0
  br i1 %cmp10, label %land.lhs.true12, label %if.end29

land.lhs.true12:                                  ; preds = %land.lhs.true
  %11 = load i64, i64* %t, align 8
  %12 = load %struct.stat*, %struct.stat** %pStat.addr, align 8
  %st_mtim13 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 12
  %tv_sec14 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim13, i32 0, i32 0
  %13 = load i64, i64* %tv_sec14, align 8
  %cmp15 = icmp sge i64 %11, %13
  br i1 %cmp15, label %if.then17, label %if.end29

if.then17:                                        ; preds = %land.lhs.true12, %if.end
  call void @StartResponse(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.543, i64 0, i64 0))
  %14 = load %struct.stat*, %struct.stat** %pStat.addr, align 8
  %st_mtim18 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 12
  %tv_sec19 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim18, i32 0, i32 0
  %15 = load i64, i64* %tv_sec19, align 8
  %call20 = call i32 @DateTag(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.544, i64 0, i64 0), i64 %15)
  %16 = load i32, i32* @nOut, align 4
  %add = add nsw i32 %16, %call20
  store i32 %add, i32* @nOut, align 4
  %17 = load i32, i32* @mxAge, align 4
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.545, i64 0, i64 0), i32 %17)
  %18 = load i32, i32* @nOut, align 4
  %add22 = add nsw i32 %18, %call21
  store i32 %add22, i32* @nOut, align 4
  %arraydecay23 = getelementptr inbounds [100 x i8], [100 x i8]* %zETag, i64 0, i64 0
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.546, i64 0, i64 0), i8* %arraydecay23)
  %19 = load i32, i32* @nOut, align 4
  %add25 = add nsw i32 %19, %call24
  store i32 %add25, i32* @nOut, align 4
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.469, i64 0, i64 0))
  %20 = load i32, i32* @nOut, align 4
  %add27 = add nsw i32 %20, %call26
  store i32 %add27, i32* @nOut, align 4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call28 = call i32 @fflush(%struct._IO_FILE* %21)
  call void @MakeLogEntry(i32 0, i32 470)
  store i32 1, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %22 = load i8*, i8** %zFile.addr, align 8
  %call30 = call %struct._IO_FILE* @fopen(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.405, i64 0, i64 0))
  store %struct._IO_FILE* %call30, %struct._IO_FILE** %in, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %cmp31 = icmp eq %struct._IO_FILE* %23, null
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  call void @NotFound(i32 480)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end29
  %24 = load i32, i32* @rangeEnd, align 4
  %cmp35 = icmp sgt i32 %24, 0
  br i1 %cmp35, label %land.lhs.true37, label %if.else

land.lhs.true37:                                  ; preds = %if.end34
  %25 = load i32, i32* @rangeStart, align 4
  %conv38 = sext i32 %25 to i64
  %26 = load %struct.stat*, %struct.stat** %pStat.addr, align 8
  %st_size39 = getelementptr inbounds %struct.stat, %struct.stat* %26, i32 0, i32 8
  %27 = load i64, i64* %st_size39, align 8
  %cmp40 = icmp slt i64 %conv38, %27
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %land.lhs.true37
  call void @StartResponse(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.518, i64 0, i64 0))
  %28 = load i32, i32* @rangeEnd, align 4
  %conv43 = sext i32 %28 to i64
  %29 = load %struct.stat*, %struct.stat** %pStat.addr, align 8
  %st_size44 = getelementptr inbounds %struct.stat, %struct.stat* %29, i32 0, i32 8
  %30 = load i64, i64* %st_size44, align 8
  %cmp45 = icmp sge i64 %conv43, %30
  br i1 %cmp45, label %if.then47, label %if.end50

if.then47:                                        ; preds = %if.then42
  %31 = load %struct.stat*, %struct.stat** %pStat.addr, align 8
  %st_size48 = getelementptr inbounds %struct.stat, %struct.stat* %31, i32 0, i32 8
  %32 = load i64, i64* %st_size48, align 8
  %sub = sub nsw i64 %32, 1
  %conv49 = trunc i64 %sub to i32
  store i32 %conv49, i32* @rangeEnd, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.then42
  %33 = load i32, i32* @rangeStart, align 4
  %34 = load i32, i32* @rangeEnd, align 4
  %35 = load %struct.stat*, %struct.stat** %pStat.addr, align 8
  %st_size51 = getelementptr inbounds %struct.stat, %struct.stat* %35, i32 0, i32 8
  %36 = load i64, i64* %st_size51, align 8
  %conv52 = trunc i64 %36 to i32
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.519, i64 0, i64 0), i32 %33, i32 %34, i32 %conv52)
  %37 = load i32, i32* @nOut, align 4
  %add54 = add nsw i32 %37, %call53
  store i32 %add54, i32* @nOut, align 4
  %38 = load i32, i32* @rangeEnd, align 4
  %add55 = add nsw i32 %38, 1
  %39 = load i32, i32* @rangeStart, align 4
  %sub56 = sub nsw i32 %add55, %39
  %conv57 = sext i32 %sub56 to i64
  %40 = load %struct.stat*, %struct.stat** %pStat.addr, align 8
  %st_size58 = getelementptr inbounds %struct.stat, %struct.stat* %40, i32 0, i32 8
  store i64 %conv57, i64* %st_size58, align 8
  br label %if.end59

if.else:                                          ; preds = %land.lhs.true37, %if.end34
  call void @StartResponse(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.520, i64 0, i64 0))
  store i32 0, i32* @rangeStart, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.end50
  %41 = load %struct.stat*, %struct.stat** %pStat.addr, align 8
  %st_mtim60 = getelementptr inbounds %struct.stat, %struct.stat* %41, i32 0, i32 12
  %tv_sec61 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim60, i32 0, i32 0
  %42 = load i64, i64* %tv_sec61, align 8
  %call62 = call i32 @DateTag(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.544, i64 0, i64 0), i64 %42)
  %43 = load i32, i32* @nOut, align 4
  %add63 = add nsw i32 %43, %call62
  store i32 %add63, i32* @nOut, align 4
  %44 = load i32, i32* @mxAge, align 4
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.545, i64 0, i64 0), i32 %44)
  %45 = load i32, i32* @nOut, align 4
  %add65 = add nsw i32 %45, %call64
  store i32 %add65, i32* @nOut, align 4
  %arraydecay66 = getelementptr inbounds [100 x i8], [100 x i8]* %zETag, i64 0, i64 0
  %call67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.546, i64 0, i64 0), i8* %arraydecay66)
  %46 = load i32, i32* @nOut, align 4
  %add68 = add nsw i32 %46, %call67
  store i32 %add68, i32* @nOut, align 4
  %47 = load i8*, i8** %zContentType, align 8
  %call69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.547, i64 0, i64 0), i8* %47)
  %48 = load i32, i32* @nOut, align 4
  %add70 = add nsw i32 %48, %call69
  store i32 %add70, i32* @nOut, align 4
  %49 = load %struct.stat*, %struct.stat** %pStat.addr, align 8
  %st_size71 = getelementptr inbounds %struct.stat, %struct.stat* %49, i32 0, i32 8
  %50 = load i64, i64* %st_size71, align 8
  %conv72 = trunc i64 %50 to i32
  %call73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.522, i64 0, i64 0), i32 %conv72)
  %51 = load i32, i32* @nOut, align 4
  %add74 = add nsw i32 %51, %call73
  store i32 %add74, i32* @nOut, align 4
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call75 = call i32 @fflush(%struct._IO_FILE* %52)
  %53 = load i8*, i8** @zMethod, align 8
  %call76 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.343, i64 0, i64 0)) #8
  %cmp77 = icmp eq i32 %call76, 0
  br i1 %cmp77, label %if.then79, label %if.end82

if.then79:                                        ; preds = %if.end59
  call void @MakeLogEntry(i32 0, i32 2)
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call80 = call i32 @fclose(%struct._IO_FILE* %54)
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call81 = call i32 @fflush(%struct._IO_FILE* %55)
  store i32 1, i32* %retval, align 4
  br label %return

if.end82:                                         ; preds = %if.end59
  %56 = load i32, i32* @useTimeout, align 4
  %tobool83 = icmp ne i32 %56, 0
  br i1 %tobool83, label %if.then84, label %if.end89

if.then84:                                        ; preds = %if.end82
  %57 = load %struct.stat*, %struct.stat** %pStat.addr, align 8
  %st_size85 = getelementptr inbounds %struct.stat, %struct.stat* %57, i32 0, i32 8
  %58 = load i64, i64* %st_size85, align 8
  %div = sdiv i64 %58, 1000
  %add86 = add nsw i64 30, %div
  %conv87 = trunc i64 %add86 to i32
  %call88 = call i32 @alarm(i32 %conv87) #7
  br label %if.end89

if.end89:                                         ; preds = %if.then84, %if.end82
  %59 = load i32, i32* @rangeStart, align 4
  %conv90 = sext i32 %59 to i64
  store i64 %conv90, i64* %offset, align 8
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call91 = call i32 @fileno(%struct._IO_FILE* %60) #7
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call92 = call i32 @fileno(%struct._IO_FILE* %61) #7
  %62 = load %struct.stat*, %struct.stat** %pStat.addr, align 8
  %st_size93 = getelementptr inbounds %struct.stat, %struct.stat* %62, i32 0, i32 8
  %63 = load i64, i64* %st_size93, align 8
  %call94 = call i64 @sendfile(i32 %call91, i32 %call92, i64* %offset, i64 %63) #7
  %64 = load i32, i32* @nOut, align 4
  %conv95 = sext i32 %64 to i64
  %add96 = add nsw i64 %conv95, %call94
  %conv97 = trunc i64 %add96 to i32
  store i32 %conv97, i32* @nOut, align 4
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call98 = call i32 @fclose(%struct._IO_FILE* %65)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end89, %if.then79, %if.then17
  %66 = load i32, i32* %retval, align 4
  ret i32 %66
}

declare dso_local i32 @fflush(%struct._IO_FILE*) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @http_server(i8* %zPort, i32 %localOnly) #0 {
entry:
  %retval = alloca i32, align 4
  %zPort.addr = alloca i8*, align 8
  %localOnly.addr = alloca i32, align 4
  %listener = alloca [20 x i32], align 16
  %connection = alloca i32, align 4
  %readfds = alloca %struct.fd_set, align 8
  %inaddr = alloca %union.address, align 8
  %lenaddr = alloca i32, align 4
  %child = alloca i32, align 4
  %nchildren = alloca i32, align 4
  %delay = alloca %struct.timeval, align 8
  %opt = alloca i32, align 4
  %sHints = alloca %struct.addrinfo, align 8
  %pAddrs = alloca %struct.addrinfo*, align 8
  %p = alloca %struct.addrinfo*, align 8
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %maxFd = alloca i32, align 4
  %v6only = alloca i32, align 4
  %__d0 = alloca i32, align 4
  %__d1 = alloca i32, align 4
  %nErr = alloca i32, align 4
  %fd = alloca i32, align 4
  store i8* %zPort, i8** %zPort.addr, align 8
  store i32 %localOnly, i32* %localOnly.addr, align 4
  store i32 0, i32* %nchildren, align 4
  store i32 1, i32* %opt, align 4
  store i32 -1, i32* %maxFd, align 4
  %0 = bitcast %struct.addrinfo* %sHints to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 48, i1 false)
  %1 = load i32, i32* @ipv4Only, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %ai_family = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %sHints, i32 0, i32 1
  store i32 2, i32* %ai_family, align 4
  br label %if.end6

if.else:                                          ; preds = %entry
  %2 = load i32, i32* @ipv6Only, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  %ai_family3 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %sHints, i32 0, i32 1
  store i32 10, i32* %ai_family3, align 4
  br label %if.end

if.else4:                                         ; preds = %if.else
  %ai_family5 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %sHints, i32 0, i32 1
  store i32 0, i32* %ai_family5, align 4
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then2
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %ai_socktype = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %sHints, i32 0, i32 2
  store i32 1, i32* %ai_socktype, align 8
  %ai_flags = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %sHints, i32 0, i32 0
  store i32 1, i32* %ai_flags, align 8
  %ai_protocol = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %sHints, i32 0, i32 3
  store i32 0, i32* %ai_protocol, align 4
  %3 = load i32, i32* %localOnly.addr, align 4
  %tobool7 = icmp ne i32 %3, 0
  %4 = zext i1 %tobool7 to i64
  %cond = select i1 %tobool7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.407, i64 0, i64 0), i8* null
  %5 = load i8*, i8** %zPort.addr, align 8
  %call = call i32 @getaddrinfo(i8* %cond, i8* %5, %struct.addrinfo* %sHints, %struct.addrinfo** %pAddrs)
  store i32 %call, i32* %rc, align 4
  %6 = load i32, i32* %rc, align 4
  %tobool8 = icmp ne i32 %6, 0
  br i1 %tobool8, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end6
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load i32, i32* %rc, align 4
  %cmp = icmp ne i32 %8, -11
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then9
  %9 = load i32, i32* %rc, align 4
  %call10 = call i8* @gai_strerror(i32 %9) #7
  br label %cond.end

cond.false:                                       ; preds = %if.then9
  %call11 = call i32* @__errno_location() #10
  %10 = load i32, i32* %call11, align 4
  %call12 = call i8* @strerror(i32 %10) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond13 = phi i8* [ %call10, %cond.true ], [ %call12, %cond.false ]
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.408, i64 0, i64 0), i8* %cond13)
  store i32 1, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end6
  store i32 0, i32* %n, align 4
  %11 = load %struct.addrinfo*, %struct.addrinfo** %pAddrs, align 8
  store %struct.addrinfo* %11, %struct.addrinfo** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end15
  %12 = load i32, i32* %n, align 4
  %cmp16 = icmp slt i32 %12, 20
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %13 = load %struct.addrinfo*, %struct.addrinfo** %p, align 8
  %cmp17 = icmp ne %struct.addrinfo* %13, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %14 = phi i1 [ false, %for.cond ], [ %cmp17, %land.rhs ]
  br i1 %14, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %15 = load %struct.addrinfo*, %struct.addrinfo** %p, align 8
  %ai_family18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 1
  %16 = load i32, i32* %ai_family18, align 4
  %17 = load %struct.addrinfo*, %struct.addrinfo** %p, align 8
  %ai_socktype19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %17, i32 0, i32 2
  %18 = load i32, i32* %ai_socktype19, align 8
  %19 = load %struct.addrinfo*, %struct.addrinfo** %p, align 8
  %ai_protocol20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %19, i32 0, i32 3
  %20 = load i32, i32* %ai_protocol20, align 4
  %call21 = call i32 @socket(i32 %16, i32 %18, i32 %20) #7
  %21 = load i32, i32* %n, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* %listener, i64 0, i64 %idxprom
  store i32 %call21, i32* %arrayidx, align 4
  %22 = load i32, i32* %n, align 4
  %idxprom22 = sext i32 %22 to i64
  %arrayidx23 = getelementptr inbounds [20 x i32], [20 x i32]* %listener, i64 0, i64 %idxprom22
  %23 = load i32, i32* %arrayidx23, align 4
  %cmp24 = icmp sge i32 %23, 0
  br i1 %cmp24, label %if.then25, label %if.end60

if.then25:                                        ; preds = %for.body
  %24 = load i32, i32* %n, align 4
  %idxprom26 = sext i32 %24 to i64
  %arrayidx27 = getelementptr inbounds [20 x i32], [20 x i32]* %listener, i64 0, i64 %idxprom26
  %25 = load i32, i32* %arrayidx27, align 4
  %26 = bitcast i32* %opt to i8*
  %call28 = call i32 @setsockopt(i32 %25, i32 1, i32 2, i8* %26, i32 4) #7
  %27 = load %struct.addrinfo*, %struct.addrinfo** %p, align 8
  %ai_family29 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %27, i32 0, i32 1
  %28 = load i32, i32* %ai_family29, align 4
  %cmp30 = icmp eq i32 %28, 10
  br i1 %cmp30, label %if.then31, label %if.end35

if.then31:                                        ; preds = %if.then25
  store i32 1, i32* %v6only, align 4
  %29 = load i32, i32* %n, align 4
  %idxprom32 = sext i32 %29 to i64
  %arrayidx33 = getelementptr inbounds [20 x i32], [20 x i32]* %listener, i64 0, i64 %idxprom32
  %30 = load i32, i32* %arrayidx33, align 4
  %31 = bitcast i32* %v6only to i8*
  %call34 = call i32 @setsockopt(i32 %30, i32 41, i32 26, i8* %31, i32 4) #7
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.then25
  %32 = load i32, i32* %n, align 4
  %idxprom36 = sext i32 %32 to i64
  %arrayidx37 = getelementptr inbounds [20 x i32], [20 x i32]* %listener, i64 0, i64 %idxprom36
  %33 = load i32, i32* %arrayidx37, align 4
  %34 = load %struct.addrinfo*, %struct.addrinfo** %p, align 8
  %ai_addr = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %34, i32 0, i32 5
  %35 = load %struct.sockaddr*, %struct.sockaddr** %ai_addr, align 8
  %36 = load %struct.addrinfo*, %struct.addrinfo** %p, align 8
  %ai_addrlen = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %36, i32 0, i32 4
  %37 = load i32, i32* %ai_addrlen, align 8
  %call38 = call i32 @bind(i32 %33, %struct.sockaddr* %35, i32 %37) #7
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then40, label %if.end47

if.then40:                                        ; preds = %if.end35
  %call41 = call i32* @__errno_location() #10
  %38 = load i32, i32* %call41, align 4
  %call42 = call i8* @strerror(i32 %38) #7
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.409, i64 0, i64 0), i8* %call42)
  %39 = load i32, i32* %n, align 4
  %idxprom44 = sext i32 %39 to i64
  %arrayidx45 = getelementptr inbounds [20 x i32], [20 x i32]* %listener, i64 0, i64 %idxprom44
  %40 = load i32, i32* %arrayidx45, align 4
  %call46 = call i32 @close(i32 %40)
  br label %for.inc

if.end47:                                         ; preds = %if.end35
  %41 = load i32, i32* %n, align 4
  %idxprom48 = sext i32 %41 to i64
  %arrayidx49 = getelementptr inbounds [20 x i32], [20 x i32]* %listener, i64 0, i64 %idxprom48
  %42 = load i32, i32* %arrayidx49, align 4
  %call50 = call i32 @listen(i32 %42, i32 20) #7
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then52, label %if.end59

if.then52:                                        ; preds = %if.end47
  %call53 = call i32* @__errno_location() #10
  %43 = load i32, i32* %call53, align 4
  %call54 = call i8* @strerror(i32 %43) #7
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.410, i64 0, i64 0), i8* %call54)
  %44 = load i32, i32* %n, align 4
  %idxprom56 = sext i32 %44 to i64
  %arrayidx57 = getelementptr inbounds [20 x i32], [20 x i32]* %listener, i64 0, i64 %idxprom56
  %45 = load i32, i32* %arrayidx57, align 4
  %call58 = call i32 @close(i32 %45)
  br label %for.inc

if.end59:                                         ; preds = %if.end47
  %46 = load i32, i32* %n, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %n, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end60, %if.then52, %if.then40
  %47 = load %struct.addrinfo*, %struct.addrinfo** %p, align 8
  %ai_next = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 7
  %48 = load %struct.addrinfo*, %struct.addrinfo** %ai_next, align 8
  store %struct.addrinfo* %48, %struct.addrinfo** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %49 = load i32, i32* %n, align 4
  %cmp61 = icmp eq i32 %49, 0
  br i1 %cmp61, label %if.then62, label %if.end64

if.then62:                                        ; preds = %for.end
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.411, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end64:                                         ; preds = %for.end
  br label %while.body

while.body:                                       ; preds = %if.end64, %for.end150
  %51 = load i32, i32* %nchildren, align 4
  %cmp65 = icmp sgt i32 %51, 50
  br i1 %cmp65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %while.body
  %52 = load i32, i32* %nchildren, align 4
  %sub = sub nsw i32 %52, 50
  %call67 = call i32 @sleep(i32 %sub)
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %while.body
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %delay, i32 0, i32 0
  store i64 60, i64* %tv_sec, align 8
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %delay, i32 0, i32 1
  store i64 0, i64* %tv_usec, align 8
  br label %do.body

do.body:                                          ; preds = %if.end68
  %__fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %readfds, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits, i64 0, i64 0
  %53 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx69) #7, !srcloc !2
  %asmresult = extractvalue { i64, i64* } %53, 0
  %asmresult70 = extractvalue { i64, i64* } %53, 1
  %54 = trunc i64 %asmresult to i32
  store i32 %54, i32* %__d0, align 4
  %55 = ptrtoint i64* %asmresult70 to i64
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %__d1, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %i, align 4
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc94, %do.end
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %n, align 4
  %cmp72 = icmp slt i32 %57, %58
  br i1 %cmp72, label %for.body73, label %for.end96

for.body73:                                       ; preds = %for.cond71
  %59 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %59 to i64
  %arrayidx75 = getelementptr inbounds [20 x i32], [20 x i32]* %listener, i64 0, i64 %idxprom74
  %60 = load i32, i32* %arrayidx75, align 4
  %cmp76 = icmp sge i32 %60, 0
  br i1 %cmp76, label %if.then77, label %if.else78

if.then77:                                        ; preds = %for.body73
  br label %if.end79

if.else78:                                        ; preds = %for.body73
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.412, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 2327, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.http_server, i64 0, i64 0)) #9
  unreachable

if.end79:                                         ; preds = %if.then77
  %61 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %61 to i64
  %arrayidx81 = getelementptr inbounds [20 x i32], [20 x i32]* %listener, i64 0, i64 %idxprom80
  %62 = load i32, i32* %arrayidx81, align 4
  %rem = srem i32 %62, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %__fds_bits82 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %readfds, i32 0, i32 0
  %63 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %63 to i64
  %arrayidx84 = getelementptr inbounds [20 x i32], [20 x i32]* %listener, i64 0, i64 %idxprom83
  %64 = load i32, i32* %arrayidx84, align 4
  %div = sdiv i32 %64, 64
  %idxprom85 = sext i32 %div to i64
  %arrayidx86 = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits82, i64 0, i64 %idxprom85
  %65 = load i64, i64* %arrayidx86, align 8
  %or = or i64 %65, %shl
  store i64 %or, i64* %arrayidx86, align 8
  %66 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %66 to i64
  %arrayidx88 = getelementptr inbounds [20 x i32], [20 x i32]* %listener, i64 0, i64 %idxprom87
  %67 = load i32, i32* %arrayidx88, align 4
  %68 = load i32, i32* %maxFd, align 4
  %cmp89 = icmp sgt i32 %67, %68
  br i1 %cmp89, label %if.then90, label %if.end93

if.then90:                                        ; preds = %if.end79
  %69 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %69 to i64
  %arrayidx92 = getelementptr inbounds [20 x i32], [20 x i32]* %listener, i64 0, i64 %idxprom91
  %70 = load i32, i32* %arrayidx92, align 4
  store i32 %70, i32* %maxFd, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %if.end79
  br label %for.inc94

for.inc94:                                        ; preds = %if.end93
  %71 = load i32, i32* %i, align 4
  %inc95 = add nsw i32 %71, 1
  store i32 %inc95, i32* %i, align 4
  br label %for.cond71

for.end96:                                        ; preds = %for.cond71
  %72 = load i32, i32* %maxFd, align 4
  %add = add nsw i32 %72, 1
  %call97 = call i32 @select(i32 %add, %struct.fd_set* %readfds, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %delay)
  store i32 0, i32* %i, align 4
  br label %for.cond98

for.cond98:                                       ; preds = %for.inc148, %for.end96
  %73 = load i32, i32* %i, align 4
  %74 = load i32, i32* %n, align 4
  %cmp99 = icmp slt i32 %73, %74
  br i1 %cmp99, label %for.body100, label %for.end150

for.body100:                                      ; preds = %for.cond98
  %__fds_bits101 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %readfds, i32 0, i32 0
  %75 = load i32, i32* %i, align 4
  %idxprom102 = sext i32 %75 to i64
  %arrayidx103 = getelementptr inbounds [20 x i32], [20 x i32]* %listener, i64 0, i64 %idxprom102
  %76 = load i32, i32* %arrayidx103, align 4
  %div104 = sdiv i32 %76, 64
  %idxprom105 = sext i32 %div104 to i64
  %arrayidx106 = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits101, i64 0, i64 %idxprom105
  %77 = load i64, i64* %arrayidx106, align 8
  %78 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %78 to i64
  %arrayidx108 = getelementptr inbounds [20 x i32], [20 x i32]* %listener, i64 0, i64 %idxprom107
  %79 = load i32, i32* %arrayidx108, align 4
  %rem109 = srem i32 %79, 64
  %sh_prom110 = zext i32 %rem109 to i64
  %shl111 = shl i64 1, %sh_prom110
  %and = and i64 %77, %shl111
  %cmp112 = icmp ne i64 %and, 0
  br i1 %cmp112, label %if.then113, label %if.end143

if.then113:                                       ; preds = %for.body100
  store i32 128, i32* %lenaddr, align 4
  %80 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %80 to i64
  %arrayidx115 = getelementptr inbounds [20 x i32], [20 x i32]* %listener, i64 0, i64 %idxprom114
  %81 = load i32, i32* %arrayidx115, align 4
  %sa = bitcast %union.address* %inaddr to %struct.sockaddr*
  %call116 = call i32 @accept(i32 %81, %struct.sockaddr* %sa, i32* %lenaddr)
  store i32 %call116, i32* %connection, align 4
  %82 = load i32, i32* %connection, align 4
  %cmp117 = icmp sge i32 %82, 0
  br i1 %cmp117, label %if.then118, label %if.end142

if.then118:                                       ; preds = %if.then113
  %call119 = call i32 @fork() #7
  store i32 %call119, i32* %child, align 4
  %83 = load i32, i32* %child, align 4
  %cmp120 = icmp ne i32 %83, 0
  br i1 %cmp120, label %if.then121, label %if.else127

if.then121:                                       ; preds = %if.then118
  %84 = load i32, i32* %child, align 4
  %cmp122 = icmp sgt i32 %84, 0
  br i1 %cmp122, label %if.then123, label %if.end125

if.then123:                                       ; preds = %if.then121
  %85 = load i32, i32* %nchildren, align 4
  %inc124 = add nsw i32 %85, 1
  store i32 %inc124, i32* %nchildren, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %if.then121
  %86 = load i32, i32* %connection, align 4
  %call126 = call i32 @close(i32 %86)
  br label %if.end141

if.else127:                                       ; preds = %if.then118
  store i32 0, i32* %nErr, align 4
  %call128 = call i32 @close(i32 0)
  %87 = load i32, i32* %connection, align 4
  %call129 = call i32 @dup(i32 %87) #7
  store i32 %call129, i32* %fd, align 4
  %88 = load i32, i32* %fd, align 4
  %cmp130 = icmp ne i32 %88, 0
  br i1 %cmp130, label %if.then131, label %if.end133

if.then131:                                       ; preds = %if.else127
  %89 = load i32, i32* %nErr, align 4
  %inc132 = add nsw i32 %89, 1
  store i32 %inc132, i32* %nErr, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %if.else127
  %call134 = call i32 @close(i32 1)
  %90 = load i32, i32* %connection, align 4
  %call135 = call i32 @dup(i32 %90) #7
  store i32 %call135, i32* %fd, align 4
  %91 = load i32, i32* %fd, align 4
  %cmp136 = icmp ne i32 %91, 1
  br i1 %cmp136, label %if.then137, label %if.end139

if.then137:                                       ; preds = %if.end133
  %92 = load i32, i32* %nErr, align 4
  %inc138 = add nsw i32 %92, 1
  store i32 %inc138, i32* %nErr, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.then137, %if.end133
  %93 = load i32, i32* %connection, align 4
  %call140 = call i32 @close(i32 %93)
  %94 = load i32, i32* %nErr, align 4
  store i32 %94, i32* %retval, align 4
  br label %return

if.end141:                                        ; preds = %if.end125
  br label %if.end142

if.end142:                                        ; preds = %if.end141, %if.then113
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %for.body100
  br label %while.cond144

while.cond144:                                    ; preds = %while.body147, %if.end143
  %call145 = call i32 @waitpid(i32 0, i32* null, i32 1)
  store i32 %call145, i32* %child, align 4
  %cmp146 = icmp sgt i32 %call145, 0
  br i1 %cmp146, label %while.body147, label %while.end

while.body147:                                    ; preds = %while.cond144
  %95 = load i32, i32* %nchildren, align 4
  %dec = add nsw i32 %95, -1
  store i32 %dec, i32* %nchildren, align 4
  br label %while.cond144

while.end:                                        ; preds = %while.cond144
  br label %for.inc148

for.inc148:                                       ; preds = %while.end
  %96 = load i32, i32* %i, align 4
  %inc149 = add nsw i32 %96, 1
  store i32 %inc149, i32* %i, align 4
  br label %for.cond98

for.end150:                                       ; preds = %for.cond98
  br label %while.body

return:                                           ; preds = %if.end139, %if.then62, %cond.end
  %97 = load i32, i32* %retval, align 4
  ret i32 %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #4

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: nounwind
declare dso_local i8* @gai_strerror(i32) #1

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #6

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #1

; Function Attrs: nounwind
declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

; Function Attrs: nounwind
declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @sleep(i32) #4

declare dso_local i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #4

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #4

declare dso_local i32 @waitpid(i32, i32*, i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %zPermUser = alloca i8*, align 8
  %zPort = alloca i8*, align 8
  %useChrootJail = alloca i32, align 4
  %pwd = alloca %struct.passwd*, align 8
  %z = alloca i8*, align 8
  %zArg = alloca i8*, align 8
  %rlim = alloca %struct.rlimit, align 8
  %remoteAddr = alloca %union.address, align 8
  %size = alloca i32, align 4
  %zHost = alloca [1025 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* null, i8** %zPermUser, align 8
  store i8* null, i8** %zPort, align 8
  store i32 1, i32* %useChrootJail, align 4
  store %struct.passwd* null, %struct.passwd** %pwd, align 8
  %call = call i32 @gettimeofday(%struct.timeval* @beginTime, i8* null) #7
  br label %while.cond

while.cond:                                       ; preds = %if.end123, %entry
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %3 to i32
  %cmp2 = icmp eq i32 %conv, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %5, i64 1
  %6 = load i8*, i8** %arrayidx4, align 8
  store i8* %6, i8** %z, align 8
  %7 = load i32, i32* %argc.addr, align 4
  %cmp5 = icmp sge i32 %7, 3
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %8, i64 2
  %9 = load i8*, i8** %arrayidx7, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.413, i64 0, i64 0), %cond.false ]
  store i8* %cond, i8** %zArg, align 8
  %10 = load i8*, i8** %z, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %11 to i32
  %cmp10 = icmp eq i32 %conv9, 45
  br i1 %cmp10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %12 = load i8*, i8** %z, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %13 to i32
  %cmp14 = icmp eq i32 %conv13, 45
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = load i8*, i8** %z, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %z, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end
  %15 = load i8*, i8** %z, align 8
  %call16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.414, i64 0, i64 0)) #8
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end
  %16 = load i8*, i8** %zArg, align 8
  store i8* %16, i8** %zPermUser, align 8
  br label %if.end123

if.else:                                          ; preds = %if.end
  %17 = load i8*, i8** %z, align 8
  %call20 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.415, i64 0, i64 0)) #8
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else
  %18 = load i8*, i8** %zArg, align 8
  store i8* %18, i8** @zRoot, align 8
  br label %if.end122

if.else24:                                        ; preds = %if.else
  %19 = load i8*, i8** %z, align 8
  %call25 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.416, i64 0, i64 0)) #8
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.else24
  %20 = load i8*, i8** %zArg, align 8
  store i8* %20, i8** @zLogFile, align 8
  br label %if.end121

if.else29:                                        ; preds = %if.else24
  %21 = load i8*, i8** %z, align 8
  %call30 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.417, i64 0, i64 0)) #8
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.else35

if.then33:                                        ; preds = %if.else29
  %22 = load i8*, i8** %zArg, align 8
  %call34 = call i32 @atoi(i8* %22) #8
  store i32 %call34, i32* @mxAge, align 4
  br label %if.end120

if.else35:                                        ; preds = %if.else29
  %23 = load i8*, i8** %z, align 8
  %call36 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.418, i64 0, i64 0)) #8
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %if.else41

if.then39:                                        ; preds = %if.else35
  %24 = load i8*, i8** %zArg, align 8
  %call40 = call i32 @atoi(i8* %24) #8
  store i32 %call40, i32* @maxCpu, align 4
  br label %if.end119

if.else41:                                        ; preds = %if.else35
  %25 = load i8*, i8** %z, align 8
  %call42 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.419, i64 0, i64 0)) #8
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then45, label %if.else52

if.then45:                                        ; preds = %if.else41
  %26 = load i8*, i8** %zArg, align 8
  %call46 = call i32 @atoi(i8* %26) #8
  store i32 %call46, i32* @useHttps, align 4
  %27 = load i32, i32* @useHttps, align 4
  %tobool = icmp ne i32 %27, 0
  %28 = zext i1 %tobool to i64
  %cond47 = select i1 %tobool, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.420, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.421, i64 0, i64 0)
  store i8* %cond47, i8** @zHttp, align 8
  %29 = load i32, i32* @useHttps, align 4
  %tobool48 = icmp ne i32 %29, 0
  br i1 %tobool48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.then45
  %call50 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.422, i64 0, i64 0)) #7
  store i8* %call50, i8** @zRemoteAddr, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.then45
  br label %if.end118

if.else52:                                        ; preds = %if.else41
  %30 = load i8*, i8** %z, align 8
  %call53 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.423, i64 0, i64 0)) #8
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %if.then56, label %if.else57

if.then56:                                        ; preds = %if.else52
  %31 = load i8*, i8** %zArg, align 8
  store i8* %31, i8** %zPort, align 8
  store i32 1, i32* @standalone, align 4
  br label %if.end117

if.else57:                                        ; preds = %if.else52
  %32 = load i8*, i8** %z, align 8
  %call58 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.424, i64 0, i64 0)) #8
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.else74

if.then61:                                        ; preds = %if.else57
  %33 = load i8*, i8** %zArg, align 8
  %call62 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.425, i64 0, i64 0)) #8
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.then65, label %if.else66

if.then65:                                        ; preds = %if.then61
  store i32 1, i32* @ipv4Only, align 4
  br label %if.end73

if.else66:                                        ; preds = %if.then61
  %34 = load i8*, i8** %zArg, align 8
  %call67 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.426, i64 0, i64 0)) #8
  %cmp68 = icmp eq i32 %call67, 0
  br i1 %cmp68, label %if.then70, label %if.else71

if.then70:                                        ; preds = %if.else66
  store i32 1, i32* @ipv6Only, align 4
  br label %if.end72

if.else71:                                        ; preds = %if.else66
  %35 = load i8*, i8** %zArg, align 8
  call void (i32, i8*, ...) @Malfunction(i32 500, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.427, i64 0, i64 0), i8* %35)
  br label %if.end72

if.end72:                                         ; preds = %if.else71, %if.then70
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.then65
  br label %if.end116

if.else74:                                        ; preds = %if.else57
  %36 = load i8*, i8** %z, align 8
  %call75 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.428, i64 0, i64 0)) #8
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %if.then78, label %if.else84

if.then78:                                        ; preds = %if.else74
  %37 = load i8*, i8** %zArg, align 8
  %call79 = call i32 @atoi(i8* %37) #8
  %cmp80 = icmp eq i32 %call79, 0
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.then78
  store i32 0, i32* %useChrootJail, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.then78
  br label %if.end115

if.else84:                                        ; preds = %if.else74
  %38 = load i8*, i8** %z, align 8
  %call85 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.429, i64 0, i64 0)) #8
  %cmp86 = icmp eq i32 %call85, 0
  br i1 %cmp86, label %if.then88, label %if.else93

if.then88:                                        ; preds = %if.else84
  %39 = load i8*, i8** %zArg, align 8
  %call89 = call i32 @atoi(i8* %39) #8
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.then88
  store i32 0, i32* @useTimeout, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.then88
  br label %if.end114

if.else93:                                        ; preds = %if.else84
  %40 = load i8*, i8** %z, align 8
  %call94 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.430, i64 0, i64 0)) #8
  %cmp95 = icmp eq i32 %call94, 0
  br i1 %cmp95, label %if.then97, label %if.else105

if.then97:                                        ; preds = %if.else93
  %41 = load i8*, i8** %zArg, align 8
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call98 = call %struct._IO_FILE* @freopen(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.405, i64 0, i64 0), %struct._IO_FILE* %42)
  %cmp99 = icmp eq %struct._IO_FILE* %call98, null
  br i1 %cmp99, label %if.then103, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then97
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %cmp101 = icmp eq %struct._IO_FILE* %43, null
  br i1 %cmp101, label %if.then103, label %if.end104

if.then103:                                       ; preds = %lor.lhs.false, %if.then97
  %44 = load i8*, i8** %zArg, align 8
  call void (i32, i8*, ...) @Malfunction(i32 501, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.431, i64 0, i64 0), i8* %44)
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %lor.lhs.false
  br label %if.end113

if.else105:                                       ; preds = %if.else93
  %45 = load i8*, i8** %z, align 8
  %call106 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.432, i64 0, i64 0)) #8
  %cmp107 = icmp eq i32 %call106, 0
  br i1 %cmp107, label %if.then109, label %if.else111

if.then109:                                       ; preds = %if.else105
  call void @TestParseRfc822Date()
  %call110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.433, i64 0, i64 0))
  call void @exit(i32 0) #9
  unreachable

if.else111:                                       ; preds = %if.else105
  %46 = load i8*, i8** %z, align 8
  call void (i32, i8*, ...) @Malfunction(i32 510, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.434, i64 0, i64 0), i8* %46)
  br label %if.end112

if.end112:                                        ; preds = %if.else111
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %if.end104
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %if.end92
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.end83
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.end73
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.then56
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.end51
  br label %if.end119

if.end119:                                        ; preds = %if.end118, %if.then39
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %if.then33
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %if.then28
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.then23
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.then19
  %47 = load i8**, i8*** %argv.addr, align 8
  %add.ptr = getelementptr inbounds i8*, i8** %47, i64 2
  store i8** %add.ptr, i8*** %argv.addr, align 8
  %48 = load i32, i32* %argc.addr, align 4
  %sub = sub nsw i32 %48, 2
  store i32 %sub, i32* %argc.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %49 = load i8*, i8** @zRoot, align 8
  %cmp124 = icmp eq i8* %49, null
  br i1 %cmp124, label %if.then126, label %if.end131

if.then126:                                       ; preds = %while.end
  %50 = load i32, i32* @standalone, align 4
  %tobool127 = icmp ne i32 %50, 0
  br i1 %tobool127, label %if.then128, label %if.else129

if.then128:                                       ; preds = %if.then126
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.435, i64 0, i64 0), i8** @zRoot, align 8
  br label %if.end130

if.else129:                                       ; preds = %if.then126
  call void (i32, i8*, ...) @Malfunction(i32 520, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.436, i64 0, i64 0))
  br label %if.end130

if.end130:                                        ; preds = %if.else129, %if.then128
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %while.end
  %51 = load i8*, i8** @zRoot, align 8
  %call132 = call i32 @chdir(i8* %51) #7
  %cmp133 = icmp ne i32 %call132, 0
  br i1 %cmp133, label %if.then135, label %if.end136

if.then135:                                       ; preds = %if.end131
  %52 = load i8*, i8** @zRoot, align 8
  call void (i32, i8*, ...) @Malfunction(i32 530, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.437, i64 0, i64 0), i8* %52)
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %if.end131
  %53 = load i8*, i8** %zPermUser, align 8
  %tobool137 = icmp ne i8* %53, null
  br i1 %tobool137, label %if.then138, label %if.end140

if.then138:                                       ; preds = %if.end136
  %54 = load i8*, i8** %zPermUser, align 8
  %call139 = call %struct.passwd* @getpwnam(i8* %54)
  store %struct.passwd* %call139, %struct.passwd** %pwd, align 8
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %if.end136
  %55 = load i8*, i8** %zPermUser, align 8
  %tobool141 = icmp ne i8* %55, null
  br i1 %tobool141, label %land.lhs.true142, label %if.end155

land.lhs.true142:                                 ; preds = %if.end140
  %56 = load i32, i32* %useChrootJail, align 4
  %tobool143 = icmp ne i32 %56, 0
  br i1 %tobool143, label %land.lhs.true144, label %if.end155

land.lhs.true144:                                 ; preds = %land.lhs.true142
  %call145 = call i32 @getuid() #7
  %cmp146 = icmp eq i32 %call145, 0
  br i1 %cmp146, label %if.then148, label %if.end155

if.then148:                                       ; preds = %land.lhs.true144
  %call149 = call i32 @chroot(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.435, i64 0, i64 0)) #7
  %cmp150 = icmp slt i32 %call149, 0
  br i1 %cmp150, label %if.then152, label %if.else153

if.then152:                                       ; preds = %if.then148
  call void (i32, i8*, ...) @Malfunction(i32 540, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.438, i64 0, i64 0))
  br label %if.end154

if.else153:                                       ; preds = %if.then148
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), i8** @zRoot, align 8
  br label %if.end154

if.end154:                                        ; preds = %if.else153, %if.then152
  br label %if.end155

if.end155:                                        ; preds = %if.end154, %land.lhs.true144, %land.lhs.true142, %if.end140
  %57 = load i8*, i8** %zPort, align 8
  %tobool156 = icmp ne i8* %57, null
  br i1 %tobool156, label %land.lhs.true157, label %if.end161

land.lhs.true157:                                 ; preds = %if.end155
  %58 = load i8*, i8** %zPort, align 8
  %call158 = call i32 @http_server(i8* %58, i32 0)
  %tobool159 = icmp ne i32 %call158, 0
  br i1 %tobool159, label %if.then160, label %if.end161

if.then160:                                       ; preds = %land.lhs.true157
  call void (i32, i8*, ...) @Malfunction(i32 550, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.439, i64 0, i64 0))
  br label %if.end161

if.end161:                                        ; preds = %if.then160, %land.lhs.true157, %if.end155
  %59 = load i32, i32* @maxCpu, align 4
  %cmp162 = icmp sgt i32 %59, 0
  br i1 %cmp162, label %if.then164, label %if.end168

if.then164:                                       ; preds = %if.end161
  %60 = load i32, i32* @maxCpu, align 4
  %conv165 = sext i32 %60 to i64
  %rlim_cur = getelementptr inbounds %struct.rlimit, %struct.rlimit* %rlim, i32 0, i32 0
  store i64 %conv165, i64* %rlim_cur, align 8
  %61 = load i32, i32* @maxCpu, align 4
  %conv166 = sext i32 %61 to i64
  %rlim_max = getelementptr inbounds %struct.rlimit, %struct.rlimit* %rlim, i32 0, i32 1
  store i64 %conv166, i64* %rlim_max, align 8
  %call167 = call i32 @setrlimit(i32 0, %struct.rlimit* %rlim) #7
  br label %if.end168

if.end168:                                        ; preds = %if.then164, %if.end161
  %62 = load i8*, i8** %zPermUser, align 8
  %tobool169 = icmp ne i8* %62, null
  br i1 %tobool169, label %if.then170, label %if.end185

if.then170:                                       ; preds = %if.end168
  %63 = load %struct.passwd*, %struct.passwd** %pwd, align 8
  %tobool171 = icmp ne %struct.passwd* %63, null
  br i1 %tobool171, label %if.then172, label %if.else183

if.then172:                                       ; preds = %if.then170
  %64 = load %struct.passwd*, %struct.passwd** %pwd, align 8
  %pw_gid = getelementptr inbounds %struct.passwd, %struct.passwd* %64, i32 0, i32 3
  %65 = load i32, i32* %pw_gid, align 4
  %call173 = call i32 @setgid(i32 %65) #7
  %tobool174 = icmp ne i32 %call173, 0
  br i1 %tobool174, label %if.then175, label %if.end177

if.then175:                                       ; preds = %if.then172
  %66 = load %struct.passwd*, %struct.passwd** %pwd, align 8
  %pw_gid176 = getelementptr inbounds %struct.passwd, %struct.passwd* %66, i32 0, i32 3
  %67 = load i32, i32* %pw_gid176, align 4
  call void (i32, i8*, ...) @Malfunction(i32 560, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.440, i64 0, i64 0), i32 %67)
  br label %if.end177

if.end177:                                        ; preds = %if.then175, %if.then172
  %68 = load %struct.passwd*, %struct.passwd** %pwd, align 8
  %pw_uid = getelementptr inbounds %struct.passwd, %struct.passwd* %68, i32 0, i32 2
  %69 = load i32, i32* %pw_uid, align 8
  %call178 = call i32 @setuid(i32 %69) #7
  %tobool179 = icmp ne i32 %call178, 0
  br i1 %tobool179, label %if.then180, label %if.end182

if.then180:                                       ; preds = %if.end177
  %70 = load %struct.passwd*, %struct.passwd** %pwd, align 8
  %pw_uid181 = getelementptr inbounds %struct.passwd, %struct.passwd* %70, i32 0, i32 2
  %71 = load i32, i32* %pw_uid181, align 8
  call void (i32, i8*, ...) @Malfunction(i32 570, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.441, i64 0, i64 0), i32 %71)
  br label %if.end182

if.end182:                                        ; preds = %if.then180, %if.end177
  br label %if.end184

if.else183:                                       ; preds = %if.then170
  %72 = load i8*, i8** %zPermUser, align 8
  call void (i32, i8*, ...) @Malfunction(i32 580, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.442, i64 0, i64 0), i8* %72)
  br label %if.end184

if.end184:                                        ; preds = %if.else183, %if.end182
  br label %if.end185

if.end185:                                        ; preds = %if.end184, %if.end168
  %call186 = call i32 @getuid() #7
  %cmp187 = icmp eq i32 %call186, 0
  br i1 %cmp187, label %if.then189, label %if.end190

if.then189:                                       ; preds = %if.end185
  call void (i32, i8*, ...) @Malfunction(i32 590, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.443, i64 0, i64 0))
  br label %if.end190

if.end190:                                        ; preds = %if.then189, %if.end185
  %73 = load i8*, i8** @zRemoteAddr, align 8
  %cmp191 = icmp eq i8* %73, null
  br i1 %cmp191, label %if.then193, label %if.end203

if.then193:                                       ; preds = %if.end190
  store i32 128, i32* %size, align 4
  %sa = bitcast %union.address* %remoteAddr to %struct.sockaddr*
  %call194 = call i32 @getpeername(i32 0, %struct.sockaddr* %sa, i32* %size) #7
  %cmp195 = icmp sge i32 %call194, 0
  br i1 %cmp195, label %if.then197, label %if.end202

if.then197:                                       ; preds = %if.then193
  %sa198 = bitcast %union.address* %remoteAddr to %struct.sockaddr*
  %74 = load i32, i32* %size, align 4
  %arraydecay = getelementptr inbounds [1025 x i8], [1025 x i8]* %zHost, i64 0, i64 0
  %call199 = call i32 @getnameinfo(%struct.sockaddr* %sa198, i32 %74, i8* %arraydecay, i32 1025, i8* null, i32 0, i32 1)
  %arraydecay200 = getelementptr inbounds [1025 x i8], [1025 x i8]* %zHost, i64 0, i64 0
  %call201 = call i8* @StrDup(i8* %arraydecay200)
  store i8* %call201, i8** @zRemoteAddr, align 8
  br label %if.end202

if.end202:                                        ; preds = %if.then197, %if.then193
  br label %if.end203

if.end203:                                        ; preds = %if.end202, %if.end190
  %75 = load i8*, i8** @zRemoteAddr, align 8
  %cmp204 = icmp ne i8* %75, null
  br i1 %cmp204, label %land.lhs.true206, label %if.end222

land.lhs.true206:                                 ; preds = %if.end203
  %76 = load i8*, i8** @zRemoteAddr, align 8
  %call207 = call i32 @strncmp(i8* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.444, i64 0, i64 0), i64 7) #8
  %cmp208 = icmp eq i32 %call207, 0
  br i1 %cmp208, label %land.lhs.true210, label %if.end222

land.lhs.true210:                                 ; preds = %land.lhs.true206
  %77 = load i8*, i8** @zRemoteAddr, align 8
  %add.ptr211 = getelementptr inbounds i8, i8* %77, i64 7
  %call212 = call i8* @strchr(i8* %add.ptr211, i32 58) #8
  %cmp213 = icmp eq i8* %call212, null
  br i1 %cmp213, label %land.lhs.true215, label %if.end222

land.lhs.true215:                                 ; preds = %land.lhs.true210
  %78 = load i8*, i8** @zRemoteAddr, align 8
  %add.ptr216 = getelementptr inbounds i8, i8* %78, i64 7
  %call217 = call i8* @strchr(i8* %add.ptr216, i32 46) #8
  %cmp218 = icmp ne i8* %call217, null
  br i1 %cmp218, label %if.then220, label %if.end222

if.then220:                                       ; preds = %land.lhs.true215
  %79 = load i8*, i8** @zRemoteAddr, align 8
  %add.ptr221 = getelementptr inbounds i8, i8* %79, i64 7
  store i8* %add.ptr221, i8** @zRemoteAddr, align 8
  br label %if.end222

if.end222:                                        ; preds = %if.then220, %land.lhs.true215, %land.lhs.true210, %land.lhs.true206, %if.end203
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end222
  %80 = load i32, i32* %i, align 4
  %cmp223 = icmp slt i32 %80, 100
  br i1 %cmp223, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @ProcessOneRequest(i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %81 = load i32, i32* %i, align 4
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @ProcessOneRequest(i32 1)
  call void @exit(i32 0) #9
  unreachable
}

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #1

declare dso_local %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) #4

declare dso_local %struct.passwd* @getpwnam(i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @getuid() #1

; Function Attrs: nounwind
declare dso_local i32 @chroot(i8*) #1

; Function Attrs: nounwind
declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #1

; Function Attrs: nounwind
declare dso_local i32 @setgid(i32) #1

; Function Attrs: nounwind
declare dso_local i32 @setuid(i32) #1

; Function Attrs: nounwind
declare dso_local i32 @getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i8*, i32, i32) #4

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind
declare dso_local %struct.tm* @gmtime(i64*) #1

; Function Attrs: nounwind
declare dso_local i64 @strftime(i8*, i64, i8*, %struct.tm*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

declare dso_local i32 @vprintf(i8*, %struct.__va_list_tag*) #4

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @DateTag(i8* %zTag, i64 %t) #0 {
entry:
  %zTag.addr = alloca i8*, align 8
  %t.addr = alloca i64, align 8
  store i8* %zTag, i8** %zTag.addr, align 8
  store i64 %t, i64* %t.addr, align 8
  %0 = load i8*, i8** %zTag.addr, align 8
  %1 = load i64, i64* %t.addr, align 8
  %call = call i8* @Rfc822Date(i64 %1)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.453, i64 0, i64 0), i8* %0, i8* %call)
  ret i32 %call1
}

; Function Attrs: nounwind
declare dso_local i32 @unlink(i8*) #1

; Function Attrs: nounwind
declare dso_local %struct.tm* @localtime(i64*) #1

; Function Attrs: nounwind
declare dso_local i32 @getrusage(i32, %struct.rusage*) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @Escape(i8* %z) #0 {
entry:
  %retval = alloca i8*, align 8
  %z.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  %c = alloca i8, align 1
  %zOut = alloca i8*, align 8
  store i8* %z, i8** %z.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %z.addr, align 8
  %1 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %1
  %2 = load i8, i8* %arrayidx, align 1
  store i8 %2, i8* %c, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i8, i8* %c, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp ne i32 %conv2, 34
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %6 = load i8, i8* %c, align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %7 = load i8*, i8** %z.addr, align 8
  store i8* %7, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %for.end
  store i64 1, i64* %n, align 8
  %8 = load i64, i64* %i, align 8
  %inc8 = add i64 %8, 1
  store i64 %inc8, i64* %i, align 8
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc21, %if.end
  %9 = load i8*, i8** %z.addr, align 8
  %10 = load i64, i64* %i, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %9, i64 %10
  %11 = load i8, i8* %arrayidx10, align 1
  store i8 %11, i8* %c, align 1
  %conv11 = sext i8 %11 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %for.body14, label %for.end23

for.body14:                                       ; preds = %for.cond9
  %12 = load i8, i8* %c, align 1
  %conv15 = sext i8 %12 to i32
  %cmp16 = icmp eq i32 %conv15, 34
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %for.body14
  %13 = load i64, i64* %n, align 8
  %inc19 = add i64 %13, 1
  store i64 %inc19, i64* %n, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %for.body14
  br label %for.inc21

for.inc21:                                        ; preds = %if.end20
  %14 = load i64, i64* %i, align 8
  %inc22 = add i64 %14, 1
  store i64 %inc22, i64* %i, align 8
  br label %for.cond9

for.end23:                                        ; preds = %for.cond9
  %15 = load i64, i64* %i, align 8
  %16 = load i64, i64* %n, align 8
  %add = add i64 %15, %16
  %add24 = add i64 %add, 1
  %call = call noalias i8* @malloc(i64 %add24) #7
  store i8* %call, i8** %zOut, align 8
  %17 = load i8*, i8** %zOut, align 8
  %cmp25 = icmp eq i8* %17, null
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.end23
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), i8** %retval, align 8
  br label %return

if.end28:                                         ; preds = %for.end23
  store i64 0, i64* %j, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc44, %if.end28
  %18 = load i8*, i8** %z.addr, align 8
  %19 = load i64, i64* %i, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %18, i64 %19
  %20 = load i8, i8* %arrayidx30, align 1
  store i8 %20, i8* %c, align 1
  %conv31 = sext i8 %20 to i32
  %cmp32 = icmp ne i32 %conv31, 0
  br i1 %cmp32, label %for.body34, label %for.end46

for.body34:                                       ; preds = %for.cond29
  %21 = load i8, i8* %c, align 1
  %22 = load i8*, i8** %zOut, align 8
  %23 = load i64, i64* %j, align 8
  %inc35 = add i64 %23, 1
  store i64 %inc35, i64* %j, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8 %21, i8* %arrayidx36, align 1
  %24 = load i8, i8* %c, align 1
  %conv37 = sext i8 %24 to i32
  %cmp38 = icmp eq i32 %conv37, 34
  br i1 %cmp38, label %if.then40, label %if.end43

if.then40:                                        ; preds = %for.body34
  %25 = load i8, i8* %c, align 1
  %26 = load i8*, i8** %zOut, align 8
  %27 = load i64, i64* %j, align 8
  %inc41 = add i64 %27, 1
  store i64 %inc41, i64* %j, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8 %25, i8* %arrayidx42, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %for.body34
  br label %for.inc44

for.inc44:                                        ; preds = %if.end43
  %28 = load i64, i64* %i, align 8
  %inc45 = add i64 %28, 1
  store i64 %inc45, i64* %i, align 8
  br label %for.cond29

for.end46:                                        ; preds = %for.cond29
  %29 = load i8*, i8** %zOut, align 8
  %30 = load i64, i64* %j, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8 0, i8* %arrayidx47, align 1
  %31 = load i8*, i8** %zOut, align 8
  store i8* %31, i8** %retval, align 8
  br label %return

return:                                           ; preds = %for.end46, %if.then27, %if.then
  %32 = load i8*, i8** %retval, align 8
  ret i8* %32
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @tvms(%struct.timeval* %p) #0 {
entry:
  %p.addr = alloca %struct.timeval*, align 8
  store %struct.timeval* %p, %struct.timeval** %p.addr, align 8
  %0 = load %struct.timeval*, %struct.timeval** %p.addr, align 8
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %0, i32 0, i32 0
  %1 = load i64, i64* %tv_sec, align 8
  %mul = mul nsw i64 %1, 1000000
  %2 = load %struct.timeval*, %struct.timeval** %p.addr, align 8
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %3 = load i64, i64* %tv_usec, align 8
  %add = add nsw i64 %mul, %3
  ret i64 %add
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define internal void @NotAuthorized(i8* %zRealm) #0 {
entry:
  %zRealm.addr = alloca i8*, align 8
  store i8* %zRealm, i8** %zRealm.addr, align 8
  call void @StartResponse(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.476, i64 0, i64 0))
  %0 = load i8*, i8** %zRealm.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([216 x i8], [216 x i8]* @.str.477, i64 0, i64 0), i8* %0)
  %1 = load i32, i32* @nOut, align 4
  %add = add nsw i32 %1, %call
  store i32 %add, i32* @nOut, align 4
  call void @MakeLogEntry(i32 0, i32 110)
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strncasecmp(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define internal void @xferBytes(%struct._IO_FILE* %in, %struct._IO_FILE* %out, i32 %nXfer, i32 %nSkip) #0 {
entry:
  %in.addr = alloca %struct._IO_FILE*, align 8
  %out.addr = alloca %struct._IO_FILE*, align 8
  %nXfer.addr = alloca i32, align 4
  %nSkip.addr = alloca i32, align 4
  %n = alloca i64, align 8
  %got = alloca i64, align 8
  %zBuf = alloca [16384 x i8], align 16
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  store i32 %nXfer, i32* %nXfer.addr, align 4
  store i32 %nSkip, i32* %nSkip.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %entry
  %0 = load i32, i32* %nSkip.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %nSkip.addr, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, i64* %n, align 8
  %2 = load i64, i64* %n, align 8
  %cmp1 = icmp ugt i64 %2, 16384
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i64 16384, i64* %n, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %zBuf, i64 0, i64 0
  %3 = load i64, i64* %n, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call = call i64 @fread(i8* %arraydecay, i64 1, i64 %3, %struct._IO_FILE* %4)
  store i64 %call, i64* %got, align 8
  %5 = load i64, i64* %got, align 8
  %cmp3 = icmp eq i64 %5, 0
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %while.end

if.end6:                                          ; preds = %if.end
  %6 = load i64, i64* %got, align 8
  %7 = load i32, i32* %nSkip.addr, align 4
  %conv7 = sext i32 %7 to i64
  %sub = sub i64 %conv7, %6
  %conv8 = trunc i64 %sub to i32
  store i32 %conv8, i32* %nSkip.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then5, %while.cond
  br label %while.cond9

while.cond9:                                      ; preds = %if.end23, %while.end
  %8 = load i32, i32* %nXfer.addr, align 4
  %cmp10 = icmp sgt i32 %8, 0
  br i1 %cmp10, label %while.body12, label %while.end31

while.body12:                                     ; preds = %while.cond9
  %9 = load i32, i32* %nXfer.addr, align 4
  %conv13 = sext i32 %9 to i64
  store i64 %conv13, i64* %n, align 8
  %10 = load i64, i64* %n, align 8
  %cmp14 = icmp ugt i64 %10, 16384
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %while.body12
  store i64 16384, i64* %n, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %while.body12
  %arraydecay18 = getelementptr inbounds [16384 x i8], [16384 x i8]* %zBuf, i64 0, i64 0
  %11 = load i64, i64* %n, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call19 = call i64 @fread(i8* %arraydecay18, i64 1, i64 %11, %struct._IO_FILE* %12)
  store i64 %call19, i64* %got, align 8
  %13 = load i64, i64* %got, align 8
  %cmp20 = icmp eq i64 %13, 0
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end17
  br label %while.end31

if.end23:                                         ; preds = %if.end17
  %arraydecay24 = getelementptr inbounds [16384 x i8], [16384 x i8]* %zBuf, i64 0, i64 0
  %14 = load i64, i64* %got, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call25 = call i64 @fwrite(i8* %arraydecay24, i64 %14, i64 1, %struct._IO_FILE* %15)
  %16 = load i64, i64* %got, align 8
  %17 = load i32, i32* @nOut, align 4
  %conv26 = sext i32 %17 to i64
  %add = add i64 %conv26, %16
  %conv27 = trunc i64 %add to i32
  store i32 %conv27, i32* @nOut, align 4
  %18 = load i64, i64* %got, align 8
  %19 = load i32, i32* %nXfer.addr, align 4
  %conv28 = sext i32 %19 to i64
  %sub29 = sub i64 %conv28, %18
  %conv30 = trunc i64 %sub29 to i32
  store i32 %conv30, i32* %nXfer.addr, align 4
  br label %while.cond9

while.end31:                                      ; preds = %if.then22, %while.cond9
  ret void
}

declare dso_local i32 @getc(%struct._IO_FILE*) #4

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #4

declare dso_local i32 @system(i8*) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @CompareEtags(i8* %zA, i8* %zB) #0 {
entry:
  %retval = alloca i32, align 4
  %zA.addr = alloca i8*, align 8
  %zB.addr = alloca i8*, align 8
  %lenB = alloca i32, align 4
  store i8* %zA, i8** %zA.addr, align 8
  store i8* %zB, i8** %zB.addr, align 8
  %0 = load i8*, i8** %zA.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %zA.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 34
  br i1 %cmp1, label %if.then3, label %if.end15

if.then3:                                         ; preds = %if.end
  %3 = load i8*, i8** %zB.addr, align 8
  %call = call i64 @strlen(i8* %3) #8
  %conv4 = trunc i64 %call to i32
  store i32 %conv4, i32* %lenB, align 4
  %4 = load i8*, i8** %zA.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8*, i8** %zB.addr, align 8
  %6 = load i32, i32* %lenB, align 4
  %conv5 = sext i32 %6 to i64
  %call6 = call i32 @strncmp(i8* %add.ptr, i8* %5, i64 %conv5) #8
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.then3
  %7 = load i8*, i8** %zA.addr, align 8
  %8 = load i32, i32* %lenB, align 4
  %add = add nsw i32 %8, 1
  %idxprom = sext i32 %add to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %9 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %9 to i32
  %cmp11 = icmp eq i32 %conv10, 34
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %land.lhs.true, %if.then3
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end
  %10 = load i8*, i8** %zA.addr, align 8
  %11 = load i8*, i8** %zB.addr, align 8
  %call16 = call i32 @strcmp(i8* %10, i8* %11) #8
  store i32 %call16, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then13, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind
declare dso_local i64 @sendfile(i32, i32, i64*, i64) #1

; Function Attrs: nounwind
declare dso_local i32 @fileno(%struct._IO_FILE*) #1

;attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
;attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
;attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
;attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
;attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
;attributes #5 = { argmemonly nounwind willreturn }
;attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
;attributes #7 = { nounwind }
;attributes #8 = { nounwind readonly }
;attributes #9 = { noreturn nounwind }
;attributes #10 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
!2 = !{i32 -2146663217}
