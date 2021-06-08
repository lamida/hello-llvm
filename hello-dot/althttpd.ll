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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ParseRfc822Date(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i8], align 1
  %12 = alloca [4 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %17 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i8* %16, i32* %4, i8* %17, i32* %6, i32* %8, i32* %9, i32* %10) #7
  %19 = icmp eq i32 7, %18
  br i1 %19, label %20, label %106

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 1900
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %24, 1900
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %23, %20
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %102, %26
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 12
  br i1 %29, label %30, label %105

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [12 x i8*], [12 x i8*]* @ParseRfc822Date.azMonths, i64 0, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %36 = call i32 @strncmp(i8* %34, i8* %35, i64 3) #8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %101, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  %40 = srem i32 %39, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = srem i32 %43, 100
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 300
  %49 = srem i32 %48, 400
  %50 = icmp eq i32 %49, 0
  br label %51

51:                                               ; preds = %46, %42
  %52 = phi i1 [ true, %42 ], [ %50, %46 ]
  br label %53

53:                                               ; preds = %51, %38
  %54 = phi i1 [ false, %38 ], [ %52, %51 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [12 x i32], [12 x i32]* @ParseRfc822Date.priorDays, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %59, %60
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %53
  %66 = load i32, i32* %5, align 4
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %68, %65, %53
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 %72, 70
  %74 = mul nsw i32 %73, 365
  %75 = load i32, i32* %6, align 4
  %76 = sub nsw i32 %75, 69
  %77 = sdiv i32 %76, 4
  %78 = add nsw i32 %74, %77
  %79 = load i32, i32* %6, align 4
  %80 = sdiv i32 %79, 100
  %81 = sub nsw i32 %78, %80
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 300
  %84 = sdiv i32 %83, 400
  %85 = add nsw i32 %81, %84
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %85, %86
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = mul nsw i32 %88, 24
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = mul nsw i64 %92, 60
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %93, %95
  %97 = mul nsw i64 %96, 60
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %97, %99
  store i64 %100, i64* %2, align 8
  br label %107

101:                                              ; preds = %30
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %27

105:                                              ; preds = %27
  br label %106

106:                                              ; preds = %105, %1
  store i64 0, i64* %2, align 8
  br label %107

107:                                              ; preds = %106, %71
  %108 = load i64, i64* %2, align 8
  ret i64 %108
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TestParseRfc822Date() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %3

3:                                                ; preds = %16, %0
  %4 = load i64, i64* %1, align 8
  %5 = icmp slt i64 %4, 2147483647
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i64, i64* %1, align 8
  %8 = call i8* @Rfc822Date(i64 %7)
  %9 = call i64 @ParseRfc822Date(i8* %8)
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* %2, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %15

14:                                               ; preds = %6
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 670, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.TestParseRfc822Date, i64 0, i64 0)) #9
  unreachable

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %15
  %17 = load i64, i64* %1, align 8
  %18 = add nsw i64 %17, 127
  store i64 %18, i64* %1, align 8
  br label %3

19:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Rfc822Date(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tm*, align 8
  store i64 %0, i64* %2, align 8
  %4 = call %struct.tm* @gmtime(i64* %2) #7
  store %struct.tm* %4, %struct.tm** %3, align 8
  %5 = load %struct.tm*, %struct.tm** %3, align 8
  %6 = call i64 @strftime(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @Rfc822Date.zDate, i64 0, i64 0), i64 100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.445, i64 0, i64 0), %struct.tm* %5) #7
  ret i8* getelementptr inbounds ([100 x i8], [100 x i8]* @Rfc822Date.zDate, i64 0, i64 0)
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Decode64(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i32, i32* @Decode64.isInit, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %45, label %13

13:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %21, %13
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 128
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [128 x i32], [128 x i32]* @Decode64.trans, i64 0, i64 %19
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %14

24:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %41, %24
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [65 x i8], [65 x i8]* @Decode64.zBase, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [65 x i8], [65 x i8]* @Decode64.zBase, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 127
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [128 x i32], [128 x i32]* @Decode64.trans, i64 0, i64 %39
  store i32 %32, i32* %40, align 4
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %25

44:                                               ; preds = %25
  store i32 1, i32* @Decode64.isInit, align 4
  br label %45

45:                                               ; preds = %44, %1
  %46 = load i8*, i8** %2, align 8
  %47 = call i64 @strlen(i8* %46) #8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %63, %45
  %50 = load i32, i32* %4, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i8*, i8** %2, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 61
  br label %61

61:                                               ; preds = %52, %49
  %62 = phi i1 [ false, %49 ], [ %60, %52 ]
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %4, align 4
  br label %49

66:                                               ; preds = %61
  %67 = load i8*, i8** %2, align 8
  store i8* %67, i8** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %155, %66
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 3
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %158

73:                                               ; preds = %68
  %74 = load i8*, i8** %2, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = and i32 %79, 127
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [128 x i32], [128 x i32]* @Decode64.trans, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %7, align 4
  %84 = load i8*, i8** %2, align 8
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = and i32 %90, 127
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [128 x i32], [128 x i32]* @Decode64.trans, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %8, align 4
  %95 = load i8*, i8** %2, align 8
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 2
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = and i32 %101, 127
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [128 x i32], [128 x i32]* @Decode64.trans, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %9, align 4
  %106 = load i8*, i8** %2, align 8
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 3
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %106, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = and i32 %112, 127
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [128 x i32], [128 x i32]* @Decode64.trans, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %7, align 4
  %118 = shl i32 %117, 2
  %119 = and i32 %118, 252
  %120 = load i32, i32* %8, align 4
  %121 = ashr i32 %120, 4
  %122 = and i32 %121, 3
  %123 = or i32 %119, %122
  %124 = trunc i32 %123 to i8
  %125 = load i8*, i8** %3, align 8
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  store i8 %124, i8* %129, align 1
  %130 = load i32, i32* %8, align 4
  %131 = shl i32 %130, 4
  %132 = and i32 %131, 240
  %133 = load i32, i32* %9, align 4
  %134 = ashr i32 %133, 2
  %135 = and i32 %134, 15
  %136 = or i32 %132, %135
  %137 = trunc i32 %136 to i8
  %138 = load i8*, i8** %3, align 8
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %6, align 4
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  store i8 %137, i8* %142, align 1
  %143 = load i32, i32* %9, align 4
  %144 = shl i32 %143, 6
  %145 = and i32 %144, 192
  %146 = load i32, i32* %10, align 4
  %147 = and i32 %146, 63
  %148 = or i32 %145, %147
  %149 = trunc i32 %148 to i8
  %150 = load i8*, i8** %3, align 8
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %6, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  store i8 %149, i8* %154, align 1
  br label %155

155:                                              ; preds = %73
  %156 = load i32, i32* %5, align 4
  %157 = add nsw i32 %156, 4
  store i32 %157, i32* %5, align 4
  br label %68

158:                                              ; preds = %68
  %159 = load i32, i32* %5, align 4
  %160 = add nsw i32 %159, 2
  %161 = load i32, i32* %4, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %222

163:                                              ; preds = %158
  %164 = load i8*, i8** %2, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = and i32 %169, 127
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [128 x i32], [128 x i32]* @Decode64.trans, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %7, align 4
  %174 = load i8*, i8** %2, align 8
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %174, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = and i32 %180, 127
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [128 x i32], [128 x i32]* @Decode64.trans, i64 0, i64 %182
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %8, align 4
  %185 = load i8*, i8** %2, align 8
  %186 = load i32, i32* %5, align 4
  %187 = add nsw i32 %186, 2
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %185, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = and i32 %191, 127
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [128 x i32], [128 x i32]* @Decode64.trans, i64 0, i64 %193
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* %7, align 4
  %197 = shl i32 %196, 2
  %198 = and i32 %197, 252
  %199 = load i32, i32* %8, align 4
  %200 = ashr i32 %199, 4
  %201 = and i32 %200, 3
  %202 = or i32 %198, %201
  %203 = trunc i32 %202 to i8
  %204 = load i8*, i8** %3, align 8
  %205 = load i32, i32* %6, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %6, align 4
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i8, i8* %204, i64 %207
  store i8 %203, i8* %208, align 1
  %209 = load i32, i32* %8, align 4
  %210 = shl i32 %209, 4
  %211 = and i32 %210, 240
  %212 = load i32, i32* %9, align 4
  %213 = ashr i32 %212, 2
  %214 = and i32 %213, 15
  %215 = or i32 %211, %214
  %216 = trunc i32 %215 to i8
  %217 = load i8*, i8** %3, align 8
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %6, align 4
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i8, i8* %217, i64 %220
  store i8 %216, i8* %221, align 1
  br label %263

222:                                              ; preds = %158
  %223 = load i32, i32* %5, align 4
  %224 = add nsw i32 %223, 1
  %225 = load i32, i32* %4, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %262

227:                                              ; preds = %222
  %228 = load i8*, i8** %2, align 8
  %229 = load i32, i32* %5, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %228, i64 %230
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  %234 = and i32 %233, 127
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [128 x i32], [128 x i32]* @Decode64.trans, i64 0, i64 %235
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %7, align 4
  %238 = load i8*, i8** %2, align 8
  %239 = load i32, i32* %5, align 4
  %240 = add nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %238, i64 %241
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = and i32 %244, 127
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [128 x i32], [128 x i32]* @Decode64.trans, i64 0, i64 %246
  %248 = load i32, i32* %247, align 4
  store i32 %248, i32* %8, align 4
  %249 = load i32, i32* %7, align 4
  %250 = shl i32 %249, 2
  %251 = and i32 %250, 252
  %252 = load i32, i32* %8, align 4
  %253 = ashr i32 %252, 4
  %254 = and i32 %253, 3
  %255 = or i32 %251, %254
  %256 = trunc i32 %255 to i8
  %257 = load i8*, i8** %3, align 8
  %258 = load i32, i32* %6, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %6, align 4
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i8, i8* %257, i64 %260
  store i8 %256, i8* %261, align 1
  br label %262

262:                                              ; preds = %227, %222
  br label %263

263:                                              ; preds = %262, %163
  %264 = load i8*, i8** %3, align 8
  %265 = load i32, i32* %6, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %264, i64 %266
  store i8 0, i8* %267, align 1
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GetMimeType(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [20 x i8], align 16
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %29, %2
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 46
  br label %26

26:                                               ; preds = %18, %15
  %27 = phi i1 [ false, %15 ], [ %25, %18 ]
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %7, align 4
  br label %15

32:                                               ; preds = %26
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  store i8* %37, i8** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 19
  br i1 %42, label %43, label %103

43:                                               ; preds = %32
  %44 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %45 = load i8*, i8** %6, align 8
  %46 = call i8* @strcpy(i8* %44, i8* %45) #7
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %64, %43
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = call i32 @tolower(i32 %58) #8
  %60 = trunc i32 %59 to i8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 %62
  store i8 %60, i8* %63, align 1
  br label %64

64:                                               ; preds = %53
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %47

67:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  store i32 191, i32* %9, align 4
  br label %68

68:                                               ; preds = %101, %67
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %102

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %73, %74
  %76 = sdiv i32 %75, 2
  store i32 %76, i32* %7, align 4
  %77 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [191 x %struct.anon], [191 x %struct.anon]* @GetMimeType.aMime, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @strcmp(i8* %77, i8* %82) #8
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %72
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [191 x %struct.anon], [191 x %struct.anon]* @GetMimeType.aMime, i64 0, i64 %88
  %90 = getelementptr inbounds %struct.anon, %struct.anon* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %3, align 8
  br label %104

92:                                               ; preds = %72
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %101

98:                                               ; preds = %92
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %98, %95
  br label %68

102:                                              ; preds = %68
  br label %103

103:                                              ; preds = %102, %32
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i64 0, i64 0), i8** %3, align 8
  br label %104

104:                                              ; preds = %103, %86
  %105 = load i8*, i8** %3, align 8
  ret i8* %105
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessOneRequest(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca [1000 x i8], align 16
  %10 = alloca [1000 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [13 x i8*], align 16
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct._IO_FILE*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  %25 = alloca [1000 x i8], align 16
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca [1000 x i8], align 16
  %31 = alloca [2 x i32], align 4
  store i32 %0, i32* %2, align 4
  %32 = load i8*, i8** @zRoot, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = load i8*, i8** @zRoot, align 8
  br label %40

39:                                               ; preds = %1
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i8* [ %38, %37 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.336, i64 0, i64 0), %39 ]
  %42 = call i32 @chdir(i8* %41) #7
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i8*, i8** @zRoot, align 8
  %46 = getelementptr inbounds [1000 x i8], [1000 x i8]* %10, i64 0, i64 0
  %47 = call i8* @getcwd(i8* %46, i64 999) #7
  call void (i32, i8*, ...) @Malfunction(i32 190, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.337, i64 0, i64 0), i8* %45, i8* %47)
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* @nRequest, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @nRequest, align 4
  %51 = call void (i32)* @signal(i32 14, void (i32)* @Timeout) #7
  %52 = call void (i32)* @signal(i32 11, void (i32)* @Timeout) #7
  %53 = call void (i32)* @signal(i32 13, void (i32)* @Timeout) #7
  %54 = call void (i32)* @signal(i32 24, void (i32)* @Timeout) #7
  %55 = load i32, i32* @useTimeout, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = call i32 @alarm(i32 15) #7
  br label %59

59:                                               ; preds = %57, %48
  %60 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %62 = call i8* @fgets(i8* %60, i32 1000, %struct._IO_FILE* %61)
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  call void @exit(i32 0) #9
  unreachable

65:                                               ; preds = %59
  %66 = call i32 @gettimeofday(%struct.timeval* @beginTime, i8* null) #7
  store i32 0, i32* @omitLog, align 4
  %67 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %68 = call i64 @strlen(i8* %67) #8
  %69 = load i32, i32* @nIn, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* @nIn, align 4
  %73 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %74 = call i8* @GetFirstElement(i8* %73, i8** %6)
  %75 = call i8* @StrDup(i8* %74)
  store i8* %75, i8** @zMethod, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i8* @GetFirstElement(i8* %76, i8** %6)
  %78 = call i8* @StrDup(i8* %77)
  store i8* %78, i8** @zScript, align 8
  store i8* %78, i8** @zRealScript, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = call i8* @GetFirstElement(i8* %79, i8** %6)
  %81 = call i8* @StrDup(i8* %80)
  store i8* %81, i8** @zProtocol, align 8
  %82 = load i8*, i8** @zProtocol, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %92, label %84

84:                                               ; preds = %65
  %85 = load i8*, i8** @zProtocol, align 8
  %86 = call i32 @strncmp(i8* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.338, i64 0, i64 0), i64 5) #8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i8*, i8** @zProtocol, align 8
  %90 = call i64 @strlen(i8* %89) #8
  %91 = icmp ne i64 %90, 8
  br i1 %91, label %92, label %96

92:                                               ; preds = %88, %84, %65
  call void @StartResponse(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.339, i64 0, i64 0))
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.340, i64 0, i64 0))
  %94 = load i32, i32* @nOut, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* @nOut, align 4
  call void @MakeLogEntry(i32 0, i32 200)
  call void @exit(i32 0) #9
  unreachable

96:                                               ; preds = %88
  %97 = load i8*, i8** @zScript, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 47
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  call void @NotFound(i32 210)
  br label %103

103:                                              ; preds = %102, %96
  br label %104

104:                                              ; preds = %110, %103
  %105 = load i8*, i8** @zScript, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 47
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load i8*, i8** @zScript, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** @zScript, align 8
  %113 = load i8*, i8** @zRealScript, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** @zRealScript, align 8
  br label %104

115:                                              ; preds = %104
  %116 = load i32, i32* %2, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i32 1, i32* @closeConnection, align 4
  br label %133

119:                                              ; preds = %115
  %120 = load i8*, i8** @zProtocol, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 5
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp slt i32 %123, 49
  br i1 %124, label %131, label %125

125:                                              ; preds = %119
  %126 = load i8*, i8** @zProtocol, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 7
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp slt i32 %129, 49
  br i1 %130, label %131, label %132

131:                                              ; preds = %125, %119
  store i32 1, i32* @closeConnection, align 4
  br label %132

132:                                              ; preds = %131, %125
  br label %133

133:                                              ; preds = %132, %118
  %134 = load i8*, i8** @zMethod, align 8
  %135 = call i32 @strcmp(i8* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.341, i64 0, i64 0)) #8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %133
  %138 = load i8*, i8** @zMethod, align 8
  %139 = call i32 @strcmp(i8* %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.342, i64 0, i64 0)) #8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %137
  %142 = load i8*, i8** @zMethod, align 8
  %143 = call i32 @strcmp(i8* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.343, i64 0, i64 0)) #8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %141
  call void @StartResponse(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.344, i64 0, i64 0))
  %146 = load i8*, i8** @zMethod, align 8
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.345, i64 0, i64 0), i8* %146)
  %148 = load i32, i32* @nOut, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* @nOut, align 4
  call void @MakeLogEntry(i32 0, i32 220)
  call void @exit(i32 0) #9
  unreachable

150:                                              ; preds = %141, %137, %133
  store i8* null, i8** @zCookie, align 8
  store i8* null, i8** @zAuthType, align 8
  store i8* null, i8** @zRemoteUser, align 8
  store i8* null, i8** @zReferer, align 8
  store i8* null, i8** @zIfNoneMatch, align 8
  store i8* null, i8** @zIfModifiedSince, align 8
  store i32 0, i32* @rangeEnd, align 4
  br label %151

151:                                              ; preds = %380, %150
  %152 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %154 = call i8* @fgets(i8* %152, i32 1000, %struct._IO_FILE* %153)
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %381

156:                                              ; preds = %151
  %157 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %158 = call i64 @strlen(i8* %157) #8
  %159 = load i32, i32* @nIn, align 4
  %160 = sext i32 %159 to i64
  %161 = add i64 %160, %158
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* @nIn, align 4
  %163 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %164 = call i8* @GetFirstElement(i8* %163, i8** %12)
  store i8* %164, i8** %11, align 8
  %165 = load i8*, i8** %11, align 8
  %166 = icmp eq i8* %165, null
  br i1 %166, label %172, label %167

167:                                              ; preds = %156
  %168 = load i8*, i8** %11, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %167, %156
  br label %381

173:                                              ; preds = %167
  %174 = load i8*, i8** %12, align 8
  call void @RemoveNewline(i8* %174)
  %175 = load i8*, i8** %11, align 8
  %176 = call i32 @strcasecmp(i8* %175, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.346, i64 0, i64 0)) #8
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = load i8*, i8** %12, align 8
  %180 = call i8* @StrDup(i8* %179)
  store i8* %180, i8** @zAgent, align 8
  br label %380

181:                                              ; preds = %173
  %182 = load i8*, i8** %11, align 8
  %183 = call i32 @strcasecmp(i8* %182, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.347, i64 0, i64 0)) #8
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load i8*, i8** %12, align 8
  %187 = call i8* @StrDup(i8* %186)
  store i8* %187, i8** @zAccept, align 8
  br label %379

188:                                              ; preds = %181
  %189 = load i8*, i8** %11, align 8
  %190 = call i32 @strcasecmp(i8* %189, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.348, i64 0, i64 0)) #8
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %188
  %193 = load i8*, i8** %12, align 8
  %194 = call i8* @StrDup(i8* %193)
  store i8* %194, i8** @zAcceptEncoding, align 8
  br label %378

195:                                              ; preds = %188
  %196 = load i8*, i8** %11, align 8
  %197 = call i32 @strcasecmp(i8* %196, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.349, i64 0, i64 0)) #8
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = load i8*, i8** %12, align 8
  %201 = call i8* @StrDup(i8* %200)
  store i8* %201, i8** @zContentLength, align 8
  br label %377

202:                                              ; preds = %195
  %203 = load i8*, i8** %11, align 8
  %204 = call i32 @strcasecmp(i8* %203, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.350, i64 0, i64 0)) #8
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %202
  %207 = load i8*, i8** %12, align 8
  %208 = call i8* @StrDup(i8* %207)
  store i8* %208, i8** @zContentType, align 8
  br label %376

209:                                              ; preds = %202
  %210 = load i8*, i8** %11, align 8
  %211 = call i32 @strcasecmp(i8* %210, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.351, i64 0, i64 0)) #8
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %209
  %214 = load i8*, i8** %12, align 8
  %215 = call i8* @StrDup(i8* %214)
  store i8* %215, i8** @zReferer, align 8
  %216 = load i8*, i8** %12, align 8
  %217 = call i8* @strstr(i8* %216, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.352, i64 0, i64 0)) #8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %220

219:                                              ; preds = %213
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.353, i64 0, i64 0), i8** @zReferer, align 8
  call void @Forbidden(i32 230)
  br label %220

220:                                              ; preds = %219, %213
  br label %375

221:                                              ; preds = %209
  %222 = load i8*, i8** %11, align 8
  %223 = call i32 @strcasecmp(i8* %222, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.354, i64 0, i64 0)) #8
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %221
  %226 = load i8*, i8** @zCookie, align 8
  %227 = load i8*, i8** %12, align 8
  %228 = call i8* @StrAppend(i8* %226, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.355, i64 0, i64 0), i8* %227)
  store i8* %228, i8** @zCookie, align 8
  br label %374

229:                                              ; preds = %221
  %230 = load i8*, i8** %11, align 8
  %231 = call i32 @strcasecmp(i8* %230, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.356, i64 0, i64 0)) #8
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %248

