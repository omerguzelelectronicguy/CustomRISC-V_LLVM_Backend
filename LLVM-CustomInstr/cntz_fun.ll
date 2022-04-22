; ModuleID = 'cntz_fun.c'
source_filename = "cntz_fun.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

@n = dso_local global i32 0, align 4, !dbg !0

; Function Attrs: noinline nounwind optnone
define dso_local i32 @cntz_fun(i32 noundef %0, i32 noundef %1) #0 !dbg !13 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !20, metadata !DIExpression()), !dbg !21
  %6 = load i32, i32* %5, align 4, !dbg !22
  %7 = icmp sle i32 %6, 31, !dbg !24
  br i1 %7, label %8, label %17, !dbg !25

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4, !dbg !26
  %10 = and i32 %9, 1, !dbg !27
  %11 = load i32, i32* %4, align 4, !dbg !28
  %12 = lshr i32 %11, 1, !dbg !29
  %13 = load i32, i32* %5, align 4, !dbg !30
  %14 = add nsw i32 %13, 1, !dbg !31
  %15 = call i32 @cntz_fun(i32 noundef %12, i32 noundef %14), !dbg !32
  %16 = add i32 %10, %15, !dbg !33
  store i32 %16, i32* %3, align 4, !dbg !34
  br label %18, !dbg !34

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !35
  br label %18, !dbg !35

18:                                               ; preds = %17, %8
  %19 = load i32, i32* %3, align 4, !dbg !36
  ret i32 %19, !dbg !36
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+d,+f,+m" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "n", scope: !2, file: !3, line: 11, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "cntz_fun.c", directory: "/home/llvm/LLVM-CustomInstr", checksumkind: CSK_MD5, checksum: "91e1e67b413babd890e6ff9a61ba12f4")
!4 = !{!0}
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 1, !"target-abi", !"ilp32d"}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{i32 1, !"SmallDataLimit", i32 8}
!12 = !{!"clang version 14.0.0"}
!13 = distinct !DISubprogram(name: "cntz_fun", scope: !3, file: !3, line: 12, type: !14, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !17)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !16, !5}
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !{}
!18 = !DILocalVariable(name: "rs1", arg: 1, scope: !13, file: !3, line: 12, type: !16)
!19 = !DILocation(line: 12, column: 36, scope: !13)
!20 = !DILocalVariable(name: "k", arg: 2, scope: !13, file: !3, line: 12, type: !5)
!21 = !DILocation(line: 12, column: 45, scope: !13)
!22 = !DILocation(line: 13, column: 9, scope: !23)
!23 = distinct !DILexicalBlock(scope: !13, file: !3, line: 13, column: 9)
!24 = !DILocation(line: 13, column: 10, scope: !23)
!25 = !DILocation(line: 13, column: 9, scope: !13)
!26 = !DILocation(line: 14, column: 18, scope: !23)
!27 = !DILocation(line: 14, column: 23, scope: !23)
!28 = !DILocation(line: 14, column: 40, scope: !23)
!29 = !DILocation(line: 14, column: 43, scope: !23)
!30 = !DILocation(line: 14, column: 49, scope: !23)
!31 = !DILocation(line: 14, column: 50, scope: !23)
!32 = !DILocation(line: 14, column: 31, scope: !23)
!33 = !DILocation(line: 14, column: 29, scope: !23)
!34 = !DILocation(line: 14, column: 9, scope: !23)
!35 = !DILocation(line: 16, column: 9, scope: !23)
!36 = !DILocation(line: 17, column: 1, scope: !13)
