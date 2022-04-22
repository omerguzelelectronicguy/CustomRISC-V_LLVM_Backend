; ModuleID = 'sum1to_num.c'
source_filename = "sum1to_num.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone
define dso_local i32 @loop(i32 noundef %0) #0 !dbg !9 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %3, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 0, i32* %3, align 4, !dbg !17
  call void @llvm.dbg.declare(metadata i32* %4, metadata !18, metadata !DIExpression()), !dbg !20
  store i32 0, i32* %4, align 4, !dbg !20
  br label %5, !dbg !21

5:                                                ; preds = %13, %1
  %6 = load i32, i32* %4, align 4, !dbg !22
  %7 = load i32, i32* %2, align 4, !dbg !24
  %8 = icmp slt i32 %6, %7, !dbg !25
  br i1 %8, label %9, label %16, !dbg !26

9:                                                ; preds = %5
  %10 = load i32, i32* %4, align 4, !dbg !27
  %11 = load i32, i32* %3, align 4, !dbg !29
  %12 = add nsw i32 %11, %10, !dbg !29
  store i32 %12, i32* %3, align 4, !dbg !29
  br label %13, !dbg !30

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4, !dbg !31
  %15 = add nsw i32 %14, 1, !dbg !31
  store i32 %15, i32* %4, align 4, !dbg !31
  br label %5, !dbg !32, !llvm.loop !33

16:                                               ; preds = %5
  %17 = load i32, i32* %3, align 4, !dbg !36
  ret i32 %17, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+d,+f,+m" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "sum1to_num.c", directory: "/home/llvm/LLVM-CustomInstr", checksumkind: CSK_MD5, checksum: "d9704cdd0e564ea85e5a74a9a081cbcd")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 1, !"target-abi", !"ilp32d"}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{i32 1, !"SmallDataLimit", i32 8}
!8 = !{!"clang version 14.0.0"}
!9 = distinct !DISubprogram(name: "loop", scope: !1, file: !1, line: 4, type: !10, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "n", arg: 1, scope: !9, file: !1, line: 4, type: !12)
!15 = !DILocation(line: 4, column: 14, scope: !9)
!16 = !DILocalVariable(name: "ret", scope: !9, file: !1, line: 6, type: !12)
!17 = !DILocation(line: 6, column: 9, scope: !9)
!18 = !DILocalVariable(name: "i", scope: !19, file: !1, line: 7, type: !12)
!19 = distinct !DILexicalBlock(scope: !9, file: !1, line: 7, column: 5)
!20 = !DILocation(line: 7, column: 14, scope: !19)
!21 = !DILocation(line: 7, column: 10, scope: !19)
!22 = !DILocation(line: 7, column: 21, scope: !23)
!23 = distinct !DILexicalBlock(scope: !19, file: !1, line: 7, column: 5)
!24 = !DILocation(line: 7, column: 25, scope: !23)
!25 = !DILocation(line: 7, column: 23, scope: !23)
!26 = !DILocation(line: 7, column: 5, scope: !19)
!27 = !DILocation(line: 9, column: 16, scope: !28)
!28 = distinct !DILexicalBlock(scope: !23, file: !1, line: 8, column: 5)
!29 = !DILocation(line: 9, column: 13, scope: !28)
!30 = !DILocation(line: 10, column: 5, scope: !28)
!31 = !DILocation(line: 7, column: 29, scope: !23)
!32 = !DILocation(line: 7, column: 5, scope: !23)
!33 = distinct !{!33, !26, !34, !35}
!34 = !DILocation(line: 10, column: 5, scope: !19)
!35 = !{!"llvm.loop.mustprogress"}
!36 = !DILocation(line: 11, column: 12, scope: !9)
!37 = !DILocation(line: 11, column: 5, scope: !9)