233:                                              ; preds = %229
  %234 = load i8*, i8** %12, align 8
  %235 = call i32 @strcasecmp(i8* %234, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.357, i64 0, i64 0)) #8
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %233
  store i32 1, i32* @closeConnection, align 4
  br label %247

238:                                              ; preds = %233
  %239 = load i32, i32* %2, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %246, label %241

241:                                              ; preds = %238
  %242 = load i8*, i8** %12, align 8
  %243 = call i32 @strcasecmp(i8* %242, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.358, i64 0, i64 0)) #8
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %241
  store i32 0, i32* @closeConnection, align 4
  br label %246

246:                                              ; preds = %245, %241, %238
  br label %247

247:                                              ; preds = %246, %237
  br label %373

248:                                              ; preds = %229
  %249 = load i8*, i8** %11, align 8
  %250 = call i32 @strcasecmp(i8* %249, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.359, i64 0, i64 0)) #8
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %313

252:                                              ; preds = %248
  store i32 0, i32* %13, align 4
  %253 = load i8*, i8** %12, align 8
  %254 = call i32 @sanitizeString(i8* %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  call void @Forbidden(i32 240)
  br label %257

257:                                              ; preds = %256, %252
  %258 = load i8*, i8** %12, align 8
  %259 = call i8* @StrDup(i8* %258)
  store i8* %259, i8** @zHttpHost, align 8
  %260 = load i8*, i8** @zHttpHost, align 8
  %261 = call i8* @StrDup(i8* %260)
  store i8* %261, i8** @zServerName, align 8
  store i8* %261, i8** @zServerPort, align 8
  br label %262

262:                                              ; preds = %291, %257
  %263 = load i8*, i8** @zServerPort, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %265, label %279

265:                                              ; preds = %262
  %266 = load i8*, i8** @zServerPort, align 8
  %267 = load i8, i8* %266, align 1
  store i8 %267, i8* %14, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %279

270:                                              ; preds = %265
  %271 = load i8, i8* %14, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp ne i32 %272, 58
  br i1 %273, label %277, label %274

274:                                              ; preds = %270
  %275 = load i32, i32* %13, align 4
  %276 = icmp ne i32 %275, 0
  br label %277

277:                                              ; preds = %274, %270
  %278 = phi i1 [ true, %270 ], [ %276, %274 ]
  br label %279

279:                                              ; preds = %277, %265, %262
  %280 = phi i1 [ false, %265 ], [ false, %262 ], [ %278, %277 ]
  br i1 %280, label %281, label %294

281:                                              ; preds = %279
  %282 = load i8, i8* %14, align 1
  %283 = sext i8 %282 to i32
  %284 = icmp eq i32 %283, 91
  br i1 %284, label %285, label %286

285:                                              ; preds = %281
  store i32 1, i32* %13, align 4
  br label %286

286:                                              ; preds = %285, %281
  %287 = load i8, i8* %14, align 1
  %288 = sext i8 %287 to i32
  %289 = icmp eq i32 %288, 93
  br i1 %289, label %290, label %291

290:                                              ; preds = %286
  store i32 0, i32* %13, align 4
  br label %291

291:                                              ; preds = %290, %286
  %292 = load i8*, i8** @zServerPort, align 8
  %293 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %293, i8** @zServerPort, align 8
  br label %262

294:                                              ; preds = %279
  %295 = load i8*, i8** @zServerPort, align 8
  %296 = icmp ne i8* %295, null
  br i1 %296, label %297, label %306

297:                                              ; preds = %294
  %298 = load i8*, i8** @zServerPort, align 8
  %299 = load i8, i8* %298, align 1
  %300 = sext i8 %299 to i32
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %297
  %303 = load i8*, i8** @zServerPort, align 8
  store i8 0, i8* %303, align 1
  %304 = load i8*, i8** @zServerPort, align 8
  %305 = getelementptr inbounds i8, i8* %304, i32 1
  store i8* %305, i8** @zServerPort, align 8
  br label %306

306:                                              ; preds = %302, %297, %294
  %307 = load i8*, i8** @zRealPort, align 8
  %308 = icmp ne i8* %307, null
  br i1 %308, label %309, label %312

309:                                              ; preds = %306
  %310 = load i8*, i8** @zRealPort, align 8
  %311 = call i8* @StrDup(i8* %310)
  store i8* %311, i8** @zServerPort, align 8
  br label %312

312:                                              ; preds = %309, %306
  br label %372

313:                                              ; preds = %248
  %314 = load i8*, i8** %11, align 8
  %315 = call i32 @strcasecmp(i8* %314, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.360, i64 0, i64 0)) #8
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %321

317:                                              ; preds = %313
  %318 = load i8*, i8** %12, align 8
  %319 = call i8* @StrDup(i8* %318)
  %320 = call i8* @GetFirstElement(i8* %319, i8** @zAuthArg)
  store i8* %320, i8** @zAuthType, align 8
  br label %371

321:                                              ; preds = %313
  %322 = load i8*, i8** %11, align 8
  %323 = call i32 @strcasecmp(i8* %322, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.361, i64 0, i64 0)) #8
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %321
  %326 = load i8*, i8** %12, align 8
  %327 = call i8* @StrDup(i8* %326)
  store i8* %327, i8** @zIfNoneMatch, align 8
  br label %370

328:                                              ; preds = %321
  %329 = load i8*, i8** %11, align 8
  %330 = call i32 @strcasecmp(i8* %329, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.362, i64 0, i64 0)) #8
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %328
  %333 = load i8*, i8** %12, align 8
  %334 = call i8* @StrDup(i8* %333)
  store i8* %334, i8** @zIfModifiedSince, align 8
  br label %369

335:                                              ; preds = %328
  %336 = load i8*, i8** %11, align 8
  %337 = call i32 @strcasecmp(i8* %336, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.363, i64 0, i64 0)) #8
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %368

339:                                              ; preds = %335
  %340 = load i8*, i8** @zMethod, align 8
  %341 = call i32 @strcmp(i8* %340, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.341, i64 0, i64 0)) #8
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %368

343:                                              ; preds = %339
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %344 = load i8*, i8** %12, align 8
  %345 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %344, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.364, i64 0, i64 0), i32* %15, i32* %16) #7
  store i32 %345, i32* %17, align 4
  %346 = load i32, i32* %17, align 4
  %347 = icmp eq i32 %346, 2
  br i1 %347, label %348, label %358

348:                                              ; preds = %343
  %349 = load i32, i32* %15, align 4
  %350 = icmp sge i32 %349, 0
  br i1 %350, label %351, label %358

351:                                              ; preds = %348
  %352 = load i32, i32* %16, align 4
  %353 = load i32, i32* %15, align 4
  %354 = icmp sge i32 %352, %353
  br i1 %354, label %355, label %358

355:                                              ; preds = %351
  %356 = load i32, i32* %15, align 4
  store i32 %356, i32* @rangeStart, align 4
  %357 = load i32, i32* %16, align 4
  store i32 %357, i32* @rangeEnd, align 4
  br label %367

358:                                              ; preds = %351, %348, %343
  %359 = load i32, i32* %17, align 4
  %360 = icmp eq i32 %359, 1
  br i1 %360, label %361, label %366

361:                                              ; preds = %358
  %362 = load i32, i32* %15, align 4
  %363 = icmp sgt i32 %362, 0
  br i1 %363, label %364, label %366

364:                                              ; preds = %361
  %365 = load i32, i32* %15, align 4
  store i32 %365, i32* @rangeStart, align 4
  store i32 2147483647, i32* @rangeEnd, align 4
  br label %366

366:                                              ; preds = %364, %361, %358
  br label %367

367:                                              ; preds = %366, %355
  br label %368

368:                                              ; preds = %367, %339, %335
  br label %369

369:                                              ; preds = %368, %332
  br label %370

370:                                              ; preds = %369, %325
  br label %371

371:                                              ; preds = %370, %317
  br label %372

372:                                              ; preds = %371, %312
  br label %373

373:                                              ; preds = %372, %247
  br label %374

374:                                              ; preds = %373, %225
  br label %375

375:                                              ; preds = %374, %220
  br label %376

376:                                              ; preds = %375, %206
  br label %377

377:                                              ; preds = %376, %199
  br label %378

378:                                              ; preds = %377, %192
  br label %379

379:                                              ; preds = %378, %185
  br label %380

380:                                              ; preds = %379, %178
  br label %151

381:                                              ; preds = %172, %151
  %382 = load i8*, i8** @zAgent, align 8
  %383 = icmp ne i8* %382, null
  br i1 %383, label %384, label %402

384:                                              ; preds = %381
  %385 = bitcast [13 x i8*]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %385, i8* align 16 bitcast ([13 x i8*]* @__const.ProcessOneRequest.azDisallow to i8*), i64 104, i1 false)
  store i64 0, i64* %19, align 8
  br label %386

386:                                              ; preds = %398, %384
  %387 = load i64, i64* %19, align 8
  %388 = icmp ult i64 %387, 13
  br i1 %388, label %389, label %401

389:                                              ; preds = %386
  %390 = load i8*, i8** @zAgent, align 8
  %391 = load i64, i64* %19, align 8
  %392 = getelementptr inbounds [13 x i8*], [13 x i8*]* %18, i64 0, i64 %391
  %393 = load i8*, i8** %392, align 8
  %394 = call i8* @strstr(i8* %390, i8* %393) #8
  %395 = icmp ne i8* %394, null
  br i1 %395, label %396, label %397

396:                                              ; preds = %389
  call void @Forbidden(i32 250)
  br label %397

397:                                              ; preds = %396, %389
  br label %398

398:                                              ; preds = %397
  %399 = load i64, i64* %19, align 8
  %400 = add i64 %399, 1
  store i64 %400, i64* %19, align 8
  br label %386

401:                                              ; preds = %386
  br label %402

402:                                              ; preds = %401, %381
  %403 = load i8*, i8** @zServerName, align 8
  %404 = icmp eq i8* %403, null
  br i1 %404, label %405, label %409

405:                                              ; preds = %402
  %406 = call i8* @SafeMalloc(i64 100)
  store i8* %406, i8** @zServerName, align 8
  %407 = load i8*, i8** @zServerName, align 8
  %408 = call i32 @gethostname(i8* %407, i64 100) #7
  br label %409

409:                                              ; preds = %405, %402
  %410 = load i8*, i8** @zServerPort, align 8
  %411 = icmp eq i8* %410, null
  br i1 %411, label %417, label %412

412:                                              ; preds = %409
  %413 = load i8*, i8** @zServerPort, align 8
  %414 = load i8, i8* %413, align 1
  %415 = sext i8 %414 to i32
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %418

417:                                              ; preds = %412, %409
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.378, i64 0, i64 0), i8** @zServerPort, align 8
  br label %418

418:                                              ; preds = %417, %412
  %419 = load i8*, i8** @zScript, align 8
  store i8* %419, i8** %6, align 8
  br label %420

420:                                              ; preds = %433, %418
  %421 = load i8*, i8** %6, align 8
  %422 = load i8, i8* %421, align 1
  %423 = sext i8 %422 to i32
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %430

425:                                              ; preds = %420
  %426 = load i8*, i8** %6, align 8
  %427 = load i8, i8* %426, align 1
  %428 = sext i8 %427 to i32
  %429 = icmp ne i32 %428, 63
  br label %430

430:                                              ; preds = %425, %420
  %431 = phi i1 [ false, %420 ], [ %429, %425 ]
  br i1 %431, label %432, label %436

432:                                              ; preds = %430
  br label %433

433:                                              ; preds = %432
  %434 = load i8*, i8** %6, align 8
  %435 = getelementptr inbounds i8, i8* %434, i32 1
  store i8* %435, i8** %6, align 8
  br label %420

436:                                              ; preds = %430
  %437 = load i8*, i8** %6, align 8
  %438 = load i8, i8* %437, align 1
  %439 = sext i8 %438 to i32
  %440 = icmp eq i32 %439, 63
  br i1 %440, label %441, label %445

441:                                              ; preds = %436
  %442 = load i8*, i8** %6, align 8
  %443 = call i8* @StrDup(i8* %442)
  store i8* %443, i8** @zQuerySuffix, align 8
  %444 = load i8*, i8** %6, align 8
  store i8 0, i8* %444, align 1
  br label %446

445:                                              ; preds = %436
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), i8** @zQuerySuffix, align 8
  br label %446

446:                                              ; preds = %445, %441
  %447 = load i8*, i8** @zQuerySuffix, align 8
  %448 = load i8, i8* %447, align 1
  %449 = sext i8 %448 to i32
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %454

451:                                              ; preds = %446
  %452 = load i8*, i8** @zQuerySuffix, align 8
  %453 = getelementptr inbounds i8, i8* %452, i64 1
  br label %456

454:                                              ; preds = %446
  %455 = load i8*, i8** @zQuerySuffix, align 8
  br label %456

456:                                              ; preds = %454, %451
  %457 = phi i8* [ %453, %451 ], [ %455, %454 ]
  store i8* %457, i8** @zQueryString, align 8
  %458 = load i8*, i8** @zMethod, align 8
  %459 = getelementptr inbounds i8, i8* %458, i64 0
  %460 = load i8, i8* %459, align 1
  %461 = sext i8 %460 to i32
  %462 = icmp eq i32 %461, 80
  br i1 %462, label %463, label %521

463:                                              ; preds = %456
  %464 = load i8*, i8** @zContentLength, align 8
  %465 = icmp ne i8* %464, null
  br i1 %465, label %466, label %521

466:                                              ; preds = %463
  %467 = load i8*, i8** @zContentLength, align 8
  %468 = call i32 @atoi(i8* %467) #8
  %469 = sext i32 %468 to i64
  store i64 %469, i64* %20, align 8
  %470 = load i64, i64* %20, align 8
  %471 = icmp ugt i64 %470, 250000000
  br i1 %471, label %472, label %476

472:                                              ; preds = %466
  call void @StartResponse(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.380, i64 0, i64 0))
  %473 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.381, i64 0, i64 0))
  %474 = load i32, i32* @nOut, align 4
  %475 = add nsw i32 %474, %473
  store i32 %475, i32* @nOut, align 4
  call void @MakeLogEntry(i32 0, i32 270)
  call void @exit(i32 0) #9
  unreachable

476:                                              ; preds = %466
  store i32 0, i32* @rangeEnd, align 4
  %477 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([500 x i8], [500 x i8]* @zTmpNamBuf, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.382, i64 0, i64 0)) #7
  store i8* getelementptr inbounds ([500 x i8], [500 x i8]* @zTmpNamBuf, i64 0, i64 0), i8** @zTmpNam, align 8
  %478 = load i8*, i8** @zTmpNam, align 8
  %479 = call i32 @mkstemp(i8* %478)
  %480 = icmp slt i32 %479, 0
  br i1 %480, label %481, label %482

481:                                              ; preds = %476
  call void (i32, i8*, ...) @Malfunction(i32 280, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.383, i64 0, i64 0))
  br label %482

482:                                              ; preds = %481, %476
  %483 = load i8*, i8** @zTmpNam, align 8
  %484 = call %struct._IO_FILE* @fopen(i8* %483, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.384, i64 0, i64 0))
  store %struct._IO_FILE* %484, %struct._IO_FILE** %21, align 8
  %485 = load %struct._IO_FILE*, %struct._IO_FILE** %21, align 8
  %486 = icmp eq %struct._IO_FILE* %485, null
  br i1 %486, label %487, label %492

487:                                              ; preds = %482
  call void @StartResponse(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.385, i64 0, i64 0))
  %488 = load i8*, i8** @zTmpNam, align 8
  %489 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.386, i64 0, i64 0), i8* %488)
  %490 = load i32, i32* @nOut, align 4
  %491 = add nsw i32 %490, %489
  store i32 %491, i32* @nOut, align 4
  call void @MakeLogEntry(i32 0, i32 290)
  call void @exit(i32 0) #9
  unreachable

492:                                              ; preds = %482
  %493 = load i64, i64* %20, align 8
  %494 = add i64 %493, 1
  %495 = call i8* @SafeMalloc(i64 %494)
  store i8* %495, i8** %22, align 8
  %496 = load i32, i32* @useTimeout, align 4
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %504

498:                                              ; preds = %492
  %499 = load i64, i64* %20, align 8
  %500 = udiv i64 %499, 2000
  %501 = add i64 15, %500
  %502 = trunc i64 %501 to i32
  %503 = call i32 @alarm(i32 %502) #7
  br label %504

504:                                              ; preds = %498, %492
  %505 = load i8*, i8** %22, align 8
  %506 = load i64, i64* %20, align 8
  %507 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %508 = call i64 @fread(i8* %505, i64 1, i64 %506, %struct._IO_FILE* %507)
  %509 = trunc i64 %508 to i32
  store i32 %509, i32* %23, align 4
  %510 = load i32, i32* %23, align 4
  %511 = load i32, i32* @nIn, align 4
  %512 = add nsw i32 %511, %510
  store i32 %512, i32* @nIn, align 4
  %513 = load i8*, i8** %22, align 8
  %514 = load i32, i32* %23, align 4
  %515 = sext i32 %514 to i64
  %516 = load %struct._IO_FILE*, %struct._IO_FILE** %21, align 8
  %517 = call i64 @fwrite(i8* %513, i64 1, i64 %515, %struct._IO_FILE* %516)
  %518 = load i8*, i8** %22, align 8
  call void @free(i8* %518) #7
  %519 = load %struct._IO_FILE*, %struct._IO_FILE** %21, align 8
  %520 = call i32 @fclose(%struct._IO_FILE* %519)
  br label %521

521:                                              ; preds = %504, %463, %456
  %522 = load i32, i32* @useTimeout, align 4
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %526

524:                                              ; preds = %521
  %525 = call i32 @alarm(i32 10) #7
  br label %526

526:                                              ; preds = %524, %521
  %527 = load i8*, i8** @zScript, align 8
  %528 = call i32 @sanitizeString(i8* %527)
  %529 = load i8*, i8** @zScript, align 8
  store i8* %529, i8** %6, align 8
  br label %530

530:                                              ; preds = %570, %526
  %531 = load i8*, i8** %6, align 8
  %532 = load i8, i8* %531, align 1
  %533 = icmp ne i8 %532, 0
  br i1 %533, label %534, label %573

534:                                              ; preds = %530
  %535 = load i8*, i8** %6, align 8
  %536 = load i8, i8* %535, align 1
  %537 = sext i8 %536 to i32
  %538 = icmp eq i32 %537, 47
  br i1 %538, label %539, label %569

539:                                              ; preds = %534
  %540 = load i8*, i8** %6, align 8
  %541 = getelementptr inbounds i8, i8* %540, i64 1
  %542 = load i8, i8* %541, align 1
  %543 = sext i8 %542 to i32
  %544 = icmp eq i32 %543, 46
  br i1 %544, label %551, label %545

545:                                              ; preds = %539
  %546 = load i8*, i8** %6, align 8
  %547 = getelementptr inbounds i8, i8* %546, i64 1
  %548 = load i8, i8* %547, align 1
  %549 = sext i8 %548 to i32
  %550 = icmp eq i32 %549, 45
  br i1 %550, label %551, label %569

551:                                              ; preds = %545, %539
  %552 = load i8*, i8** @zScript, align 8
  %553 = call i32 @strncmp(i8* %552, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.387, i64 0, i64 0), i64 13) #8
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %555, label %568

555:                                              ; preds = %551
  %556 = load i8*, i8** %6, align 8
  %557 = getelementptr inbounds i8, i8* %556, i64 1
  %558 = load i8, i8* %557, align 1
  %559 = sext i8 %558 to i32
  %560 = icmp ne i32 %559, 46
  br i1 %560, label %567, label %561

561:                                              ; preds = %555
  %562 = load i8*, i8** %6, align 8
  %563 = getelementptr inbounds i8, i8* %562, i64 2
  %564 = load i8, i8* %563, align 1
  %565 = sext i8 %564 to i32
  %566 = icmp ne i32 %565, 46
  br i1 %566, label %567, label %568

567:                                              ; preds = %561, %555
  br label %570

568:                                              ; preds = %561, %551
  call void @NotFound(i32 300)
  br label %569

569:                                              ; preds = %568, %545, %534
  br label %570

570:                                              ; preds = %569, %567
  %571 = load i8*, i8** %6, align 8
  %572 = getelementptr inbounds i8, i8* %571, i32 1
  store i8* %572, i8** %6, align 8
  br label %530

573:                                              ; preds = %530
  %574 = load i8*, i8** @zScript, align 8
  %575 = getelementptr inbounds i8, i8* %574, i64 0
  %576 = load i8, i8* %575, align 1
  %577 = sext i8 %576 to i32
  %578 = icmp ne i32 %577, 47
  br i1 %578, label %579, label %580

579:                                              ; preds = %573
  call void @NotFound(i32 310)
  br label %580

580:                                              ; preds = %579, %573
  %581 = load i8*, i8** @zRoot, align 8
  %582 = call i64 @strlen(i8* %581) #8
  %583 = add i64 %582, 40
  %584 = icmp uge i64 %583, 1000
  br i1 %584, label %585, label %586

585:                                              ; preds = %580
  call void @NotFound(i32 320)
  br label %586

586:                                              ; preds = %585, %580
  %587 = load i8*, i8** @zHttpHost, align 8
  %588 = icmp eq i8* %587, null
  br i1 %588, label %595, label %589

589:                                              ; preds = %586
  %590 = load i8*, i8** @zHttpHost, align 8
  %591 = getelementptr inbounds i8, i8* %590, i64 0
  %592 = load i8, i8* %591, align 1
  %593 = sext i8 %592 to i32
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %595, label %596

595:                                              ; preds = %589, %586
  call void @NotFound(i32 330)
  br label %700

596:                                              ; preds = %589
  %597 = load i8*, i8** @zHttpHost, align 8
  %598 = call i64 @strlen(i8* %597) #8
  %599 = load i8*, i8** @zRoot, align 8
  %600 = call i64 @strlen(i8* %599) #8
  %601 = add i64 %598, %600
  %602 = add i64 %601, 10
  %603 = icmp uge i64 %602, 1000
  br i1 %603, label %604, label %605

604:                                              ; preds = %596
  call void @NotFound(i32 340)
  br label %699

605:                                              ; preds = %596
  %606 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %607 = load i8*, i8** @zRoot, align 8
  %608 = load i8*, i8** @zHttpHost, align 8
  %609 = call i32 (i8*, i8*, ...) @sprintf(i8* %606, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.388, i64 0, i64 0), i8* %607, i8* %608) #7
  %610 = load i8*, i8** @zRoot, align 8
  %611 = call i64 @strlen(i8* %610) #8
  %612 = add i64 %611, 1
  %613 = trunc i64 %612 to i32
  store i32 %613, i32* %3, align 4
  br label %614

614:                                              ; preds = %691, %605
  %615 = load i32, i32* %3, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 %616
  %618 = load i8, i8* %617, align 1
  %619 = sext i8 %618 to i32
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %621, label %628

621:                                              ; preds = %614
  %622 = load i32, i32* %3, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 %623
  %625 = load i8, i8* %624, align 1
  %626 = sext i8 %625 to i32
  %627 = icmp ne i32 %626, 58
  br label %628

628:                                              ; preds = %621, %614
  %629 = phi i1 [ false, %614 ], [ %627, %621 ]
  br i1 %629, label %630, label %694

630:                                              ; preds = %628
  %631 = load i32, i32* %3, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 %632
  %634 = load i8, i8* %633, align 1
  store i8 %634, i8* %24, align 1
  %635 = call i16** @__ctype_b_loc() #10
  %636 = load i16*, i16** %635, align 8
  %637 = load i8, i8* %24, align 1
  %638 = zext i8 %637 to i32
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds i16, i16* %636, i64 %639
  %641 = load i16, i16* %640, align 2
  %642 = zext i16 %641 to i32
  %643 = and i32 %642, 8
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %670, label %645

645:                                              ; preds = %630
  %646 = load i8, i8* %24, align 1
  %647 = zext i8 %646 to i32
  %648 = icmp eq i32 %647, 46
  br i1 %648, label %649, label %666

649:                                              ; preds = %645
  %650 = load i32, i32* %3, align 4
  %651 = add nsw i32 %650, 1
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 %652
  %654 = load i8, i8* %653, align 1
  %655 = sext i8 %654 to i32
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %665, label %657

657:                                              ; preds = %649
  %658 = load i32, i32* %3, align 4
  %659 = add nsw i32 %658, 1
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 %660
  %662 = load i8, i8* %661, align 1
  %663 = sext i8 %662 to i32
  %664 = icmp eq i32 %663, 58
  br i1 %664, label %665, label %666

665:                                              ; preds = %657, %649
  br label %694

666:                                              ; preds = %657, %645
  %667 = load i32, i32* %3, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 %668
  store i8 95, i8* %669, align 1
  br label %690

670:                                              ; preds = %630
  %671 = call i16** @__ctype_b_loc() #10
  %672 = load i16*, i16** %671, align 8
  %673 = load i8, i8* %24, align 1
  %674 = zext i8 %673 to i32
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds i16, i16* %672, i64 %675
  %677 = load i16, i16* %676, align 2
  %678 = zext i16 %677 to i32
  %679 = and i32 %678, 256
  %680 = icmp ne i32 %679, 0
  br i1 %680, label %681, label %689

681:                                              ; preds = %670
  %682 = load i8, i8* %24, align 1
  %683 = zext i8 %682 to i32
  %684 = call i32 @tolower(i32 %683) #8
  %685 = trunc i32 %684 to i8
  %686 = load i32, i32* %3, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 %687
  store i8 %685, i8* %688, align 1
  br label %689

689:                                              ; preds = %681, %670
  br label %690

690:                                              ; preds = %689, %666
  br label %691

691:                                              ; preds = %690
  %692 = load i32, i32* %3, align 4
  %693 = add nsw i32 %692, 1
  store i32 %693, i32* %3, align 4
  br label %614

694:                                              ; preds = %665, %628
  %695 = load i32, i32* %3, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 %696
  %698 = call i8* @strcpy(i8* %697, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.389, i64 0, i64 0)) #7
  br label %699

699:                                              ; preds = %694, %604
  br label %700

700:                                              ; preds = %699, %595
  %701 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %702 = call i32 @stat(i8* %701, %struct.stat* %7) #7
  %703 = icmp ne i32 %702, 0
  br i1 %703, label %709, label %704

704:                                              ; preds = %700
  %705 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 3
  %706 = load i32, i32* %705, align 8
  %707 = and i32 %706, 61440
  %708 = icmp eq i32 %707, 16384
  br i1 %708, label %731, label %709

709:                                              ; preds = %704, %700
  %710 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %711 = load i8*, i8** @zRoot, align 8
  %712 = call i32 (i8*, i8*, ...) @sprintf(i8* %710, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.390, i64 0, i64 0), i8* %711) #7
  %713 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %714 = call i32 @stat(i8* %713, %struct.stat* %7) #7
  %715 = icmp ne i32 %714, 0
  br i1 %715, label %721, label %716

716:                                              ; preds = %709
  %717 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 3
  %718 = load i32, i32* %717, align 8
  %719 = and i32 %718, 61440
  %720 = icmp eq i32 %719, 16384
  br i1 %720, label %730, label %721

721:                                              ; preds = %716, %709
  %722 = load i32, i32* @standalone, align 4
  %723 = icmp ne i32 %722, 0
  br i1 %723, label %724, label %728

724:                                              ; preds = %721
  %725 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %726 = load i8*, i8** @zRoot, align 8
  %727 = call i32 (i8*, i8*, ...) @sprintf(i8* %725, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.391, i64 0, i64 0), i8* %726) #7
  br label %729

728:                                              ; preds = %721
  call void @NotFound(i32 350)
  br label %729

729:                                              ; preds = %728, %724
  br label %730

730:                                              ; preds = %729, %716
  br label %731

731:                                              ; preds = %730, %704
  %732 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %733 = call i8* @StrDup(i8* %732)
  store i8* %733, i8** @zHome, align 8
  %734 = load i8*, i8** @zHome, align 8
  %735 = call i32 @chdir(i8* %734) #7
  %736 = icmp ne i32 %735, 0
  br i1 %736, label %737, label %741

737:                                              ; preds = %731
  %738 = load i8*, i8** @zHome, align 8
  %739 = getelementptr inbounds [1000 x i8], [1000 x i8]* %25, i64 0, i64 0
  %740 = call i8* @getcwd(i8* %739, i64 999) #7
  call void (i32, i8*, ...) @Malfunction(i32 360, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.337, i64 0, i64 0), i8* %738, i8* %740)
  br label %741

741:                                              ; preds = %737, %731
  %742 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %743 = call i64 @strlen(i8* %742) #8
  %744 = trunc i64 %743 to i32
  store i32 %744, i32* %5, align 4
  store i32 %744, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %745

745:                                              ; preds = %962, %741
  %746 = load i8*, i8** @zScript, align 8
  %747 = load i32, i32* %3, align 4
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds i8, i8* %746, i64 %748
  %750 = load i8, i8* %749, align 1
  %751 = icmp ne i8 %750, 0
  br i1 %751, label %752, label %975

752:                                              ; preds = %745
  br label %753

753:                                              ; preds = %776, %752
  %754 = load i8*, i8** @zScript, align 8
  %755 = load i32, i32* %3, align 4
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds i8, i8* %754, i64 %756
  %758 = load i8, i8* %757, align 1
  %759 = sext i8 %758 to i32
  %760 = icmp ne i32 %759, 0
  br i1 %760, label %761, label %774

761:                                              ; preds = %753
  %762 = load i32, i32* %3, align 4
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %772, label %764

764:                                              ; preds = %761
  %765 = load i8*, i8** @zScript, align 8
  %766 = load i32, i32* %3, align 4
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds i8, i8* %765, i64 %767
  %769 = load i8, i8* %768, align 1
  %770 = sext i8 %769 to i32
  %771 = icmp ne i32 %770, 47
  br label %772

772:                                              ; preds = %764, %761
  %773 = phi i1 [ true, %761 ], [ %771, %764 ]
  br label %774

774:                                              ; preds = %772, %753
  %775 = phi i1 [ false, %753 ], [ %773, %772 ]
  br i1 %775, label %776, label %789

776:                                              ; preds = %774
  %777 = load i8*, i8** @zScript, align 8
  %778 = load i32, i32* %3, align 4
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds i8, i8* %777, i64 %779
  %781 = load i8, i8* %780, align 1
  %782 = load i32, i32* %4, align 4
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 %783
  store i8 %781, i8* %784, align 1
  %785 = load i32, i32* %3, align 4
  %786 = add nsw i32 %785, 1
  store i32 %786, i32* %3, align 4
  %787 = load i32, i32* %4, align 4
  %788 = add nsw i32 %787, 1
  store i32 %788, i32* %4, align 4
  br label %753

789:                                              ; preds = %774
  %790 = load i32, i32* %4, align 4
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 %791
  store i8 0, i8* %792, align 1
  %793 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %794 = call i32 @stat(i8* %793, %struct.stat* %7) #7
  %795 = icmp ne i32 %794, 0
  br i1 %795, label %796, label %860

796:                                              ; preds = %789
  store i32 1, i32* %26, align 4
  br label %797

797:                                              ; preds = %854, %796
  %798 = load i32, i32* %26, align 4
  %799 = icmp ne i32 %798, 0
  br i1 %799, label %800, label %807

800:                                              ; preds = %797
  %801 = load i32, i32* %3, align 4
  %802 = icmp sgt i32 %801, 0
  br i1 %802, label %803, label %807

803:                                              ; preds = %800
  %804 = load i32, i32* %4, align 4
  %805 = load i32, i32* %5, align 4
  %806 = icmp sgt i32 %804, %805
  br label %807

807:                                              ; preds = %803, %800, %797
  %808 = phi i1 [ false, %800 ], [ false, %797 ], [ %806, %803 ]
  br i1 %808, label %809, label %855

809:                                              ; preds = %807
  br label %810

810:                                              ; preds = %824, %809
  %811 = load i32, i32* %4, align 4
  %812 = load i32, i32* %5, align 4
  %813 = icmp sgt i32 %811, %812
  br i1 %813, label %814, label %822

814:                                              ; preds = %810
  %815 = load i32, i32* %4, align 4
  %816 = sub nsw i32 %815, 1
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 %817
  %819 = load i8, i8* %818, align 1
  %820 = sext i8 %819 to i32
  %821 = icmp ne i32 %820, 47
  br label %822

822:                                              ; preds = %814, %810
  %823 = phi i1 [ false, %810 ], [ %821, %814 ]
  br i1 %823, label %824, label %827

824:                                              ; preds = %822
  %825 = load i32, i32* %4, align 4
  %826 = add nsw i32 %825, -1
  store i32 %826, i32* %4, align 4
  br label %810

827:                                              ; preds = %822
  %828 = load i32, i32* %4, align 4
  %829 = sub nsw i32 %828, 1
  %830 = sext i32 %829 to i64
  %831 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 %830
  %832 = call i8* @strcpy(i8* %831, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.392, i64 0, i64 0)) #7
  %833 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %834 = call i32 @stat(i8* %833, %struct.stat* %7) #7
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %836, label %851

836:                                              ; preds = %827
  %837 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 3
  %838 = load i32, i32* %837, align 8
  %839 = and i32 %838, 61440
  %840 = icmp eq i32 %839, 32768
  br i1 %840, label %841, label %851

841:                                              ; preds = %836
  %842 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %843 = call i32 @access(i8* %842, i32 4) #7
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %845, label %851

845:                                              ; preds = %841
  %846 = load i32, i32* %5, align 4
  %847 = sext i32 %846 to i64
  %848 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 %847
  %849 = call i8* @StrDup(i8* %848)
  store i8* %849, i8** @zRealScript, align 8
  %850 = load i8*, i8** @zRealScript, align 8
  call void @Redirect(i8* %850, i32 302, i32 1, i32 370)
  br label %1227

851:                                              ; preds = %841, %836, %827
  %852 = load i32, i32* %4, align 4
  %853 = add nsw i32 %852, -1
  store i32 %853, i32* %4, align 4
  br label %854

854:                                              ; preds = %851
  br label %797

855:                                              ; preds = %807
  %856 = load i32, i32* %26, align 4
  %857 = icmp ne i32 %856, 0
  br i1 %857, label %858, label %859

858:                                              ; preds = %855
  call void @NotFound(i32 380)
  br label %859

859:                                              ; preds = %858, %855
  br label %975

860:                                              ; preds = %789
  %861 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 3
  %862 = load i32, i32* %861, align 8
  %863 = and i32 %862, 61440
  %864 = icmp eq i32 %863, 32768
  br i1 %864, label %865, label %875

865:                                              ; preds = %860
  %866 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %867 = call i32 @access(i8* %866, i32 4) #7
  %868 = icmp ne i32 %867, 0
  br i1 %868, label %869, label %870

869:                                              ; preds = %865
  call void @NotFound(i32 390)
  br label %870

870:                                              ; preds = %869, %865
  %871 = load i32, i32* %5, align 4
  %872 = sext i32 %871 to i64
  %873 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 %872
  %874 = call i8* @StrDup(i8* %873)
  store i8* %874, i8** @zRealScript, align 8
  br label %975

875:                                              ; preds = %860
  %876 = load i8*, i8** @zScript, align 8
  %877 = load i32, i32* %3, align 4
  %878 = sext i32 %877 to i64
  %879 = getelementptr inbounds i8, i8* %876, i64 %878
  %880 = load i8, i8* %879, align 1
  %881 = sext i8 %880 to i32
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %892, label %883

883:                                              ; preds = %875
  %884 = load i8*, i8** @zScript, align 8
  %885 = load i32, i32* %3, align 4
  %886 = add nsw i32 %885, 1
  %887 = sext i32 %886 to i64
  %888 = getelementptr inbounds i8, i8* %884, i64 %887
  %889 = load i8, i8* %888, align 1
  %890 = sext i8 %889 to i32
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %892, label %962

892:                                              ; preds = %883, %875
  %893 = load i32, i32* %4, align 4
  %894 = icmp sgt i32 %893, 0
  br i1 %894, label %895, label %906

895:                                              ; preds = %892
  %896 = load i32, i32* %4, align 4
  %897 = sub nsw i32 %896, 1
  %898 = sext i32 %897 to i64
  %899 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 %898
  %900 = load i8, i8* %899, align 1
  %901 = sext i8 %900 to i32
  %902 = icmp eq i32 %901, 47
  br i1 %902, label %903, label %906

903:                                              ; preds = %895
  %904 = load i32, i32* %4, align 4
  %905 = sub nsw i32 %904, 1
  br label %908

906:                                              ; preds = %895, %892
  %907 = load i32, i32* %4, align 4
  br label %908

908:                                              ; preds = %906, %903
  %909 = phi i32 [ %905, %903 ], [ %907, %906 ]
  store i32 %909, i32* %27, align 4
  store i32 0, i32* %28, align 4
  br label %910

910:                                              ; preds = %939, %908
  %911 = load i32, i32* %28, align 4
  %912 = zext i32 %911 to i64
  %913 = icmp ult i64 %912, 3
  br i1 %913, label %914, label %942

914:                                              ; preds = %910
  %915 = load i32, i32* %27, align 4
  %916 = sext i32 %915 to i64
  %917 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 %916
  %918 = load i32, i32* %28, align 4
  %919 = zext i32 %918 to i64
  %920 = getelementptr inbounds [3 x i8*], [3 x i8*]* @ProcessOneRequest.azIndex, i64 0, i64 %919
  %921 = load i8*, i8** %920, align 8
  %922 = call i8* @strcpy(i8* %917, i8* %921) #7
  %923 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %924 = call i32 @stat(i8* %923, %struct.stat* %7) #7
  %925 = icmp ne i32 %924, 0
  br i1 %925, label %926, label %927

926:                                              ; preds = %914
  br label %939

927:                                              ; preds = %914
  %928 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 3
  %929 = load i32, i32* %928, align 8
  %930 = and i32 %929, 61440
  %931 = icmp eq i32 %930, 32768
  br i1 %931, label %933, label %932

932:                                              ; preds = %927
  br label %939

933:                                              ; preds = %927
  %934 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %935 = call i32 @access(i8* %934, i32 4) #7
  %936 = icmp ne i32 %935, 0
  br i1 %936, label %937, label %938

937:                                              ; preds = %933
  br label %939

938:                                              ; preds = %933
  br label %942

939:                                              ; preds = %937, %932, %926
  %940 = load i32, i32* %28, align 4
  %941 = add i32 %940, 1
  store i32 %941, i32* %28, align 4
  br label %910

942:                                              ; preds = %938, %910
  %943 = load i32, i32* %28, align 4
  %944 = zext i32 %943 to i64
  %945 = icmp uge i64 %944, 3
  br i1 %945, label %946, label %947

946:                                              ; preds = %942
  call void @NotFound(i32 400)
  br label %947

947:                                              ; preds = %946, %942
  %948 = load i32, i32* %5, align 4
  %949 = sext i32 %948 to i64
  %950 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 %949
  %951 = call i8* @StrDup(i8* %950)
  store i8* %951, i8** @zRealScript, align 8
  %952 = load i8*, i8** @zScript, align 8
  %953 = load i32, i32* %3, align 4
  %954 = sext i32 %953 to i64
  %955 = getelementptr inbounds i8, i8* %952, i64 %954
  %956 = load i8, i8* %955, align 1
  %957 = sext i8 %956 to i32
  %958 = icmp eq i32 %957, 0
  br i1 %958, label %959, label %961

959:                                              ; preds = %947
  %960 = load i8*, i8** @zRealScript, align 8
  call void @Redirect(i8* %960, i32 301, i32 1, i32 410)
  br label %1227

961:                                              ; preds = %947
  br label %975

962:                                              ; preds = %883
  %963 = load i8*, i8** @zScript, align 8
  %964 = load i32, i32* %3, align 4
  %965 = sext i32 %964 to i64
  %966 = getelementptr inbounds i8, i8* %963, i64 %965
  %967 = load i8, i8* %966, align 1
  %968 = load i32, i32* %4, align 4
  %969 = sext i32 %968 to i64
  %970 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 %969
  store i8 %967, i8* %970, align 1
  %971 = load i32, i32* %3, align 4
  %972 = add nsw i32 %971, 1
  store i32 %972, i32* %3, align 4
  %973 = load i32, i32* %4, align 4
  %974 = add nsw i32 %973, 1
  store i32 %974, i32* %4, align 4
  br label %745

975:                                              ; preds = %961, %870, %859, %745
  %976 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %977 = call i8* @StrDup(i8* %976)
  store i8* %977, i8** @zFile, align 8
  %978 = load i8*, i8** @zScript, align 8
  %979 = load i32, i32* %3, align 4
  %980 = sext i32 %979 to i64
  %981 = getelementptr inbounds i8, i8* %978, i64 %980
  %982 = call i8* @StrDup(i8* %981)
  store i8* %982, i8** @zPathInfo, align 8
  %983 = load i8*, i8** @zFile, align 8
  %984 = call i64 @strlen(i8* %983) #8
  %985 = trunc i64 %984 to i32
  store i32 %985, i32* @lenFile, align 4
  %986 = load i8*, i8** @zFile, align 8
  %987 = call i8* @StrDup(i8* %986)
  store i8* %987, i8** @zDir, align 8
  %988 = load i8*, i8** @zDir, align 8
  %989 = call i64 @strlen(i8* %988) #8
  %990 = sub i64 %989, 1
  %991 = trunc i64 %990 to i32
  store i32 %991, i32* %3, align 4
  br label %992

992:                                              ; preds = %1006, %975
  %993 = load i32, i32* %3, align 4
  %994 = icmp sgt i32 %993, 0
  br i1 %994, label %995, label %1003

995:                                              ; preds = %992
  %996 = load i8*, i8** @zDir, align 8
  %997 = load i32, i32* %3, align 4
  %998 = sext i32 %997 to i64
  %999 = getelementptr inbounds i8, i8* %996, i64 %998
  %1000 = load i8, i8* %999, align 1
  %1001 = sext i8 %1000 to i32
  %1002 = icmp ne i32 %1001, 47
  br label %1003

1003:                                             ; preds = %995, %992
  %1004 = phi i1 [ false, %992 ], [ %1002, %995 ]
  br i1 %1004, label %1005, label %1009

1005:                                             ; preds = %1003
  br label %1006

1006:                                             ; preds = %1005
  %1007 = load i32, i32* %3, align 4
  %1008 = add nsw i32 %1007, -1
  store i32 %1008, i32* %3, align 4
  br label %992

1009:                                             ; preds = %1003
  %1010 = load i32, i32* %3, align 4
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %1012, label %1015

1012:                                             ; preds = %1009
  %1013 = load i8*, i8** @zDir, align 8
  %1014 = call i8* @strcpy(i8* %1013, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.336, i64 0, i64 0)) #7
  br label %1020

1015:                                             ; preds = %1009
  %1016 = load i8*, i8** @zDir, align 8
  %1017 = load i32, i32* %3, align 4
  %1018 = sext i32 %1017 to i64
  %1019 = getelementptr inbounds i8, i8* %1016, i64 %1018
  store i8 0, i8* %1019, align 1
  br label %1020

1020:                                             ; preds = %1015, %1012
  %1021 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %1022 = load i8*, i8** @zDir, align 8
  %1023 = call i32 (i8*, i8*, ...) @sprintf(i8* %1021, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.396, i64 0, i64 0), i8* %1022) #7
  %1024 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %1025 = call i32 @access(i8* %1024, i32 4) #7
  %1026 = icmp eq i32 %1025, 0
  br i1 %1026, label %1027, label %1032

1027:                                             ; preds = %1020
  %1028 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %1029 = call i32 @CheckBasicAuthorization(i8* %1028)
  %1030 = icmp ne i32 %1029, 0
  br i1 %1030, label %1032, label %1031

1031:                                             ; preds = %1027
  br label %1227

1032:                                             ; preds = %1027, %1020
  %1033 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 3
  %1034 = load i32, i32* %1033, align 8
  %1035 = and i32 %1034, 64
  %1036 = icmp eq i32 %1035, 64
  br i1 %1036, label %1037, label %1190

1037:                                             ; preds = %1032
  %1038 = load i8*, i8** @zFile, align 8
  %1039 = call i32 @access(i8* %1038, i32 1) #7
  %1040 = icmp eq i32 %1039, 0
  br i1 %1040, label %1041, label %1190

1041:                                             ; preds = %1037
  %1042 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 3
  %1043 = load i32, i32* %1042, align 8
  %1044 = and i32 %1043, 18
  %1045 = icmp ne i32 %1044, 0
  br i1 %1045, label %1046, label %1047

1046:                                             ; preds = %1041
  call void @CgiScriptWritable()
  br label %1047

1047:                                             ; preds = %1046, %1041
  %1048 = load i8*, i8** @zDir, align 8
  %1049 = call i32 @chdir(i8* %1048) #7
  %1050 = icmp ne i32 %1049, 0
  br i1 %1050, label %1051, label %1055

1051:                                             ; preds = %1047
  %1052 = load i8*, i8** @zDir, align 8
  %1053 = getelementptr inbounds [1000 x i8], [1000 x i8]* %30, i64 0, i64 0
  %1054 = call i8* @getcwd(i8* %1053, i64 999) #7
  call void (i32, i8*, ...) @Malfunction(i32 420, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.337, i64 0, i64 0), i8* %1052, i8* %1054)
  br label %1055

1055:                                             ; preds = %1051, %1047
  %1056 = load i8*, i8** @zFile, align 8
  %1057 = call i64 @strlen(i8* %1056) #8
  %1058 = sub i64 %1057, 1
  %1059 = trunc i64 %1058 to i32
  store i32 %1059, i32* %3, align 4
  br label %1060

1060:                                             ; preds = %1074, %1055
  %1061 = load i32, i32* %3, align 4
  %1062 = icmp sge i32 %1061, 0
  br i1 %1062, label %1063, label %1071

1063:                                             ; preds = %1060
  %1064 = load i8*, i8** @zFile, align 8
  %1065 = load i32, i32* %3, align 4
  %1066 = sext i32 %1065 to i64
  %1067 = getelementptr inbounds i8, i8* %1064, i64 %1066
  %1068 = load i8, i8* %1067, align 1
  %1069 = sext i8 %1068 to i32
  %1070 = icmp ne i32 %1069, 47
  br label %1071

1071:                                             ; preds = %1063, %1060
  %1072 = phi i1 [ false, %1060 ], [ %1070, %1063 ]
  br i1 %1072, label %1073, label %1077

1073:                                             ; preds = %1071
  br label %1074

1074:                                             ; preds = %1073
  %1075 = load i32, i32* %3, align 4
  %1076 = add nsw i32 %1075, -1
  store i32 %1076, i32* %3, align 4
  br label %1060

1077:                                             ; preds = %1071
  %1078 = load i8*, i8** @zFile, align 8
  %1079 = load i32, i32* %3, align 4
  %1080 = add nsw i32 %1079, 1
  %1081 = sext i32 %1080 to i64
  %1082 = getelementptr inbounds i8, i8* %1078, i64 %1081
  store i8* %1082, i8** %29, align 8
  %1083 = call i32 @putenv(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.397, i64 0, i64 0)) #7
  store i32 0, i32* %3, align 4
  br label %1084

1084:                                             ; preds = %1108, %1077
  %1085 = load i32, i32* %3, align 4
  %1086 = icmp slt i32 %1085, 27
  br i1 %1086, label %1087, label %1111

1087:                                             ; preds = %1084
  %1088 = load i32, i32* %3, align 4
  %1089 = sext i32 %1088 to i64
  %1090 = getelementptr inbounds [27 x %struct.anon.0], [27 x %struct.anon.0]* @cgienv, i64 0, i64 %1089
  %1091 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1090, i32 0, i32 1
  %1092 = load i8**, i8*** %1091, align 8
  %1093 = load i8*, i8** %1092, align 8
  %1094 = icmp ne i8* %1093, null
  br i1 %1094, label %1095, label %1107

1095:                                             ; preds = %1087
  %1096 = load i32, i32* %3, align 4
  %1097 = sext i32 %1096 to i64
  %1098 = getelementptr inbounds [27 x %struct.anon.0], [27 x %struct.anon.0]* @cgienv, i64 0, i64 %1097
  %1099 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1098, i32 0, i32 0
  %1100 = load i8*, i8** %1099, align 16
  %1101 = load i32, i32* %3, align 4
  %1102 = sext i32 %1101 to i64
  %1103 = getelementptr inbounds [27 x %struct.anon.0], [27 x %struct.anon.0]* @cgienv, i64 0, i64 %1102
  %1104 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1103, i32 0, i32 1
  %1105 = load i8**, i8*** %1104, align 8
  %1106 = load i8*, i8** %1105, align 8
  call void @SetEnv(i8* %1100, i8* %1106)
  br label %1107

1107:                                             ; preds = %1095, %1087
  br label %1108

1108:                                             ; preds = %1107
  %1109 = load i32, i32* %3, align 4
  %1110 = add nsw i32 %1109, 1
  store i32 %1110, i32* %3, align 4
  br label %1084

1111:                                             ; preds = %1084
  %1112 = load i32, i32* @useHttps, align 4
  %1113 = icmp ne i32 %1112, 0
  br i1 %1113, label %1114, label %1117

1114:                                             ; preds = %1111
  %1115 = call i32 @putenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.398, i64 0, i64 0)) #7
  %1116 = call i32 @putenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.399, i64 0, i64 0)) #7
  br label %1119

1117:                                             ; preds = %1111
  %1118 = call i32 @putenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.400, i64 0, i64 0)) #7
  br label %1119

1119:                                             ; preds = %1117, %1114
  %1120 = load i8*, i8** @zMethod, align 8
  %1121 = getelementptr inbounds i8, i8* %1120, i64 0
  %1122 = load i8, i8* %1121, align 1
  %1123 = sext i8 %1122 to i32
  %1124 = icmp eq i32 %1123, 80
  br i1 %1124, label %1125, label %1133

1125:                                             ; preds = %1119
  %1126 = call i32 @dup(i32 0) #7
  %1127 = icmp slt i32 %1126, 0
  br i1 %1127, label %1128, label %1129

1128:                                             ; preds = %1125
  call void (i32, i8*, ...) @Malfunction(i32 430, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.401, i64 0, i64 0))
  br label %1129

1129:                                             ; preds = %1128, %1125
  %1130 = call i32 @close(i32 0)
  %1131 = load i8*, i8** @zTmpNam, align 8
  %1132 = call i32 (i8*, i32, ...) @open(i8* %1131, i32 0)
  br label %1133

1133:                                             ; preds = %1129, %1119
  %1134 = load i8*, i8** %29, align 8
  %1135 = call i32 @strncmp(i8* %1134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.402, i64 0, i64 0), i64 4) #8
  %1136 = icmp eq i32 %1135, 0
  br i1 %1136, label %1137, label %1141

1137:                                             ; preds = %1133
  %1138 = load i8*, i8** %29, align 8
  %1139 = load i8*, i8** %29, align 8
  %1140 = call i32 (i8*, i8*, ...) @execl(i8* %1138, i8* %1139, i8* null) #7
  call void @exit(i32 0) #9
  unreachable

1141:                                             ; preds = %1133
  %1142 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 0
  %1143 = call i32 @pipe(i32* %1142) #7
  %1144 = icmp ne i32 %1143, 0
  br i1 %1144, label %1145, label %1146

1145:                                             ; preds = %1141
  call void (i32, i8*, ...) @Malfunction(i32 440, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.403, i64 0, i64 0))
  br label %1146

1146:                                             ; preds = %1145, %1141
  %1147 = call i32 @fork() #7
  %1148 = icmp eq i32 %1147, 0
  br i1 %1148, label %1149, label %1177

1149:                                             ; preds = %1146
  %1150 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 0
  %1151 = load i32, i32* %1150, align 4
  %1152 = call i32 @close(i32 %1151)
  %1153 = call i32 @close(i32 1)
  %1154 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 1
  %1155 = load i32, i32* %1154, align 4
  %1156 = call i32 @dup(i32 %1155) #7
  %1157 = icmp ne i32 %1156, 1
  br i1 %1157, label %1158, label %1161

1158:                                             ; preds = %1149
  %1159 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 1
  %1160 = load i32, i32* %1159, align 4
  call void (i32, i8*, ...) @Malfunction(i32 450, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.404, i64 0, i64 0), i32 %1160)
  br label %1161

1161:                                             ; preds = %1158, %1149
  %1162 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 1
  %1163 = load i32, i32* %1162, align 4
  %1164 = call i32 @close(i32 %1163)
  store i32 3, i32* %3, align 4
  br label %1165

1165:                                             ; preds = %1170, %1161
  %1166 = load i32, i32* %3, align 4
  %1167 = call i32 @close(i32 %1166)
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %1169, label %1173

1169:                                             ; preds = %1165
  br label %1170

1170:                                             ; preds = %1169
  %1171 = load i32, i32* %3, align 4
  %1172 = add nsw i32 %1171, 1
  store i32 %1172, i32* %3, align 4
  br label %1165

1173:                                             ; preds = %1165
  %1174 = load i8*, i8** %29, align 8
  %1175 = load i8*, i8** %29, align 8
  %1176 = call i32 (i8*, i8*, ...) @execl(i8* %1174, i8* %1175, i8* null) #7
  call void @exit(i32 0) #9
  unreachable

1177:                                             ; preds = %1146
  %1178 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 1
  %1179 = load i32, i32* %1178, align 4
  %1180 = call i32 @close(i32 %1179)
  %1181 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 0
  %1182 = load i32, i32* %1181, align 4
  %1183 = call %struct._IO_FILE* @fdopen(i32 %1182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.405, i64 0, i64 0)) #7
  store %struct._IO_FILE* %1183, %struct._IO_FILE** %8, align 8
  %1184 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %1185 = icmp eq %struct._IO_FILE* %1184, null
  br i1 %1185, label %1186, label %1187

1186:                                             ; preds = %1177
  call void @CgiError()
  br label %1189

1187:                                             ; preds = %1177
  %1188 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  call void @CgiHandleReply(%struct._IO_FILE* %1188)
  br label %1189

1189:                                             ; preds = %1187, %1186
  br label %1220

1190:                                             ; preds = %1037, %1032
  %1191 = load i32, i32* @lenFile, align 4
  %1192 = icmp sgt i32 %1191, 5
  br i1 %1192, label %1193, label %1204

1193:                                             ; preds = %1190
  %1194 = load i8*, i8** @zFile, align 8
  %1195 = load i32, i32* @lenFile, align 4
  %1196 = sub nsw i32 %1195, 5
  %1197 = sext i32 %1196 to i64
  %1198 = getelementptr inbounds i8, i8* %1194, i64 %1197
  %1199 = call i32 @strcmp(i8* %1198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.406, i64 0, i64 0)) #8
  %1200 = icmp eq i32 %1199, 0
  br i1 %1200, label %1201, label %1204

1201:                                             ; preds = %1193
  %1202 = load i8*, i8** @zFile, align 8
  %1203 = load i8*, i8** @zScript, align 8
  call void @SendScgiRequest(i8* %1202, i8* %1203)
  br label %1219

1204:                                             ; preds = %1193, %1190
  %1205 = load i8*, i8** @zRealScript, align 8
  %1206 = call i32 @countSlashes(i8* %1205)
  %1207 = load i8*, i8** @zScript, align 8
  %1208 = call i32 @countSlashes(i8* %1207)
  %1209 = icmp ne i32 %1206, %1208
  br i1 %1209, label %1210, label %1211

1210:                                             ; preds = %1204
  call void @NotFound(i32 460)
  br label %1218

1211:                                             ; preds = %1204
  %1212 = load i8*, i8** @zFile, align 8
  %1213 = load i32, i32* @lenFile, align 4
  %1214 = call i32 @SendFile(i8* %1212, i32 %1213, %struct.stat* %7)
  %1215 = icmp ne i32 %1214, 0
  br i1 %1215, label %1216, label %1217

1216:                                             ; preds = %1211
  br label %1227

1217:                                             ; preds = %1211
  br label %1218

1218:                                             ; preds = %1217, %1210
  br label %1219

1219:                                             ; preds = %1218, %1201
  br label %1220

1220:                                             ; preds = %1219, %1189
  %1221 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1222 = call i32 @fflush(%struct._IO_FILE* %1221)
  call void @MakeLogEntry(i32 0, i32 0)
  store i32 1, i32* @omitLog, align 4
  %1223 = load i32, i32* @useTimeout, align 4
  %1224 = icmp ne i32 %1223, 0
  br i1 %1224, label %1225, label %1227

1225:                                             ; preds = %1220
  %1226 = call i32 @alarm(i32 30) #7
  br label %1227

1227:                                             ; preds = %845, %959, %1031, %1216, %1225, %1220
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @chdir(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Malfunction(i32 %0, i8* %1, ...) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  call void @StartResponse(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.446, i64 0, i64 0))
  %8 = load i32, i32* %3, align 4
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.447, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @nOut, align 4
  %11 = add nsw i32 %10, %9
  store i32 %11, i32* @nOut, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %17 = call i32 @vprintf(i8* %15, %struct.__va_list_tag* %16)
  %18 = load i32, i32* @nOut, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* @nOut, align 4
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.448, i64 0, i64 0))
  %21 = load i32, i32* @nOut, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @nOut, align 4
  br label %23

23:                                               ; preds = %14, %2
  %24 = load i32, i32* %3, align 4
  call void @MakeLogEntry(i32 0, i32 %24)
  call void @exit(i32 0) #9
  unreachable
}

; Function Attrs: nounwind
declare dso_local i8* @getcwd(i8*, i64) #1

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32, void (i32)*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Timeout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [10 x i8], align 1
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @debugFlag, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %32, label %6

6:                                                ; preds = %1
  %7 = load i8*, i8** @zScript, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %6
  %10 = load i8*, i8** @zScript, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  store i8 57, i8* %16, align 1
  %17 = load i32, i32* %2, align 4
  %18 = sdiv i32 %17, 10
  %19 = srem i32 %18, 10
  %20 = add nsw i32 48, %19
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 1
  store i8 %21, i8* %22, align 1
  %23 = load i32, i32* %2, align 4
  %24 = srem i32 %23, 10
  %25 = add nsw i32 48, %24
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 2
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 3
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %30 = call i8* @strcpy(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @zReplyStatus, i64 0, i64 0), i8* %29) #7
  call void @MakeLogEntry(i32 0, i32 130)
  br label %31

31:                                               ; preds = %15, %9, %6
  call void @exit(i32 0) #9
  unreachable

32:                                               ; preds = %1
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @alarm(i32) #1

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @StrDup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %19

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strlen(i8* %10) #8
  %12 = add i64 %11, 1
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i8* @SafeMalloc(i64 %13)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i8* @strcpy(i8* %15, i8* %16) #7
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %2, align 8
  br label %19

19:                                               ; preds = %9, %8
  %20 = load i8*, i8** %2, align 8
  ret i8* %20
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @GetFirstElement(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i8**, i8*** %5, align 8
  %11 = icmp ne i8** %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i8**, i8*** %5, align 8
  store i8* null, i8** %13, align 8
  br label %14

14:                                               ; preds = %12, %9
  store i8* null, i8** %3, align 8
  br label %88

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %28, %15
  %17 = call i16** @__ctype_b_loc() #10
  %18 = load i16*, i16** %17, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16, i16* %18, i64 %22
  %24 = load i16, i16* %23, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, 8192
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %4, align 8
  br label %16

31:                                               ; preds = %16
  %32 = load i8*, i8** %4, align 8
  store i8* %32, i8** %6, align 8
  br label %33

33:                                               ; preds = %53, %31
  %34 = load i8*, i8** %4, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = call i16** @__ctype_b_loc() #10
  %40 = load i16*, i16** %39, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i16, i16* %40, i64 %44
  %46 = load i16, i16* %45, align 2
  %47 = zext i16 %46 to i32
  %48 = and i32 %47, 8192
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %38, %33
  %52 = phi i1 [ false, %33 ], [ %50, %38 ]
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %4, align 8
  br label %33

56:                                               ; preds = %51
  %57 = load i8*, i8** %4, align 8
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %56
  %61 = load i8*, i8** %4, align 8
  store i8 0, i8* %61, align 1
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %4, align 8
  br label %64

64:                                               ; preds = %76, %60
  %65 = call i16** @__ctype_b_loc() #10
  %66 = load i16*, i16** %65, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i16, i16* %66, i64 %70
  %72 = load i16, i16* %71, align 2
  %73 = zext i16 %72 to i32
  %74 = and i32 %73, 8192
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %64
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %4, align 8
  br label %64

79:                                               ; preds = %64
  br label %80

80:                                               ; preds = %79, %56
  %81 = load i8**, i8*** %5, align 8
  %82 = icmp ne i8** %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i8*, i8** %4, align 8
  %85 = load i8**, i8*** %5, align 8
  store i8* %84, i8** %85, align 8
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i8*, i8** %6, align 8
  store i8* %87, i8** %3, align 8
  br label %88

88:                                               ; preds = %86, %14
  %89 = load i8*, i8** %3, align 8
  ret i8* %89
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @StartResponse(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i64 @time(i64* %3) #7
  %5 = load i32, i32* @statusSent, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %36

8:                                                ; preds = %1
  %9 = load i8*, i8** @zProtocol, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.449, i64 0, i64 0), i8* %9, i8* %10)
  %12 = load i32, i32* @nOut, align 4
  %13 = add nsw i32 %12, %11
  store i32 %13, i32* @nOut, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = call i8* @strncpy(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @zReplyStatus, i64 0, i64 0), i8* %14, i64 3) #7
  store i8 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @zReplyStatus, i64 0, i64 3), align 1
  %16 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @zReplyStatus, i64 0, i64 0), align 1
  %17 = sext i8 %16 to i32
  %18 = icmp sge i32 %17, 52
  br i1 %18, label %19, label %20

19:                                               ; preds = %8
  store i32 1, i32* @closeConnection, align 4
  br label %20

20:                                               ; preds = %19, %8
  %21 = load i32, i32* @closeConnection, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.450, i64 0, i64 0))
  %25 = load i32, i32* @nOut, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* @nOut, align 4
  br label %31

27:                                               ; preds = %20
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.451, i64 0, i64 0))
  %29 = load i32, i32* @nOut, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* @nOut, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @DateTag(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.452, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* @nOut, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* @nOut, align 4
  store i32 1, i32* @statusSent, align 4
  br label %36

36:                                               ; preds = %31, %7
  ret void
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MakeLogEntry(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.tm*, align 8
  %8 = alloca %struct.rusage, align 8
  %9 = alloca %struct.rusage, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [200 x i8], align 16
  %15 = alloca [500 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %16 = load i8*, i8** @zTmpNam, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i8*, i8** @zTmpNam, align 8
  %20 = call i32 @unlink(i8* %19) #7
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i8*, i8** @zLogFile, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %142

24:                                               ; preds = %21
  %25 = load i32, i32* @omitLog, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %142, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** @zRemoteUser, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i8*, i8** @zRemoteUser, align 8
  br label %33

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i8* [ %31, %30 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), %32 ]
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** @zScript, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), i8** @zScript, align 8
  br label %38

38:                                               ; preds = %37, %33
  %39 = load i8*, i8** @zRealScript, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), i8** @zRealScript, align 8
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i8*, i8** @zRemoteAddr, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), i8** @zRemoteAddr, align 8
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i8*, i8** @zHttpHost, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), i8** @zHttpHost, align 8
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i8*, i8** @zReferer, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), i8** @zReferer, align 8
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i8*, i8** @zAgent, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), i8** @zAgent, align 8
  br label %58

58:                                               ; preds = %57, %54
  %59 = call i32 @gettimeofday(%struct.timeval* %6, i8* null) #7
  %60 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %61 = call %struct.tm* @localtime(i64* %60) #7
  store %struct.tm* %61, %struct.tm** %7, align 8
  %62 = getelementptr inbounds [200 x i8], [200 x i8]* %14, i64 0, i64 0
  %63 = load %struct.tm*, %struct.tm** %7, align 8
  %64 = call i64 @strftime(i8* %62, i64 200, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.454, i64 0, i64 0), %struct.tm* %63) #7
  %65 = getelementptr inbounds [500 x i8], [500 x i8]* %15, i64 0, i64 0
  %66 = load i8*, i8** @zLogFile, align 8
  %67 = load %struct.tm*, %struct.tm** %7, align 8
  %68 = call i64 @strftime(i8* %65, i64 500, i8* %66, %struct.tm* %67) #7
  store i64 %68, i64* %13, align 8
  %69 = load i64, i64* %13, align 8
  %70 = icmp ugt i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %58
  %72 = load i64, i64* %13, align 8
  %73 = icmp ult i64 %72, 498
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = getelementptr inbounds [500 x i8], [500 x i8]* %15, i64 0, i64 0
  store i8* %75, i8** %12, align 8
  br label %78

76:                                               ; preds = %71, %58
  %77 = load i8*, i8** @zLogFile, align 8
  store i8* %77, i8** %12, align 8
  br label %78

78:                                               ; preds = %76, %74
  %79 = call i32 @waitpid(i32 -1, i32* %10, i32 1)
  %80 = call i32 @getrusage(i32 0, %struct.rusage* %8) #7
  %81 = call i32 @getrusage(i32 -1, %struct.rusage* %9) #7
  %82 = load i8*, i8** %12, align 8
  %83 = call %struct._IO_FILE* @fopen(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.455, i64 0, i64 0))
  store %struct._IO_FILE* %83, %struct._IO_FILE** %5, align 8
  %84 = icmp ne %struct._IO_FILE* %83, null
  br i1 %84, label %85, label %141

85:                                               ; preds = %78
  %86 = getelementptr inbounds [200 x i8], [200 x i8]* %14, i64 0, i64 0
  %87 = load %struct.tm*, %struct.tm** %7, align 8
  %88 = call i64 @strftime(i8* %86, i64 200, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.454, i64 0, i64 0), %struct.tm* %87) #7
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %90 = getelementptr inbounds [200 x i8], [200 x i8]* %14, i64 0, i64 0
  %91 = load i8*, i8** @zRemoteAddr, align 8
  %92 = load i8*, i8** @zHttp, align 8
  %93 = load i8*, i8** @zHttpHost, align 8
  %94 = call i8* @Escape(i8* %93)
  %95 = load i8*, i8** @zScript, align 8
  %96 = call i8* @Escape(i8* %95)
  %97 = load i8*, i8** @zReferer, align 8
  %98 = call i8* @Escape(i8* %97)
  %99 = load i32, i32* @nIn, align 4
  %100 = load i32, i32* @nOut, align 4
  %101 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 0
  %102 = call i64 @tvms(%struct.timeval* %101)
  %103 = call i64 @tvms(%struct.timeval* getelementptr inbounds (%struct.rusage, %struct.rusage* @priorSelf, i32 0, i32 0))
  %104 = sub nsw i64 %102, %103
  %105 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 1
  %106 = call i64 @tvms(%struct.timeval* %105)
  %107 = call i64 @tvms(%struct.timeval* getelementptr inbounds (%struct.rusage, %struct.rusage* @priorSelf, i32 0, i32 1))
  %108 = sub nsw i64 %106, %107
  %109 = getelementptr inbounds %struct.rusage, %struct.rusage* %9, i32 0, i32 0
  %110 = call i64 @tvms(%struct.timeval* %109)
  %111 = call i64 @tvms(%struct.timeval* getelementptr inbounds (%struct.rusage, %struct.rusage* @priorChild, i32 0, i32 0))
  %112 = sub nsw i64 %110, %111
  %113 = getelementptr inbounds %struct.rusage, %struct.rusage* %9, i32 0, i32 1
  %114 = call i64 @tvms(%struct.timeval* %113)
  %115 = call i64 @tvms(%struct.timeval* getelementptr inbounds (%struct.rusage, %struct.rusage* @priorChild, i32 0, i32 1))
  %116 = sub nsw i64 %114, %115
  %117 = call i64 @tvms(%struct.timeval* %6)
  %118 = call i64 @tvms(%struct.timeval* @beginTime)
  %119 = sub nsw i64 %117, %118
  %120 = load i32, i32* @nRequest, align 4
  %121 = load i8*, i8** @zAgent, align 8
  %122 = call i8* @Escape(i8* %121)
  %123 = load i8*, i8** %11, align 8
  %124 = call i8* @Escape(i8* %123)
  %125 = load i8*, i8** @zHttp, align 8
  %126 = call i64 @strlen(i8* %125) #8
  %127 = load i8*, i8** @zHttpHost, align 8
  %128 = call i64 @strlen(i8* %127) #8
  %129 = add i64 %126, %128
  %130 = load i8*, i8** @zRealScript, align 8
  %131 = call i64 @strlen(i8* %130) #8
  %132 = add i64 %129, %131
  %133 = add i64 %132, 3
  %134 = trunc i64 %133 to i32
  %135 = load i32, i32* %4, align 4
  %136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.456, i64 0, i64 0), i8* %90, i8* %91, i8* %92, i8* %94, i8* %96, i8* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @zReplyStatus, i64 0, i64 0), i32 %99, i32 %100, i64 %104, i64 %108, i64 %112, i64 %116, i64 %119, i32 %120, i8* %122, i8* %124, i32 %134, i32 %135)
  %137 = bitcast %struct.rusage* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.rusage* @priorSelf to i8*), i8* align 8 %137, i64 144, i1 false)
  %138 = bitcast %struct.rusage* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.rusage* @priorChild to i8*), i8* align 8 %138, i64 144, i1 false)
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %140 = call i32 @fclose(%struct._IO_FILE* %139)
  store i32 0, i32* @nOut, align 4
  store i32 0, i32* @nIn, align 4
  br label %141

141:                                              ; preds = %85, %78
  br label %142

142:                                              ; preds = %141, %24, %21
  %143 = load i32, i32* @closeConnection, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load i32, i32* %3, align 4
  call void @exit(i32 %146) #9
  unreachable

147:                                              ; preds = %142
  store i32 0, i32* @statusSent, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NotFound(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @StartResponse(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.457, i64 0, i64 0))
  %3 = load i32, i32* %2, align 4
  %4 = load i8*, i8** @zScript, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([183 x i8], [183 x i8]* @.str.458, i64 0, i64 0), i32 %3, i8* %4)
  %6 = load i32, i32* @nOut, align 4
  %7 = add nsw i32 %6, %5
  store i32 %7, i32* @nOut, align 4
  %8 = load i32, i32* %2, align 4
  call void @MakeLogEntry(i32 0, i32 %8)
  call void @exit(i32 0) #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RemoveNewline(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %29

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %24, %6
  %8 = load i8*, i8** %2, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = load i8*, i8** %2, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 10
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i8*, i8** %2, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 13
  br label %22

22:                                               ; preds = %17, %12, %7
  %23 = phi i1 [ false, %12 ], [ false, %7 ], [ %21, %17 ]
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load i8*, i8** %2, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %2, align 8
  br label %7

27:                                               ; preds = %22
  %28 = load i8*, i8** %2, align 8
  store i8 0, i8* %28, align 1
  br label %29

29:                                               ; preds = %27, %5
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare dso_local i8* @strstr(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Forbidden(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @StartResponse(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.459, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.460, i64 0, i64 0))
  %4 = load i32, i32* @nOut, align 4
  %5 = add nsw i32 %4, %3
  store i32 %5, i32* @nOut, align 4
  store i32 1, i32* @closeConnection, align 4
  %6 = load i32, i32* %2, align 4
  call void @MakeLogEntry(i32 0, i32 %6)
  call void @exit(i32 0) #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @StrAppend(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %55

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** %7, align 8
  %21 = call i8* @StrDup(i8* %20)
  store i8* %21, i8** %4, align 8
  br label %55

22:                                               ; preds = %16
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strlen(i8* %23) #8
  store i64 %24, i64* %10, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strlen(i8* %25) #8
  store i64 %26, i64* %11, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @strlen(i8* %27) #8
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = add i64 %29, %30
  %32 = load i64, i64* %12, align 8
  %33 = add i64 %31, %32
  %34 = add i64 %33, 1
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i8* @SafeMalloc(i64 %35)
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* %10, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %37, i8* align 1 %38, i64 %39, i1 false)
  %40 = load i8*, i8** %5, align 8
  call void @free(i8* %40) #7
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* %11, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %43, i8* align 1 %44, i64 %45, i1 false)
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = add i64 %47, %48
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %12, align 8
  %53 = add i64 %52, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %50, i8* align 1 %51, i64 %53, i1 false)
  %54 = load i8*, i8** %8, align 8
  store i8* %54, i8** %4, align 8
  br label %55

55:                                               ; preds = %22, %19, %15
  %56 = load i8*, i8** %4, align 8
  ret i8* %56
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sanitizeString(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %56, %1
  %6 = load i8*, i8** %2, align 8
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %59

9:                                                ; preds = %5
  %10 = load i8*, i8** %2, align 8
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [127 x i8], [129 x i8] }>* @allowedInName to [256 x i8]*), i64 0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %56, label %16

16:                                               ; preds = %9
  %17 = load i8*, i8** %2, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 37
  br i1 %20, label %21, label %52

21:                                               ; preds = %16
  %22 = load i8*, i8** %2, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %21
  %28 = load i8*, i8** %2, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %27
  store i32 3, i32* %4, align 4
  br label %34

34:                                               ; preds = %48, %33
  %35 = load i8*, i8** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sub nsw i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  store i8 %39, i8* %44, align 1
  %45 = sext i8 %39 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %34

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51, %27, %21, %16
  %53 = load i8*, i8** %2, align 8
  store i8 95, i8* %53, align 1
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %9
  %57 = load i8*, i8** %2, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %2, align 8
  br label %5

59:                                               ; preds = %5
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @SafeMalloc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call noalias i8* @malloc(i64 %4) #7
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i8* @strcpy(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @zReplyStatus, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.462, i64 0, i64 0)) #7
  call void @MakeLogEntry(i32 1, i32 100)
  call void @exit(i32 1) #9
  unreachable

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  ret i8* %11
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

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Redirect(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %12 [
    i32 301, label %10
    i32 308, label %11
  ]

10:                                               ; preds = %4
  call void @StartResponse(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.463, i64 0, i64 0))
  br label %13

11:                                               ; preds = %4
  call void @StartResponse(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.464, i64 0, i64 0))
  br label %13

12:                                               ; preds = %4
  call void @StartResponse(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.465, i64 0, i64 0))
  br label %13

13:                                               ; preds = %12, %11, %10
  %14 = load i8*, i8** @zServerPort, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = load i8*, i8** @zServerPort, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load i8*, i8** @zServerPort, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.378, i64 0, i64 0)) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22, %16, %13
  %27 = load i8*, i8** @zHttp, align 8
  %28 = load i8*, i8** @zServerName, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** @zQuerySuffix, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.466, i64 0, i64 0), i8* %27, i8* %28, i8* %29, i8* %30)
  %32 = load i32, i32* @nOut, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* @nOut, align 4
  br label %43

34:                                               ; preds = %22
  %35 = load i8*, i8** @zHttp, align 8
  %36 = load i8*, i8** @zServerName, align 8
  %37 = load i8*, i8** @zServerPort, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** @zQuerySuffix, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.467, i64 0, i64 0), i8* %35, i8* %36, i8* %37, i8* %38, i8* %39)
  %41 = load i32, i32* @nOut, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* @nOut, align 4
  br label %43

43:                                               ; preds = %34, %26
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.468, i64 0, i64 0))
  %48 = load i32, i32* @nOut, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* @nOut, align 4
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.469, i64 0, i64 0))
  %51 = load i32, i32* @nOut, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* @nOut, align 4
  %53 = load i32, i32* %8, align 4
  call void @MakeLogEntry(i32 0, i32 %53)
  br label %54

54:                                               ; preds = %46, %43
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %56 = call i32 @fflush(%struct._IO_FILE* %55)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckBasicAuthorization(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [2000 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.470, i64 0, i64 0), i8** %5, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call %struct._IO_FILE* @fopen(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.405, i64 0, i64 0))
  store %struct._IO_FILE* %12, %struct._IO_FILE** %4, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %14 = icmp eq %struct._IO_FILE* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  call void @NotFound(i32 150)
  store i32 0, i32* %2, align 4
  br label %124

16:                                               ; preds = %1
  %17 = load i8*, i8** @zAuthArg, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i8*, i8** @zAuthArg, align 8
  call void @Decode64(i8* %20)
  br label %21

21:                                               ; preds = %19, %16
  br label %22

22:                                               ; preds = %119, %68, %60, %44, %37, %21
  %23 = getelementptr inbounds [2000 x i8], [2000 x i8]* %8, i64 0, i64 0
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %25 = call i8* @fgets(i8* %23, i32 2000, %struct._IO_FILE* %24)
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %120

27:                                               ; preds = %22
  %28 = getelementptr inbounds [2000 x i8], [2000 x i8]* %8, i64 0, i64 0
  %29 = call i8* @GetFirstElement(i8* %28, i8** %10)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %9, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %27
  br label %22

38:                                               ; preds = %32
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 35
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %22

45:                                               ; preds = %38
  %46 = load i8*, i8** %10, align 8
  call void @RemoveNewline(i8* %46)
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.471, i64 0, i64 0)) #8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i8*, i8** %10, align 8
  %52 = call i8* @StrDup(i8* %51)
  store i8* %52, i8** %5, align 8
  br label %119

53:                                               ; preds = %45
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.472, i64 0, i64 0)) #8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %83

57:                                               ; preds = %53
  %58 = load i8*, i8** @zAuthArg, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %22

61:                                               ; preds = %57
  %62 = load i8*, i8** %10, align 8
  %63 = call i8* @GetFirstElement(i8* %62, i8** %10)
  store i8* %63, i8** %7, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i8* @GetFirstElement(i8* %64, i8** %10)
  store i8* %65, i8** %6, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %22

69:                                               ; preds = %61
  %70 = load i8*, i8** @zAuthArg, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load i8*, i8** @zAuthArg, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @strcmp(i8* %73, i8* %74) #8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i8*, i8** %7, align 8
  %79 = call i8* @StrDup(i8* %78)
  store i8* %79, i8** @zRemoteUser, align 8
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %81 = call i32 @fclose(%struct._IO_FILE* %80)
  store i32 1, i32* %2, align 4
  br label %124

82:                                               ; preds = %72, %69
  br label %118

83:                                               ; preds = %53
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.473, i64 0, i64 0)) #8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load i32, i32* @useHttps, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  call void @NotFound(i32 160)
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %92 = call i32 @fclose(%struct._IO_FILE* %91)
  store i32 0, i32* %2, align 4
  br label %124

93:                                               ; preds = %87
  br label %117

94:                                               ; preds = %83
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.474, i64 0, i64 0)) #8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = load i32, i32* @useHttps, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.420, i64 0, i64 0), i8** @zHttp, align 8
  %102 = load i8*, i8** @zScript, align 8
  call void @Redirect(i8* %102, i32 301, i32 1, i32 170)
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %104 = call i32 @fclose(%struct._IO_FILE* %103)
  store i32 0, i32* %2, align 4
  br label %124

105:                                              ; preds = %98
  br label %116

106:                                              ; preds = %94
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.475, i64 0, i64 0)) #8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %112 = call i32 @fclose(%struct._IO_FILE* %111)
  store i32 1, i32* %2, align 4
  br label %124

113:                                              ; preds = %106
  call void @NotFound(i32 180)
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %115 = call i32 @fclose(%struct._IO_FILE* %114)
  store i32 0, i32* %2, align 4
  br label %124

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %116, %93
  br label %118

118:                                              ; preds = %117, %82
  br label %119

119:                                              ; preds = %118, %50
  br label %22

120:                                              ; preds = %22
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %122 = call i32 @fclose(%struct._IO_FILE* %121)
  %123 = load i8*, i8** %5, align 8
  call void @NotAuthorized(i8* %123)
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %120, %113, %110, %101, %90, %77, %15
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CgiScriptWritable() #0 {
  call void @StartResponse(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.478, i64 0, i64 0))
  %1 = load i8*, i8** @zRealScript, align 8
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.479, i64 0, i64 0), i8* %1)
  %3 = load i32, i32* @nOut, align 4
  %4 = add nsw i32 %3, %2
  store i32 %4, i32* @nOut, align 4
  call void @MakeLogEntry(i32 0, i32 140)
  call void @exit(i32 0) #9
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @putenv(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetEnv(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), i8** %4, align 8
  br label %10

10:                                               ; preds = %9, %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.508, i64 0, i64 0), i64 4) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), i8** %4, align 8
  br label %15

15:                                               ; preds = %14, %10
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strlen(i8* %16) #8
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strlen(i8* %18) #8
  %20 = add i64 %17, %19
  %21 = add i64 %20, 2
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i8* @SafeMalloc(i64 %22)
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 (i8*, i8*, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.509, i64 0, i64 0), i8* %25, i8* %26) #7
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @putenv(i8* %28) #7
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

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CgiError() #0 {
  call void @StartResponse(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.510, i64 0, i64 0))
  %1 = load i8*, i8** @zScript, align 8
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([168 x i8], [168 x i8]* @.str.511, i64 0, i64 0), i8* %1)
  %3 = load i32, i32* @nOut, align 4
  %4 = add nsw i32 %3, %2
  store i32 %4, i32* @nOut, align 4
  call void @MakeLogEntry(i32 0, i32 120)
  call void @exit(i32 0) #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CgiHandleReply(%struct._IO_FILE* %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [1000 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @useTimeout, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @alarm(i32 0) #7
  br label %18

18:                                               ; preds = %16, %1
  br label %19

19:                                               ; preds = %149, %18
  %20 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 0
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %22 = call i8* @fgets(i8* %20, i32 1000, %struct._IO_FILE* %21)
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = call i16** @__ctype_b_loc() #10
  %26 = load i16*, i16** %25, align 8
  %27 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 0
  %28 = load i8, i8* %27, align 16
  %29 = zext i8 %28 to i32
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i16, i16* %26, i64 %30
  %32 = load i16, i16* %31, align 2
  %33 = zext i16 %32 to i32
  %34 = and i32 %33, 8192
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %24, %19
  %38 = phi i1 [ false, %19 ], [ %36, %24 ]
  br i1 %38, label %39, label %150

39:                                               ; preds = %37
  %40 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 0
  %41 = call i32 @strncasecmp(i8* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.512, i64 0, i64 0), i64 9) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %39
  call void @StartResponse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.513, i64 0, i64 0))
  %44 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 0
  call void @RemoveNewline(i8* %44)
  %45 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 10
  store i8* %45, i8** %9, align 8
  br label %46

46:                                               ; preds = %58, %43
  %47 = call i16** @__ctype_b_loc() #10
  %48 = load i16*, i16** %47, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i16, i16* %48, i64 %52
  %54 = load i16, i16* %53, align 2
  %55 = zext i16 %54 to i32
  %56 = and i32 %55, 8192
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %9, align 8
  br label %46

61:                                               ; preds = %46
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.514, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @nOut, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* @nOut, align 4
  store i32 0, i32* @rangeEnd, align 4
  br label %149

66:                                               ; preds = %39
  %67 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 0
  %68 = call i32 @strncasecmp(i8* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.515, i64 0, i64 0), i64 7) #8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %106

70:                                               ; preds = %66
  store i32 7, i32* %12, align 4
  br label %71

71:                                               ; preds = %86, %70
  %72 = call i16** @__ctype_b_loc() #10
  %73 = load i16*, i16** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i16, i16* %73, i64 %79
  %81 = load i16, i16* %80, align 2
  %82 = zext i16 %81 to i32
  %83 = and i32 %82, 8192
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %71

89:                                               ; preds = %71
  %90 = load i8*, i8** @zProtocol, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 %92
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.516, i64 0, i64 0), i8* %90, i8* %93)
  %95 = load i32, i32* @nOut, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* @nOut, align 4
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 %98
  %100 = call i8* @strncpy(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @zReplyStatus, i64 0, i64 0), i8* %99, i64 3) #7
  store i8 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @zReplyStatus, i64 0, i64 3), align 1
  %101 = call i32 @atoi(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @zReplyStatus, i64 0, i64 0)) #8
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 200
  br i1 %103, label %104, label %105

104:                                              ; preds = %89
  store i32 0, i32* @rangeEnd, align 4
  br label %105

105:                                              ; preds = %104, %89
  store i32 1, i32* @statusSent, align 4
  br label %148

106:                                              ; preds = %66
  %107 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 0
  %108 = call i32 @strncasecmp(i8* %107, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.349, i64 0, i64 0), i64 15) #8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  store i32 1, i32* %3, align 4
  %111 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 0
  %112 = getelementptr inbounds i8, i8* %111, i64 15
  %113 = call i32 @atoi(i8* %112) #8
  store i32 %113, i32* %4, align 4
  br label %147

114:                                              ; preds = %106
  %115 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 0
  %116 = call i64 @strlen(i8* %115) #8
  store i64 %116, i64* %13, align 8
  %117 = load i64, i64* %5, align 8
  %118 = load i64, i64* %13, align 8
  %119 = add i64 %117, %118
  %120 = load i64, i64* %6, align 8
  %121 = icmp uge i64 %119, %120
  br i1 %121, label %122, label %138

122:                                              ; preds = %114
  %123 = load i64, i64* %6, align 8
  %124 = load i64, i64* %13, align 8
  %125 = mul i64 %124, 2
  %126 = add i64 %123, %125
  %127 = load i64, i64* %6, align 8
  %128 = add i64 %127, %126
  store i64 %128, i64* %6, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = load i64, i64* %6, align 8
  %131 = add i64 %130, 1
  %132 = call i8* @realloc(i8* %129, i64 %131) #7
  store i8* %132, i8** %7, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = icmp eq i8* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %122
  %136 = load i64, i64* %6, align 8
  call void (i32, i8*, ...) @Malfunction(i32 600, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.517, i64 0, i64 0), i64 %136)
  br label %137

137:                                              ; preds = %135, %122
  br label %138

138:                                              ; preds = %137, %114
  %139 = load i8*, i8** %7, align 8
  %140 = load i64, i64* %5, align 8
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  %142 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 0
  %143 = load i64, i64* %13, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %141, i8* align 16 %142, i64 %143, i1 false)
  %144 = load i64, i64* %13, align 8
  %145 = load i64, i64* %5, align 8
  %146 = add i64 %145, %144
  store i64 %146, i64* %5, align 8
  br label %147

147:                                              ; preds = %138, %110
  br label %148

148:                                              ; preds = %147, %105
  br label %149

149:                                              ; preds = %148, %61
  br label %19

150:                                              ; preds = %37
  %151 = load i32, i32* @rangeEnd, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %178

153:                                              ; preds = %150
  %154 = load i32, i32* %3, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %178

156:                                              ; preds = %153
  %157 = load i32, i32* @rangeStart, align 4
  %158 = load i32, i32* %4, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %178

160:                                              ; preds = %156
  call void @StartResponse(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.518, i64 0, i64 0))
  %161 = load i32, i32* @rangeEnd, align 4
  %162 = load i32, i32* %4, align 4
  %163 = icmp sge i32 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = load i32, i32* %4, align 4
  %166 = sub nsw i32 %165, 1
  store i32 %166, i32* @rangeEnd, align 4
  br label %167

167:                                              ; preds = %164, %160
  %168 = load i32, i32* @rangeStart, align 4
  %169 = load i32, i32* @rangeEnd, align 4
  %170 = load i32, i32* %4, align 4
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.519, i64 0, i64 0), i32 %168, i32 %169, i32 %170)
  %172 = load i32, i32* @nOut, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* @nOut, align 4
  %174 = load i32, i32* @rangeEnd, align 4
  %175 = add nsw i32 %174, 1
  %176 = load i32, i32* @rangeStart, align 4
  %177 = sub nsw i32 %175, %176
  store i32 %177, i32* %4, align 4
  br label %179

178:                                              ; preds = %156, %153, %150
  call void @StartResponse(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.520, i64 0, i64 0))
  br label %179

179:                                              ; preds = %178, %167
  %180 = load i64, i64* %5, align 8
  %181 = icmp ugt i64 %180, 0
  br i1 %181, label %182, label %193

182:                                              ; preds = %179
  %183 = load i8*, i8** %7, align 8
  %184 = load i64, i64* %5, align 8
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  store i8 0, i8* %185, align 1
  %186 = load i8*, i8** %7, align 8
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.391, i64 0, i64 0), i8* %186)
  %188 = load i64, i64* %5, align 8
  %189 = load i32, i32* @nOut, align 4
  %190 = sext i32 %189 to i64
  %191 = add i64 %190, %188
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* @nOut, align 4
  store i64 0, i64* %5, align 8
  br label %193

193:                                              ; preds = %182, %179
  %194 = load i32, i32* %10, align 4
  %195 = icmp eq i32 %194, 304
  br i1 %195, label %196, label %200

196:                                              ; preds = %193
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.521, i64 0, i64 0))
  %198 = load i32, i32* @nOut, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* @nOut, align 4
  br label %260

200:                                              ; preds = %193
  %201 = load i32, i32* %3, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %200
  %204 = load i32, i32* %4, align 4
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.522, i64 0, i64 0), i32 %204)
  %206 = load i32, i32* @nOut, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* @nOut, align 4
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %210 = load i32, i32* %4, align 4
  %211 = load i32, i32* @rangeStart, align 4
  call void @xferBytes(%struct._IO_FILE* %208, %struct._IO_FILE* %209, i32 %210, i32 %211)
  br label %259

212:                                              ; preds = %200
  br label %213

213:                                              ; preds = %234, %212
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %215 = call i32 @getc(%struct._IO_FILE* %214)
  store i32 %215, i32* %8, align 4
  %216 = icmp ne i32 %215, -1
  br i1 %216, label %217, label %241

217:                                              ; preds = %213
  %218 = load i64, i64* %5, align 8
  %219 = load i64, i64* %6, align 8
  %220 = icmp uge i64 %218, %219
  br i1 %220, label %221, label %234

221:                                              ; preds = %217
  %222 = load i64, i64* %6, align 8
  %223 = mul i64 %222, 2
  %224 = add i64 %223, 1000
  store i64 %224, i64* %6, align 8
  %225 = load i8*, i8** %7, align 8
  %226 = load i64, i64* %6, align 8
  %227 = add i64 %226, 1
  %228 = call i8* @realloc(i8* %225, i64 %227) #7
  store i8* %228, i8** %7, align 8
  %229 = load i8*, i8** %7, align 8
  %230 = icmp eq i8* %229, null
  br i1 %230, label %231, label %233

231:                                              ; preds = %221
  %232 = load i64, i64* %6, align 8
  call void (i32, i8*, ...) @Malfunction(i32 610, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.517, i64 0, i64 0), i64 %232)
  br label %233

233:                                              ; preds = %231, %221
  br label %234

234:                                              ; preds = %233, %217
  %235 = load i32, i32* %8, align 4
  %236 = trunc i32 %235 to i8
  %237 = load i8*, i8** %7, align 8
  %238 = load i64, i64* %5, align 8
  %239 = add i64 %238, 1
  store i64 %239, i64* %5, align 8
  %240 = getelementptr inbounds i8, i8* %237, i64 %238
  store i8 %236, i8* %240, align 1
  br label %213

241:                                              ; preds = %213
  %242 = load i64, i64* %5, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %254

244:                                              ; preds = %241
  %245 = load i8*, i8** %7, align 8
  %246 = load i64, i64* %5, align 8
  %247 = getelementptr inbounds i8, i8* %245, i64 %246
  store i8 0, i8* %247, align 1
  %248 = load i64, i64* %5, align 8
  %249 = trunc i64 %248 to i32
  %250 = load i8*, i8** %7, align 8
  %251 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.523, i64 0, i64 0), i32 %249, i8* %250)
  %252 = load i32, i32* @nOut, align 4
  %253 = add nsw i32 %252, %251
  store i32 %253, i32* @nOut, align 4
  br label %258

254:                                              ; preds = %241
  %255 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.524, i64 0, i64 0))
  %256 = load i32, i32* @nOut, align 4
  %257 = add nsw i32 %256, %255
  store i32 %257, i32* @nOut, align 4
  br label %258

258:                                              ; preds = %254, %244
  br label %259

259:                                              ; preds = %258, %203
  br label %260

260:                                              ; preds = %259, %196
  %261 = load i8*, i8** %7, align 8
  call void @free(i8* %261) #7
  %262 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %263 = call i32 @fclose(%struct._IO_FILE* %262)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SendScgiRequest(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.addrinfo, align 8
  %15 = alloca %struct.addrinfo*, align 8
  %16 = alloca %struct.addrinfo*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca [1000 x i8], align 16
  %22 = alloca [1000 x i8], align 16
  %23 = alloca i8*, align 8
  %24 = alloca %struct.stat, align 8
  %25 = alloca i32, align 4
  %26 = alloca [1000 x i8], align 16
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 -1, i32* %13, align 4
  store %struct.addrinfo* null, %struct.addrinfo** %15, align 8
  store i64 0, i64* %18, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = call %struct._IO_FILE* @fopen(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.405, i64 0, i64 0))
  store %struct._IO_FILE* %31, %struct._IO_FILE** %5, align 8
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %33 = icmp eq %struct._IO_FILE* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i8*, i8** %3, align 8
  call void (i32, i8*, ...) @Malfunction(i32 700, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.525, i64 0, i64 0), i8* %35)
  br label %36

36:                                               ; preds = %34, %2
  %37 = getelementptr inbounds [1000 x i8], [1000 x i8]* %21, i64 0, i64 0
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %39 = call i8* @fgets(i8* %37, i32 999, %struct._IO_FILE* %38)
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i8*, i8** %3, align 8
  call void (i32, i8*, ...) @Malfunction(i32 701, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.526, i64 0, i64 0), i8* %42)
  br label %43

43:                                               ; preds = %41, %36
  %44 = getelementptr inbounds [1000 x i8], [1000 x i8]* %21, i64 0, i64 0
  %45 = call i32 @strncmp(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.527, i64 0, i64 0), i64 5) #8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i8*, i8** %3, align 8
  call void (i32, i8*, ...) @Malfunction(i32 702, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.528, i64 0, i64 0), i8* %48)
  br label %49

49:                                               ; preds = %47, %43
  %50 = getelementptr inbounds [1000 x i8], [1000 x i8]* %21, i64 0, i64 0
  %51 = getelementptr inbounds i8, i8* %50, i64 5
  store i8* %51, i8** %7, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i8* @GetFirstElement(i8* %52, i8** %7)
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i8* @GetFirstElement(i8* %54, i8** null)
  store i8* %55, i8** %9, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %73, label %58

58:                                               ; preds = %49
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %58
  %65 = load i8*, i8** %9, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67, %64, %58, %49
  %74 = load i8*, i8** %3, align 8
  call void (i32, i8*, ...) @Malfunction(i32 703, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.528, i64 0, i64 0), i8* %74)
  br label %75

75:                                               ; preds = %73, %67
  br label %76

76:                                               ; preds = %118, %107, %99, %93, %86, %75
  %77 = getelementptr inbounds [1000 x i8], [1000 x i8]* %22, i64 0, i64 0
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %79 = call i8* @fgets(i8* %77, i32 999, %struct._IO_FILE* %78)
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %120

81:                                               ; preds = %76
  %82 = getelementptr inbounds [1000 x i8], [1000 x i8]* %22, i64 0, i64 0
  %83 = call i8* @GetFirstElement(i8* %82, i8** %7)
  store i8* %83, i8** %23, align 8
  %84 = load i8*, i8** %23, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %76

87:                                               ; preds = %81
  %88 = load i8*, i8** %23, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 35
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %76

94:                                               ; preds = %87
  %95 = load i8*, i8** %7, align 8
  call void @RemoveNewline(i8* %95)
  %96 = load i8*, i8** %23, align 8
  %97 = call i32 @strcmp(i8* %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.529, i64 0, i64 0)) #8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i8*, i8** %10, align 8
  call void @free(i8* %100) #7
  %101 = load i8*, i8** %7, align 8
  %102 = call i8* @StrDup(i8* %101)
  store i8* %102, i8** %10, align 8
  br label %76

103:                                              ; preds = %94
  %104 = load i8*, i8** %23, align 8
  %105 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.530, i64 0, i64 0)) #8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i8*, i8** %11, align 8
  call void @free(i8* %108) #7
  %109 = load i8*, i8** %7, align 8
  %110 = call i8* @StrDup(i8* %109)
  store i8* %110, i8** %11, align 8
  br label %76

111:                                              ; preds = %103
  %112 = load i8*, i8** %23, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i8*, i8** %7, align 8
  br label %118

117:                                              ; preds = %111
  br label %118

118:                                              ; preds = %117, %115
  %119 = phi i8* [ %116, %115 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), %117 ]
  call void (i32, i8*, ...) @Malfunction(i32 704, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.531, i64 0, i64 0), i8* %112, i8* %119)
  br label %76

120:                                              ; preds = %76
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %122 = call i32 @fclose(%struct._IO_FILE* %121)
  %123 = bitcast %struct.addrinfo* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %123, i8 0, i64 48, i1 false)
  %124 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 1
  store i32 0, i32* %124, align 4
  %125 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 2
  store i32 1, i32* %125, align 8
  %126 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 3
  store i32 6, i32* %126, align 4
  %127 = load i8*, i8** %8, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = call i32 @getaddrinfo(i8* %127, i8* %128, %struct.addrinfo* %14, %struct.addrinfo** %15)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %120
  %133 = load i8*, i8** %8, align 8
  %134 = load i8*, i8** %9, align 8
  %135 = load i32, i32* %12, align 4
  %136 = call i8* @gai_strerror(i32 %135) #7
  call void (i32, i8*, ...) @Malfunction(i32 704, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.532, i64 0, i64 0), i8* %133, i8* %134, i8* %136)
  br label %137

137:                                              ; preds = %132, %120
  br label %138

138:                                              ; preds = %137, %199
  %139 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  store %struct.addrinfo* %139, %struct.addrinfo** %16, align 8
  br label %140

140:                                              ; preds = %171, %138
  %141 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %142 = icmp ne %struct.addrinfo* %141, null
  br i1 %142, label %143, label %175

143:                                              ; preds = %140
  %144 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %145 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %148 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %151 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @socket(i32 %146, i32 %149, i32 %152) #7
  store i32 %153, i32* %13, align 4
  %154 = load i32, i32* %13, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %143
  br label %171

157:                                              ; preds = %143
  %158 = load i32, i32* %13, align 4
  %159 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %160 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %159, i32 0, i32 5
  %161 = load %struct.sockaddr*, %struct.sockaddr** %160, align 8
  %162 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %163 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @connect(i32 %158, %struct.sockaddr* %161, i32 %164)
  %166 = icmp sge i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %157
  br label %175

168:                                              ; preds = %157
  %169 = load i32, i32* %13, align 4
  %170 = call i32 @close(i32 %169)
  br label %171

171:                                              ; preds = %168, %156
  %172 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %173 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %172, i32 0, i32 7
  %174 = load %struct.addrinfo*, %struct.addrinfo** %173, align 8
  store %struct.addrinfo* %174, %struct.addrinfo** %16, align 8
  br label %140

175:                                              ; preds = %167, %140
  %176 = load i32, i32* %13, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* %13, align 4
  %180 = call %struct._IO_FILE* @fdopen(i32 %179, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.533, i64 0, i64 0)) #7
  store %struct._IO_FILE* %180, %struct._IO_FILE** %6, align 8
  %181 = icmp eq %struct._IO_FILE* %180, null
  br i1 %181, label %182, label %240

182:                                              ; preds = %178, %175
  %183 = load i32, i32* %13, align 4
  %184 = icmp sge i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load i32, i32* %13, align 4
  %187 = call i32 @close(i32 %186)
  br label %188

188:                                              ; preds = %185, %182
  %189 = load i8*, i8** %10, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %202

191:                                              ; preds = %188
  %192 = load i8*, i8** %10, align 8
  %193 = call i32 @system(i8* %192)
  store i32 %193, i32* %12, align 4
  %194 = load i32, i32* %12, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load i32, i32* %12, align 4
  %198 = load i8*, i8** %10, align 8
  call void (i32, i8*, ...) @Malfunction(i32 721, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.534, i64 0, i64 0), i32 %197, i8* %198)
  br label %199

199:                                              ; preds = %196, %191
  %200 = load i8*, i8** %10, align 8
  call void @free(i8* %200) #7
  store i8* null, i8** %10, align 8
  %201 = call i32 @sleep(i32 1)
  br label %138

202:                                              ; preds = %188
  %203 = load i8*, i8** %11, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %238

205:                                              ; preds = %202
  %206 = bitcast %struct.stat* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %206, i8 0, i64 144, i1 false)
  %207 = load i8*, i8** @zDir, align 8
  %208 = call i32 @chdir(i8* %207) #7
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %205
  %211 = load i8*, i8** @zDir, align 8
  %212 = getelementptr inbounds [1000 x i8], [1000 x i8]* %26, i64 0, i64 0
  %213 = call i8* @getcwd(i8* %212, i64 999) #7
  call void (i32, i8*, ...) @Malfunction(i32 720, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.337, i64 0, i64 0), i8* %211, i8* %213)
  br label %214

214:                                              ; preds = %210, %205
  %215 = load i8*, i8** %11, align 8
  %216 = call i32 @stat(i8* %215, %struct.stat* %24) #7
  store i32 %216, i32* %25, align 4
  %217 = load i32, i32* %25, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %235

219:                                              ; preds = %214
  %220 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = and i32 %221, 61440
  %223 = icmp eq i32 %222, 32768
  br i1 %223, label %224, label %235

224:                                              ; preds = %219
  %225 = load i8*, i8** %11, align 8
  %226 = call i32 @access(i8* %225, i32 4) #7
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %224
  store i32 1, i32* @closeConnection, align 4
  %229 = load i8*, i8** %11, align 8
  %230 = load i8*, i8** %11, align 8
  %231 = call i64 @strlen(i8* %230) #8
  %232 = trunc i64 %231 to i32
  %233 = call i32 @SendFile(i8* %229, i32 %232, %struct.stat* %24)
  store i32 %233, i32* %25, align 4
  %234 = load i8*, i8** %11, align 8
  call void @free(i8* %234) #7
  call void @exit(i32 0) #9
  unreachable

235:                                              ; preds = %224, %219, %214
  %236 = load i8*, i8** %11, align 8
  call void (i32, i8*, ...) @Malfunction(i32 706, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.535, i64 0, i64 0), i8* %236)
  br label %237

237:                                              ; preds = %235
  br label %238

238:                                              ; preds = %237, %202
  %239 = load i8*, i8** %4, align 8
  call void (i32, i8*, ...) @Malfunction(i32 707, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.536, i64 0, i64 0), i8* %239)
  br label %240

240:                                              ; preds = %238, %178
  br label %241

241:                                              ; preds = %240
  store i64 0, i64* %19, align 8
  store i8* null, i8** %17, align 8
  %242 = load i8*, i8** @zContentLength, align 8
  %243 = icmp eq i8* %242, null
  br i1 %243, label %244, label %245

244:                                              ; preds = %241
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.413, i64 0, i64 0), i8** @zContentLength, align 8
  br label %245

245:                                              ; preds = %244, %241
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.537, i64 0, i64 0), i8** @zScgi, align 8
  store i32 0, i32* %20, align 4
  br label %246

246:                                              ; preds = %338, %245
  %247 = load i32, i32* %20, align 4
  %248 = icmp slt i32 %247, 27
  br i1 %248, label %249, label %341

249:                                              ; preds = %246
  %250 = load i32, i32* %20, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [27 x %struct.anon.0], [27 x %struct.anon.0]* @cgienv, i64 0, i64 %251
  %253 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %252, i32 0, i32 1
  %254 = load i8**, i8*** %253, align 8
  %255 = getelementptr inbounds i8*, i8** %254, i64 0
  %256 = load i8*, i8** %255, align 8
  %257 = icmp eq i8* %256, null
  br i1 %257, label %258, label %259

258:                                              ; preds = %249
  br label %338

259:                                              ; preds = %249
  %260 = load i32, i32* %20, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [27 x %struct.anon.0], [27 x %struct.anon.0]* @cgienv, i64 0, i64 %261
  %263 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %262, i32 0, i32 0
  %264 = load i8*, i8** %263, align 16
  %265 = call i64 @strlen(i8* %264) #8
  %266 = trunc i64 %265 to i32
  store i32 %266, i32* %27, align 4
  %267 = load i32, i32* %20, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [27 x %struct.anon.0], [27 x %struct.anon.0]* @cgienv, i64 0, i64 %268
  %270 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %269, i32 0, i32 1
  %271 = load i8**, i8*** %270, align 8
  %272 = load i8*, i8** %271, align 8
  %273 = call i64 @strlen(i8* %272) #8
  %274 = trunc i64 %273 to i32
  store i32 %274, i32* %28, align 4
  %275 = load i32, i32* %27, align 4
  %276 = load i32, i32* %28, align 4
  %277 = add nsw i32 %275, %276
  %278 = add nsw i32 %277, 2
  %279 = sext i32 %278 to i64
  %280 = load i64, i64* %18, align 8
  %281 = add i64 %279, %280
  %282 = load i64, i64* %19, align 8
  %283 = icmp uge i64 %281, %282
  br i1 %283, label %284, label %300

284:                                              ; preds = %259
  %285 = load i64, i64* %18, align 8
  %286 = load i32, i32* %27, align 4
  %287 = sext i32 %286 to i64
  %288 = add i64 %285, %287
  %289 = load i32, i32* %28, align 4
  %290 = sext i32 %289 to i64
  %291 = add i64 %288, %290
  %292 = add i64 %291, 1000
  store i64 %292, i64* %19, align 8
  %293 = load i8*, i8** %17, align 8
  %294 = load i64, i64* %19, align 8
  %295 = call i8* @realloc(i8* %293, i64 %294) #7
  store i8* %295, i8** %17, align 8
  %296 = load i8*, i8** %17, align 8
  %297 = icmp eq i8* %296, null
  br i1 %297, label %298, label %299

298:                                              ; preds = %284
  call void (i32, i8*, ...) @Malfunction(i32 706, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.538, i64 0, i64 0))
  br label %299

299:                                              ; preds = %298, %284
  br label %300

300:                                              ; preds = %299, %259
  %301 = load i8*, i8** %17, align 8
  %302 = load i64, i64* %18, align 8
  %303 = getelementptr inbounds i8, i8* %301, i64 %302
  %304 = load i32, i32* %20, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [27 x %struct.anon.0], [27 x %struct.anon.0]* @cgienv, i64 0, i64 %305
  %307 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %306, i32 0, i32 0
  %308 = load i8*, i8** %307, align 16
  %309 = load i32, i32* %27, align 4
  %310 = sext i32 %309 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %303, i8* align 1 %308, i64 %310, i1 false)
  %311 = load i32, i32* %27, align 4
  %312 = sext i32 %311 to i64
  %313 = load i64, i64* %18, align 8
  %314 = add i64 %313, %312
  store i64 %314, i64* %18, align 8
  %315 = load i8*, i8** %17, align 8
  %316 = load i64, i64* %18, align 8
  %317 = add i64 %316, 1
  store i64 %317, i64* %18, align 8
  %318 = getelementptr inbounds i8, i8* %315, i64 %316
  store i8 0, i8* %318, align 1
  %319 = load i8*, i8** %17, align 8
  %320 = load i64, i64* %18, align 8
  %321 = getelementptr inbounds i8, i8* %319, i64 %320
  %322 = load i32, i32* %20, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [27 x %struct.anon.0], [27 x %struct.anon.0]* @cgienv, i64 0, i64 %323
  %325 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %324, i32 0, i32 1
  %326 = load i8**, i8*** %325, align 8
  %327 = load i8*, i8** %326, align 8
  %328 = load i32, i32* %28, align 4
  %329 = sext i32 %328 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %321, i8* align 1 %327, i64 %329, i1 false)
  %330 = load i32, i32* %28, align 4
  %331 = sext i32 %330 to i64
  %332 = load i64, i64* %18, align 8
  %333 = add i64 %332, %331
  store i64 %333, i64* %18, align 8
  %334 = load i8*, i8** %17, align 8
  %335 = load i64, i64* %18, align 8
  %336 = add i64 %335, 1
  store i64 %336, i64* %18, align 8
  %337 = getelementptr inbounds i8, i8* %334, i64 %335
  store i8 0, i8* %337, align 1
  br label %338

338:                                              ; preds = %300, %258
  %339 = load i32, i32* %20, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %20, align 4
  br label %246

341:                                              ; preds = %246
  store i8* null, i8** @zScgi, align 8
  %342 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %343 = load i64, i64* %18, align 8
  %344 = trunc i64 %343 to i32
  %345 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %342, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.539, i64 0, i64 0), i32 %344)
  %346 = load i8*, i8** %17, align 8
  %347 = load i64, i64* %18, align 8
  %348 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %349 = call i64 @fwrite(i8* %346, i64 1, i64 %347, %struct._IO_FILE* %348)
  %350 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %351 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %350, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.540, i64 0, i64 0))
  %352 = load i8*, i8** %17, align 8
  call void @free(i8* %352) #7
  %353 = load i8*, i8** @zMethod, align 8
  %354 = getelementptr inbounds i8, i8* %353, i64 0
  %355 = load i8, i8* %354, align 1
  %356 = sext i8 %355 to i32
  %357 = icmp eq i32 %356, 80
  br i1 %357, label %358, label %380

358:                                              ; preds = %341
  %359 = load i8*, i8** @zContentLength, align 8
  %360 = call i32 @atoi(i8* %359) #8
  %361 = icmp sgt i32 %360, 0
  br i1 %361, label %362, label %380

362:                                              ; preds = %358
  %363 = load i8*, i8** @zTmpNam, align 8
  %364 = call %struct._IO_FILE* @fopen(i8* %363, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.541, i64 0, i64 0))
  store %struct._IO_FILE* %364, %struct._IO_FILE** %5, align 8
  %365 = icmp ne %struct._IO_FILE* %364, null
  br i1 %365, label %366, label %380

366:                                              ; preds = %362
  br label %367

367:                                              ; preds = %372, %366
  %368 = getelementptr inbounds [1000 x i8], [1000 x i8]* %21, i64 0, i64 0
  %369 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %370 = call i64 @fread(i8* %368, i64 1, i64 1000, %struct._IO_FILE* %369)
  store i64 %370, i64* %29, align 8
  %371 = icmp ugt i64 %370, 0
  br i1 %371, label %372, label %377

372:                                              ; preds = %367
  %373 = getelementptr inbounds [1000 x i8], [1000 x i8]* %21, i64 0, i64 0
  %374 = load i64, i64* %29, align 8
  %375 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %376 = call i64 @fwrite(i8* %373, i64 1, i64 %374, %struct._IO_FILE* %375)
  br label %367

377:                                              ; preds = %367
  %378 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %379 = call i32 @fclose(%struct._IO_FILE* %378)
  br label %380

380:                                              ; preds = %377, %362, %358, %341
  %381 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %382 = call i32 @fflush(%struct._IO_FILE* %381)
  %383 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  call void @CgiHandleReply(%struct._IO_FILE* %383)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @countSlashes(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = icmp ne i8 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %2, align 8
  %11 = load i8, i8* %9, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 47
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %14, %8
  br label %4

18:                                               ; preds = %4
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SendFile(i8* %0, i32 %1, %struct.stat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca [100 x i8], align 16
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.stat* %2, %struct.stat** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i8* @GetMimeType(i8* %13, i32 %14)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** @zTmpNam, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i8*, i8** @zTmpNam, align 8
  %20 = call i32 @unlink(i8* %19) #7
  br label %21

21:                                               ; preds = %18, %3
  %22 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %23 = load %struct.stat*, %struct.stat** %7, align 8
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %23, i32 0, i32 12
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load %struct.stat*, %struct.stat** %7, align 8
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %28, i32 0, i32 8
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.542, i64 0, i64 0), i32 %27, i32 %31) #7
  %33 = load i8*, i8** @zIfNoneMatch, align 8
  %34 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %35 = call i32 @CompareEtags(i8* %33, i8* %34)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %21
  %38 = load i8*, i8** @zIfModifiedSince, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %72

40:                                               ; preds = %37
  %41 = load i8*, i8** @zIfModifiedSince, align 8
  %42 = call i64 @ParseRfc822Date(i8* %41)
  store i64 %42, i64* %9, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %40
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.stat*, %struct.stat** %7, align 8
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %46, i32 0, i32 12
  %48 = getelementptr inbounds %struct.timespec, %struct.timespec* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %45, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %44, %21
  call void @StartResponse(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.543, i64 0, i64 0))
  %52 = load %struct.stat*, %struct.stat** %7, align 8
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %52, i32 0, i32 12
  %54 = getelementptr inbounds %struct.timespec, %struct.timespec* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @DateTag(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.544, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* @nOut, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* @nOut, align 4
  %59 = load i32, i32* @mxAge, align 4
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.545, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @nOut, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* @nOut, align 4
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.546, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* @nOut, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* @nOut, align 4
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.469, i64 0, i64 0))
  %68 = load i32, i32* @nOut, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* @nOut, align 4
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %71 = call i32 @fflush(%struct._IO_FILE* %70)
  call void @MakeLogEntry(i32 0, i32 470)
  store i32 1, i32* %4, align 4
  br label %184

72:                                               ; preds = %44, %40, %37
  %73 = load i8*, i8** %5, align 8
  %74 = call %struct._IO_FILE* @fopen(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.405, i64 0, i64 0))
  store %struct._IO_FILE* %74, %struct._IO_FILE** %10, align 8
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %76 = icmp eq %struct._IO_FILE* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  call void @NotFound(i32 480)
  br label %78

78:                                               ; preds = %77, %72
  %79 = load i32, i32* @rangeEnd, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %118

81:                                               ; preds = %78
  %82 = load i32, i32* @rangeStart, align 4
  %83 = sext i32 %82 to i64
  %84 = load %struct.stat*, %struct.stat** %7, align 8
  %85 = getelementptr inbounds %struct.stat, %struct.stat* %84, i32 0, i32 8
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %83, %86
  br i1 %87, label %88, label %118

88:                                               ; preds = %81
  call void @StartResponse(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.518, i64 0, i64 0))
  %89 = load i32, i32* @rangeEnd, align 4
  %90 = sext i32 %89 to i64
  %91 = load %struct.stat*, %struct.stat** %7, align 8
  %92 = getelementptr inbounds %struct.stat, %struct.stat* %91, i32 0, i32 8
  %93 = load i64, i64* %92, align 8
  %94 = icmp sge i64 %90, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load %struct.stat*, %struct.stat** %7, align 8
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %96, i32 0, i32 8
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %98, 1
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* @rangeEnd, align 4
  br label %101

101:                                              ; preds = %95, %88
  %102 = load i32, i32* @rangeStart, align 4
  %103 = load i32, i32* @rangeEnd, align 4
  %104 = load %struct.stat*, %struct.stat** %7, align 8
  %105 = getelementptr inbounds %struct.stat, %struct.stat* %104, i32 0, i32 8
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.519, i64 0, i64 0), i32 %102, i32 %103, i32 %107)
  %109 = load i32, i32* @nOut, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* @nOut, align 4
  %111 = load i32, i32* @rangeEnd, align 4
  %112 = add nsw i32 %111, 1
  %113 = load i32, i32* @rangeStart, align 4
  %114 = sub nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = load %struct.stat*, %struct.stat** %7, align 8
  %117 = getelementptr inbounds %struct.stat, %struct.stat* %116, i32 0, i32 8
  store i64 %115, i64* %117, align 8
  br label %119

118:                                              ; preds = %81, %78
  call void @StartResponse(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.520, i64 0, i64 0))
  store i32 0, i32* @rangeStart, align 4
  br label %119

119:                                              ; preds = %118, %101
  %120 = load %struct.stat*, %struct.stat** %7, align 8
  %121 = getelementptr inbounds %struct.stat, %struct.stat* %120, i32 0, i32 12
  %122 = getelementptr inbounds %struct.timespec, %struct.timespec* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @DateTag(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.544, i64 0, i64 0), i64 %123)
  %125 = load i32, i32* @nOut, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* @nOut, align 4
  %127 = load i32, i32* @mxAge, align 4
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.545, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @nOut, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* @nOut, align 4
  %131 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.546, i64 0, i64 0), i8* %131)
  %133 = load i32, i32* @nOut, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* @nOut, align 4
  %135 = load i8*, i8** %8, align 8
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.547, i64 0, i64 0), i8* %135)
  %137 = load i32, i32* @nOut, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* @nOut, align 4
  %139 = load %struct.stat*, %struct.stat** %7, align 8
  %140 = getelementptr inbounds %struct.stat, %struct.stat* %139, i32 0, i32 8
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.522, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* @nOut, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* @nOut, align 4
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %147 = call i32 @fflush(%struct._IO_FILE* %146)
  %148 = load i8*, i8** @zMethod, align 8
  %149 = call i32 @strcmp(i8* %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.343, i64 0, i64 0)) #8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %119
  call void @MakeLogEntry(i32 0, i32 2)
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %153 = call i32 @fclose(%struct._IO_FILE* %152)
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %155 = call i32 @fflush(%struct._IO_FILE* %154)
  store i32 1, i32* %4, align 4
  br label %184

156:                                              ; preds = %119
  %157 = load i32, i32* @useTimeout, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %156
  %160 = load %struct.stat*, %struct.stat** %7, align 8
  %161 = getelementptr inbounds %struct.stat, %struct.stat* %160, i32 0, i32 8
  %162 = load i64, i64* %161, align 8
  %163 = sdiv i64 %162, 1000
  %164 = add nsw i64 30, %163
  %165 = trunc i64 %164 to i32
  %166 = call i32 @alarm(i32 %165) #7
  br label %167

167:                                              ; preds = %159, %156
  %168 = load i32, i32* @rangeStart, align 4
  %169 = sext i32 %168 to i64
  store i64 %169, i64* %12, align 8
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %171 = call i32 @fileno(%struct._IO_FILE* %170) #7
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %173 = call i32 @fileno(%struct._IO_FILE* %172) #7
  %174 = load %struct.stat*, %struct.stat** %7, align 8
  %175 = getelementptr inbounds %struct.stat, %struct.stat* %174, i32 0, i32 8
  %176 = load i64, i64* %175, align 8
  %177 = call i64 @sendfile(i32 %171, i32 %173, i64* %12, i64 %176) #7
  %178 = load i32, i32* @nOut, align 4
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %179, %177
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* @nOut, align 4
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %183 = call i32 @fclose(%struct._IO_FILE* %182)
  store i32 0, i32* %4, align 4
  br label %184

184:                                              ; preds = %167, %151, %51
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local i32 @fflush(%struct._IO_FILE*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_server(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [20 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.fd_set, align 8
  %9 = alloca %union.address, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.addrinfo, align 8
  %16 = alloca %struct.addrinfo*, align 8
  %17 = alloca %struct.addrinfo*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %14, align 4
  store i32 -1, i32* %21, align 4
  %27 = bitcast %struct.addrinfo* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 48, i1 false)
  %28 = load i32, i32* @ipv4Only, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 1
  store i32 2, i32* %31, align 4
  br label %40

32:                                               ; preds = %2
  %33 = load i32, i32* @ipv6Only, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 1
  store i32 10, i32* %36, align 4
  br label %39

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 1
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %35
  br label %40

40:                                               ; preds = %39, %30
  %41 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 2
  store i32 1, i32* %41, align 8
  %42 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 3
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.407, i64 0, i64 0), i8* null
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @getaddrinfo(i8* %47, i8* %48, %struct.addrinfo* %15, %struct.addrinfo** %16)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %40
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %54 = load i32, i32* %18, align 4
  %55 = icmp ne i32 %54, -11
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %18, align 4
  %58 = call i8* @gai_strerror(i32 %57) #7
  br label %63

59:                                               ; preds = %52
  %60 = call i32* @__errno_location() #10
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @strerror(i32 %61) #7
  br label %63

63:                                               ; preds = %59, %56
  %64 = phi i8* [ %58, %56 ], [ %62, %59 ]
  %65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.408, i64 0, i64 0), i8* %64)
  store i32 1, i32* %3, align 4
  br label %318

66:                                               ; preds = %40
  store i32 0, i32* %20, align 4
  %67 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  store %struct.addrinfo* %67, %struct.addrinfo** %17, align 8
  br label %68

68:                                               ; preds = %157, %66
  %69 = load i32, i32* %20, align 4
  %70 = icmp slt i32 %69, 20
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %73 = icmp ne %struct.addrinfo* %72, null
  br label %74

74:                                               ; preds = %71, %68
  %75 = phi i1 [ false, %68 ], [ %73, %71 ]
  br i1 %75, label %76, label %161

76:                                               ; preds = %74
  %77 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %78 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %81 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %84 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @socket(i32 %79, i32 %82, i32 %85) #7
  %87 = load i32, i32* %20, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 %88
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* %20, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %156

95:                                               ; preds = %76
  %96 = load i32, i32* %20, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = bitcast i32* %14 to i8*
  %101 = call i32 @setsockopt(i32 %99, i32 1, i32 2, i8* %100, i32 4) #7
  %102 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %103 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 10
  br i1 %105, label %106, label %113

106:                                              ; preds = %95
  store i32 1, i32* %22, align 4
  %107 = load i32, i32* %20, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = bitcast i32* %22 to i8*
  %112 = call i32 @setsockopt(i32 %110, i32 41, i32 26, i8* %111, i32 4) #7
  br label %113

113:                                              ; preds = %106, %95
  %114 = load i32, i32* %20, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %119 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %118, i32 0, i32 5
  %120 = load %struct.sockaddr*, %struct.sockaddr** %119, align 8
  %121 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %122 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @bind(i32 %117, %struct.sockaddr* %120, i32 %123) #7
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %113
  %127 = call i32* @__errno_location() #10
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @strerror(i32 %128) #7
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.409, i64 0, i64 0), i8* %129)
  %131 = load i32, i32* %20, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @close(i32 %134)
  br label %157

136:                                              ; preds = %113
  %137 = load i32, i32* %20, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @listen(i32 %140, i32 20) #7
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %136
  %144 = call i32* @__errno_location() #10
  %145 = load i32, i32* %144, align 4
  %146 = call i8* @strerror(i32 %145) #7
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.410, i64 0, i64 0), i8* %146)
  %148 = load i32, i32* %20, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @close(i32 %151)
  br label %157

153:                                              ; preds = %136
  %154 = load i32, i32* %20, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %20, align 4
  br label %156

156:                                              ; preds = %153, %76
  br label %157

157:                                              ; preds = %156, %143, %126
  %158 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %159 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %158, i32 0, i32 7
  %160 = load %struct.addrinfo*, %struct.addrinfo** %159, align 8
  store %struct.addrinfo* %160, %struct.addrinfo** %17, align 8
  br label %68

161:                                              ; preds = %74
  %162 = load i32, i32* %20, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %166 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %165, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.411, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %318

167:                                              ; preds = %161
  br label %168

168:                                              ; preds = %167, %317
  %169 = load i32, i32* %12, align 4
  %170 = icmp sgt i32 %169, 50
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = load i32, i32* %12, align 4
  %173 = sub nsw i32 %172, 50
  %174 = call i32 @sleep(i32 %173)
  br label %175

175:                                              ; preds = %171, %168
  %176 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i64 60, i64* %176, align 8
  %177 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i64 0, i64* %177, align 8
  br label %178

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %8, i32 0, i32 0
  %180 = getelementptr inbounds [16 x i64], [16 x i64]* %179, i64 0, i64 0
  %181 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %180) #7, !srcloc !2
  %182 = extractvalue { i64, i64* } %181, 0
  %183 = extractvalue { i64, i64* } %181, 1
  %184 = trunc i64 %182 to i32
  store i32 %184, i32* %23, align 4
  %185 = ptrtoint i64* %183 to i64
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %24, align 4
  br label %187

187:                                              ; preds = %178
  store i32 0, i32* %19, align 4
  br label %188

188:                                              ; preds = %230, %187
  %189 = load i32, i32* %19, align 4
  %190 = load i32, i32* %20, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %233

192:                                              ; preds = %188
  %193 = load i32, i32* %19, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = icmp sge i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  br label %200

199:                                              ; preds = %192
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.412, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 2327, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.http_server, i64 0, i64 0)) #9
  unreachable

200:                                              ; preds = %198
  %201 = load i32, i32* %19, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = srem i32 %204, 64
  %206 = zext i32 %205 to i64
  %207 = shl i64 1, %206
  %208 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %8, i32 0, i32 0
  %209 = load i32, i32* %19, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = sdiv i32 %212, 64
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [16 x i64], [16 x i64]* %208, i64 0, i64 %214
  %216 = load i64, i64* %215, align 8
  %217 = or i64 %216, %207
  store i64 %217, i64* %215, align 8
  %218 = load i32, i32* %19, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %21, align 4
  %223 = icmp sgt i32 %221, %222
  br i1 %223, label %224, label %229

224:                                              ; preds = %200
  %225 = load i32, i32* %19, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 %226
  %228 = load i32, i32* %227, align 4
  store i32 %228, i32* %21, align 4
  br label %229

229:                                              ; preds = %224, %200
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %19, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %19, align 4
  br label %188

233:                                              ; preds = %188
  %234 = load i32, i32* %21, align 4
  %235 = add nsw i32 %234, 1
  %236 = call i32 @select(i32 %235, %struct.fd_set* %8, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %13)
  store i32 0, i32* %19, align 4
  br label %237

237:                                              ; preds = %314, %233
  %238 = load i32, i32* %19, align 4
  %239 = load i32, i32* %20, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %317

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %8, i32 0, i32 0
  %243 = load i32, i32* %19, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = sdiv i32 %246, 64
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [16 x i64], [16 x i64]* %242, i64 0, i64 %248
  %250 = load i64, i64* %249, align 8
  %251 = load i32, i32* %19, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = srem i32 %254, 64
  %256 = zext i32 %255 to i64
  %257 = shl i64 1, %256
  %258 = and i64 %250, %257
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %306

260:                                              ; preds = %241
  store i32 128, i32* %10, align 4
  %261 = load i32, i32* %19, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = bitcast %union.address* %9 to %struct.sockaddr*
  %266 = call i32 @accept(i32 %264, %struct.sockaddr* %265, i32* %10)
  store i32 %266, i32* %7, align 4
  %267 = load i32, i32* %7, align 4
  %268 = icmp sge i32 %267, 0
  br i1 %268, label %269, label %305

269:                                              ; preds = %260
  %270 = call i32 @fork() #7
  store i32 %270, i32* %11, align 4
  %271 = load i32, i32* %11, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %282

273:                                              ; preds = %269
  %274 = load i32, i32* %11, align 4
  %275 = icmp sgt i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = load i32, i32* %12, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %12, align 4
  br label %279

279:                                              ; preds = %276, %273
  %280 = load i32, i32* %7, align 4
  %281 = call i32 @close(i32 %280)
  br label %304

282:                                              ; preds = %269
  store i32 0, i32* %25, align 4
  %283 = call i32 @close(i32 0)
  %284 = load i32, i32* %7, align 4
  %285 = call i32 @dup(i32 %284) #7
  store i32 %285, i32* %26, align 4
  %286 = load i32, i32* %26, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %282
  %289 = load i32, i32* %25, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %25, align 4
  br label %291

291:                                              ; preds = %288, %282
  %292 = call i32 @close(i32 1)
  %293 = load i32, i32* %7, align 4
  %294 = call i32 @dup(i32 %293) #7
  store i32 %294, i32* %26, align 4
  %295 = load i32, i32* %26, align 4
  %296 = icmp ne i32 %295, 1
  br i1 %296, label %297, label %300

297:                                              ; preds = %291
  %298 = load i32, i32* %25, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %25, align 4
  br label %300

300:                                              ; preds = %297, %291
  %301 = load i32, i32* %7, align 4
  %302 = call i32 @close(i32 %301)
  %303 = load i32, i32* %25, align 4
  store i32 %303, i32* %3, align 4
  br label %318

304:                                              ; preds = %279
  br label %305

305:                                              ; preds = %304, %260
  br label %306

306:                                              ; preds = %305, %241
  br label %307

307:                                              ; preds = %310, %306
  %308 = call i32 @waitpid(i32 0, i32* null, i32 1)
  store i32 %308, i32* %11, align 4
  %309 = icmp sgt i32 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %307
  %311 = load i32, i32* %12, align 4
  %312 = add nsw i32 %311, -1
  store i32 %312, i32* %12, align 4
  br label %307

313:                                              ; preds = %307
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %19, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %19, align 4
  br label %237

317:                                              ; preds = %237
  br label %168

318:                                              ; preds = %300, %164, %63
  %319 = load i32, i32* %3, align 4
  ret i32 %319
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.passwd*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.rlimit, align 8
  %14 = alloca %union.address, align 8
  %15 = alloca i32, align 4
  %16 = alloca [1025 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 1, i32* %9, align 4
  store %struct.passwd* null, %struct.passwd** %10, align 8
  %17 = call i32 @gettimeofday(%struct.timeval* @beginTime, i8* null) #7
  br label %18

18:                                               ; preds = %184, %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 45
  br label %29

29:                                               ; preds = %21, %18
  %30 = phi i1 [ false, %18 ], [ %28, %21 ]
  br i1 %30, label %31, label %189

31:                                               ; preds = %29
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %11, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp sge i32 %35, 3
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 2
  %40 = load i8*, i8** %39, align 8
  br label %42

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i8* [ %40, %37 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.413, i64 0, i64 0), %41 ]
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 45
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 45
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %11, align 8
  br label %58

58:                                               ; preds = %55, %49, %42
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.414, i64 0, i64 0)) #8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i8*, i8** %12, align 8
  store i8* %63, i8** %7, align 8
  br label %184

64:                                               ; preds = %58
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.415, i64 0, i64 0)) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i8*, i8** %12, align 8
  store i8* %69, i8** @zRoot, align 8
  br label %183

70:                                               ; preds = %64
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.416, i64 0, i64 0)) #8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i8*, i8** %12, align 8
  store i8* %75, i8** @zLogFile, align 8
  br label %182

76:                                               ; preds = %70
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.417, i64 0, i64 0)) #8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i8*, i8** %12, align 8
  %82 = call i32 @atoi(i8* %81) #8
  store i32 %82, i32* @mxAge, align 4
  br label %181

83:                                               ; preds = %76
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.418, i64 0, i64 0)) #8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i8*, i8** %12, align 8
  %89 = call i32 @atoi(i8* %88) #8
  store i32 %89, i32* @maxCpu, align 4
  br label %180

90:                                               ; preds = %83
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.419, i64 0, i64 0)) #8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %90
  %95 = load i8*, i8** %12, align 8
  %96 = call i32 @atoi(i8* %95) #8
  store i32 %96, i32* @useHttps, align 4
  %97 = load i32, i32* @useHttps, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.420, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.421, i64 0, i64 0)
  store i8* %100, i8** @zHttp, align 8
  %101 = load i32, i32* @useHttps, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.422, i64 0, i64 0)) #7
  store i8* %104, i8** @zRemoteAddr, align 8
  br label %105

105:                                              ; preds = %103, %94
  br label %179

106:                                              ; preds = %90
  %107 = load i8*, i8** %11, align 8
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.423, i64 0, i64 0)) #8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i8*, i8** %12, align 8
  store i8* %111, i8** %8, align 8
  store i32 1, i32* @standalone, align 4
  br label %178

112:                                              ; preds = %106
  %113 = load i8*, i8** %11, align 8
  %114 = call i32 @strcmp(i8* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.424, i64 0, i64 0)) #8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %112
  %117 = load i8*, i8** %12, align 8
  %118 = call i32 @strcmp(i8* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.425, i64 0, i64 0)) #8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i32 1, i32* @ipv4Only, align 4
  br label %129

121:                                              ; preds = %116
  %122 = load i8*, i8** %12, align 8
  %123 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.426, i64 0, i64 0)) #8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  store i32 1, i32* @ipv6Only, align 4
  br label %128

126:                                              ; preds = %121
  %127 = load i8*, i8** %12, align 8
  call void (i32, i8*, ...) @Malfunction(i32 500, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.427, i64 0, i64 0), i8* %127)
  br label %128

128:                                              ; preds = %126, %125
  br label %129

129:                                              ; preds = %128, %120
  br label %177

130:                                              ; preds = %112
  %131 = load i8*, i8** %11, align 8
  %132 = call i32 @strcmp(i8* %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.428, i64 0, i64 0)) #8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i8*, i8** %12, align 8
  %136 = call i32 @atoi(i8* %135) #8
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  store i32 0, i32* %9, align 4
  br label %139

139:                                              ; preds = %138, %134
  br label %176

140:                                              ; preds = %130
  %141 = load i8*, i8** %11, align 8
  %142 = call i32 @strcmp(i8* %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.429, i64 0, i64 0)) #8
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  %145 = load i8*, i8** %12, align 8
  %146 = call i32 @atoi(i8* %145) #8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store i32 0, i32* @useTimeout, align 4
  br label %149

149:                                              ; preds = %148, %144
  br label %175

150:                                              ; preds = %140
  %151 = load i8*, i8** %11, align 8
  %152 = call i32 @strcmp(i8* %151, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.430, i64 0, i64 0)) #8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %150
  %155 = load i8*, i8** %12, align 8
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %157 = call %struct._IO_FILE* @freopen(i8* %155, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.405, i64 0, i64 0), %struct._IO_FILE* %156)
  %158 = icmp eq %struct._IO_FILE* %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %161 = icmp eq %struct._IO_FILE* %160, null
  br i1 %161, label %162, label %164

162:                                              ; preds = %159, %154
  %163 = load i8*, i8** %12, align 8
  call void (i32, i8*, ...) @Malfunction(i32 501, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.431, i64 0, i64 0), i8* %163)
  br label %164

164:                                              ; preds = %162, %159
  br label %174

165:                                              ; preds = %150
  %166 = load i8*, i8** %11, align 8
  %167 = call i32 @strcmp(i8* %166, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.432, i64 0, i64 0)) #8
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  call void @TestParseRfc822Date()
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.433, i64 0, i64 0))
  call void @exit(i32 0) #9
  unreachable

171:                                              ; preds = %165
  %172 = load i8*, i8** %11, align 8
  call void (i32, i8*, ...) @Malfunction(i32 510, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.434, i64 0, i64 0), i8* %172)
  br label %173

173:                                              ; preds = %171
  br label %174

174:                                              ; preds = %173, %164
  br label %175

175:                                              ; preds = %174, %149
  br label %176

176:                                              ; preds = %175, %139
  br label %177

177:                                              ; preds = %176, %129
  br label %178

178:                                              ; preds = %177, %110
  br label %179

179:                                              ; preds = %178, %105
  br label %180

180:                                              ; preds = %179, %87
  br label %181

181:                                              ; preds = %180, %80
  br label %182

182:                                              ; preds = %181, %74
  br label %183

183:                                              ; preds = %182, %68
  br label %184

184:                                              ; preds = %183, %62
  %185 = load i8**, i8*** %5, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 2
  store i8** %186, i8*** %5, align 8
  %187 = load i32, i32* %4, align 4
  %188 = sub nsw i32 %187, 2
  store i32 %188, i32* %4, align 4
  br label %18

189:                                              ; preds = %29
  %190 = load i8*, i8** @zRoot, align 8
  %191 = icmp eq i8* %190, null
  br i1 %191, label %192, label %198

192:                                              ; preds = %189
  %193 = load i32, i32* @standalone, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.435, i64 0, i64 0), i8** @zRoot, align 8
  br label %197

196:                                              ; preds = %192
  call void (i32, i8*, ...) @Malfunction(i32 520, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.436, i64 0, i64 0))
  br label %197

197:                                              ; preds = %196, %195
  br label %198

198:                                              ; preds = %197, %189
  %199 = load i8*, i8** @zRoot, align 8
  %200 = call i32 @chdir(i8* %199) #7
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %198
  %203 = load i8*, i8** @zRoot, align 8
  call void (i32, i8*, ...) @Malfunction(i32 530, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.437, i64 0, i64 0), i8* %203)
  br label %204

204:                                              ; preds = %202, %198
  %205 = load i8*, i8** %7, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load i8*, i8** %7, align 8
  %209 = call %struct.passwd* @getpwnam(i8* %208)
  store %struct.passwd* %209, %struct.passwd** %10, align 8
  br label %210

210:                                              ; preds = %207, %204
  %211 = load i8*, i8** %7, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %225

213:                                              ; preds = %210
  %214 = load i32, i32* %9, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %225

216:                                              ; preds = %213
  %217 = call i32 @getuid() #7
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %216
  %220 = call i32 @chroot(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.435, i64 0, i64 0)) #7
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %219
  call void (i32, i8*, ...) @Malfunction(i32 540, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.438, i64 0, i64 0))
  br label %224

223:                                              ; preds = %219
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), i8** @zRoot, align 8
  br label %224

224:                                              ; preds = %223, %222
  br label %225

225:                                              ; preds = %224, %216, %213, %210
  %226 = load i8*, i8** %8, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %228, label %233

228:                                              ; preds = %225
  %229 = load i8*, i8** %8, align 8
  %230 = call i32 @http_server(i8* %229, i32 0)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %228
  call void (i32, i8*, ...) @Malfunction(i32 550, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.439, i64 0, i64 0))
  br label %233

233:                                              ; preds = %232, %228, %225
  %234 = load i32, i32* @maxCpu, align 4
  %235 = icmp sgt i32 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %233
  %237 = load i32, i32* @maxCpu, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %13, i32 0, i32 0
  store i64 %238, i64* %239, align 8
  %240 = load i32, i32* @maxCpu, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %13, i32 0, i32 1
  store i64 %241, i64* %242, align 8
  %243 = call i32 @setrlimit(i32 0, %struct.rlimit* %13) #7
  br label %244

244:                                              ; preds = %236, %233
  %245 = load i8*, i8** %7, align 8
  %246 = icmp ne i8* %245, null
  br i1 %246, label %247, label %274

247:                                              ; preds = %244
  %248 = load %struct.passwd*, %struct.passwd** %10, align 8
  %249 = icmp ne %struct.passwd* %248, null
  br i1 %249, label %250, label %271

250:                                              ; preds = %247
  %251 = load %struct.passwd*, %struct.passwd** %10, align 8
  %252 = getelementptr inbounds %struct.passwd, %struct.passwd* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @setgid(i32 %253) #7
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %250
  %257 = load %struct.passwd*, %struct.passwd** %10, align 8
  %258 = getelementptr inbounds %struct.passwd, %struct.passwd* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  call void (i32, i8*, ...) @Malfunction(i32 560, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.440, i64 0, i64 0), i32 %259)
  br label %260

260:                                              ; preds = %256, %250
  %261 = load %struct.passwd*, %struct.passwd** %10, align 8
  %262 = getelementptr inbounds %struct.passwd, %struct.passwd* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @setuid(i32 %263) #7
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %260
  %267 = load %struct.passwd*, %struct.passwd** %10, align 8
  %268 = getelementptr inbounds %struct.passwd, %struct.passwd* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  call void (i32, i8*, ...) @Malfunction(i32 570, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.441, i64 0, i64 0), i32 %269)
  br label %270

270:                                              ; preds = %266, %260
  br label %273

271:                                              ; preds = %247
  %272 = load i8*, i8** %7, align 8
  call void (i32, i8*, ...) @Malfunction(i32 580, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.442, i64 0, i64 0), i8* %272)
  br label %273

273:                                              ; preds = %271, %270
  br label %274

274:                                              ; preds = %273, %244
  %275 = call i32 @getuid() #7
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %274
  call void (i32, i8*, ...) @Malfunction(i32 590, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.443, i64 0, i64 0))
  br label %278

278:                                              ; preds = %277, %274
  %279 = load i8*, i8** @zRemoteAddr, align 8
  %280 = icmp eq i8* %279, null
  br i1 %280, label %281, label %293

281:                                              ; preds = %278
  store i32 128, i32* %15, align 4
  %282 = bitcast %union.address* %14 to %struct.sockaddr*
  %283 = call i32 @getpeername(i32 0, %struct.sockaddr* %282, i32* %15) #7
  %284 = icmp sge i32 %283, 0
  br i1 %284, label %285, label %292

285:                                              ; preds = %281
  %286 = bitcast %union.address* %14 to %struct.sockaddr*
  %287 = load i32, i32* %15, align 4
  %288 = getelementptr inbounds [1025 x i8], [1025 x i8]* %16, i64 0, i64 0
  %289 = call i32 @getnameinfo(%struct.sockaddr* %286, i32 %287, i8* %288, i32 1025, i8* null, i32 0, i32 1)
  %290 = getelementptr inbounds [1025 x i8], [1025 x i8]* %16, i64 0, i64 0
  %291 = call i8* @StrDup(i8* %290)
  store i8* %291, i8** @zRemoteAddr, align 8
  br label %292

292:                                              ; preds = %285, %281
  br label %293

293:                                              ; preds = %292, %278
  %294 = load i8*, i8** @zRemoteAddr, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %296, label %313

296:                                              ; preds = %293
  %297 = load i8*, i8** @zRemoteAddr, align 8
  %298 = call i32 @strncmp(i8* %297, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.444, i64 0, i64 0), i64 7) #8
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %313

300:                                              ; preds = %296
  %301 = load i8*, i8** @zRemoteAddr, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 7
  %303 = call i8* @strchr(i8* %302, i32 58) #8
  %304 = icmp eq i8* %303, null
  br i1 %304, label %305, label %313

305:                                              ; preds = %300
  %306 = load i8*, i8** @zRemoteAddr, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 7
  %308 = call i8* @strchr(i8* %307, i32 46) #8
  %309 = icmp ne i8* %308, null
  br i1 %309, label %310, label %313

310:                                              ; preds = %305
  %311 = load i8*, i8** @zRemoteAddr, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 7
  store i8* %312, i8** @zRemoteAddr, align 8
  br label %313

313:                                              ; preds = %310, %305, %300, %296, %293
  store i32 0, i32* %6, align 4
  br label %314

314:                                              ; preds = %318, %313
  %315 = load i32, i32* %6, align 4
  %316 = icmp slt i32 %315, 100
  br i1 %316, label %317, label %321

317:                                              ; preds = %314
  call void @ProcessOneRequest(i32 0)
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* %6, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %6, align 4
  br label %314

321:                                              ; preds = %314
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

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DateTag(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @Rfc822Date(i64 %6)
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.453, i64 0, i64 0), i8* %5, i8* %7)
  ret i32 %8
}

; Function Attrs: nounwind
declare dso_local i32 @unlink(i8*) #1

; Function Attrs: nounwind
declare dso_local %struct.tm* @localtime(i64*) #1

; Function Attrs: nounwind
declare dso_local i32 @getrusage(i32, %struct.rusage*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Escape(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %7, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load i8, i8* %7, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 34
  br label %20

20:                                               ; preds = %16, %9
  %21 = phi i1 [ false, %9 ], [ %19, %16 ]
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %4, align 8
  br label %9

26:                                               ; preds = %20
  %27 = load i8, i8* %7, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i8*, i8** %3, align 8
  store i8* %31, i8** %2, align 8
  br label %94

32:                                               ; preds = %26
  store i64 1, i64* %6, align 8
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %50, %32
  %36 = load i8*, i8** %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %7, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = load i8, i8* %7, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 34
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %46, %42
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %4, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %4, align 8
  br label %35

53:                                               ; preds = %35
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* %6, align 8
  %56 = add i64 %54, %55
  %57 = add i64 %56, 1
  %58 = call noalias i8* @malloc(i64 %57) #7
  store i8* %58, i8** %8, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.379, i64 0, i64 0), i8** %2, align 8
  br label %94

62:                                               ; preds = %53
  store i64 0, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %63

63:                                               ; preds = %86, %62
  %64 = load i8*, i8** %3, align 8
  %65 = load i64, i64* %4, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  store i8 %67, i8* %7, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %63
  %71 = load i8, i8* %7, align 1
  %72 = load i8*, i8** %8, align 8
  %73 = load i64, i64* %5, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %5, align 8
  %75 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8 %71, i8* %75, align 1
  %76 = load i8, i8* %7, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 34
  br i1 %78, label %79, label %85

79:                                               ; preds = %70
  %80 = load i8, i8* %7, align 1
  %81 = load i8*, i8** %8, align 8
  %82 = load i64, i64* %5, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %5, align 8
  %84 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8 %80, i8* %84, align 1
  br label %85

85:                                               ; preds = %79, %70
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %4, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %4, align 8
  br label %63

89:                                               ; preds = %63
  %90 = load i8*, i8** %8, align 8
  %91 = load i64, i64* %5, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8 0, i8* %92, align 1
  %93 = load i8*, i8** %8, align 8
  store i8* %93, i8** %2, align 8
  br label %94

94:                                               ; preds = %89, %61, %30
  %95 = load i8*, i8** %2, align 8
  ret i8* %95
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tvms(%struct.timeval* %0) #0 {
  %2 = alloca %struct.timeval*, align 8
  store %struct.timeval* %0, %struct.timeval** %2, align 8
  %3 = load %struct.timeval*, %struct.timeval** %2, align 8
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = mul nsw i64 %5, 1000000
  %7 = load %struct.timeval*, %struct.timeval** %2, align 8
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %6, %9
  ret i64 %10
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NotAuthorized(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @StartResponse(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.476, i64 0, i64 0))
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([216 x i8], [216 x i8]* @.str.477, i64 0, i64 0), i8* %3)
  %5 = load i32, i32* @nOut, align 4
  %6 = add nsw i32 %5, %4
  store i32 %6, i32* @nOut, align 4
  call void @MakeLogEntry(i32 0, i32 110)
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strncasecmp(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xferBytes(%struct._IO_FILE* %0, %struct._IO_FILE* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [16384 x i8], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  br label %12

12:                                               ; preds = %29, %4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %12
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ugt i64 %18, 16384
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i64 16384, i64* %9, align 8
  br label %21

21:                                               ; preds = %20, %15
  %22 = getelementptr inbounds [16384 x i8], [16384 x i8]* %11, i64 0, i64 0
  %23 = load i64, i64* %9, align 8
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %25 = call i64 @fread(i8* %22, i64 1, i64 %23, %struct._IO_FILE* %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %35

29:                                               ; preds = %21
  %30 = load i64, i64* %10, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = sub i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  br label %12

35:                                               ; preds = %28, %12
  br label %36

36:                                               ; preds = %53, %35
  %37 = load i32, i32* %7, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp ugt i64 %42, 16384
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i64 16384, i64* %9, align 8
  br label %45

45:                                               ; preds = %44, %39
  %46 = getelementptr inbounds [16384 x i8], [16384 x i8]* %11, i64 0, i64 0
  %47 = load i64, i64* %9, align 8
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %49 = call i64 @fread(i8* %46, i64 1, i64 %47, %struct._IO_FILE* %48)
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %68

53:                                               ; preds = %45
  %54 = getelementptr inbounds [16384 x i8], [16384 x i8]* %11, i64 0, i64 0
  %55 = load i64, i64* %10, align 8
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %57 = call i64 @fwrite(i8* %54, i64 %55, i64 1, %struct._IO_FILE* %56)
  %58 = load i64, i64* %10, align 8
  %59 = load i32, i32* @nOut, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* @nOut, align 4
  %63 = load i64, i64* %10, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = sub i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %7, align 4
  br label %36

68:                                               ; preds = %52, %36
  ret void
}

declare dso_local i32 @getc(%struct._IO_FILE*) #4

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #4

declare dso_local i32 @system(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CompareEtags(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %42

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 34
  br i1 %15, label %16, label %38

16:                                               ; preds = %10
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @strlen(i8* %17) #8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = call i32 @strncmp(i8* %21, i8* %22, i64 %24) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %16
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %42

37:                                               ; preds = %27, %16
  br label %38

38:                                               ; preds = %37, %10
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @strcmp(i8* %39, i8* %40) #8
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %36, %9
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

; Function Attrs: nounwind
declare dso_local i64 @sendfile(i32, i32, i64*, i64) #1

; Function Attrs: nounwind
declare dso_local i32 @fileno(%struct._IO_FILE*) #1

;attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
