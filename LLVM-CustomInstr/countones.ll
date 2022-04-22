; ModuleID = 'countones.c'
source_filename = "countones.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind optsize readnone
define dso_local i32 @countones(i32 noundef %0) local_unnamed_addr #0 !dbg !8 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !13, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.value(metadata i32 0, metadata !14, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.value(metadata i32 0, metadata !15, metadata !DIExpression()), !dbg !19
  br label %3, !dbg !20

2:                                                ; preds = %3
  ret i32 %8, !dbg !21

3:                                                ; preds = %1, %3
  %4 = phi i32 [ 0, %1 ], [ %9, %3 ]
  %5 = phi i32 [ 0, %1 ], [ %8, %3 ]
  call void @llvm.dbg.value(metadata i32 %4, metadata !15, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i32 %5, metadata !14, metadata !DIExpression()), !dbg !18
  %6 = lshr i32 %0, %4, !dbg !22
  %7 = and i32 %6, 1, !dbg !25
  %8 = add i32 %7, %5, !dbg !26
  call void @llvm.dbg.value(metadata i32 %8, metadata !14, metadata !DIExpression()), !dbg !18
  %9 = add nuw nsw i32 %4, 1, !dbg !27
  call void @llvm.dbg.value(metadata i32 %9, metadata !15, metadata !DIExpression()), !dbg !19
  %10 = icmp eq i32 %9, 32, !dbg !28
  br i1 %10, label %2, label %3, !dbg !20, !llvm.loop !29
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree norecurse nosync nounwind optsize readnone "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+d,+f,+m" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "countones.c", directory: "/home/llvm/LLVM-CustomInstr", checksumkind: CSK_MD5, checksum: "60daa4b336a46ee5c8665adce2bc20d0")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 1, !"target-abi", !"ilp32d"}
!6 = !{i32 1, !"SmallDataLimit", i32 8}
!7 = !{!"clang version 14.0.0"}
!8 = distinct !DISubprogram(name: "countones", scope: !1, file: !1, line: 6, type: !9, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11}
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !14, !15}
!13 = !DILocalVariable(name: "rs1", arg: 1, scope: !8, file: !1, line: 6, type: !11)
!14 = !DILocalVariable(name: "res", scope: !8, file: !1, line: 8, type: !11)
!15 = !DILocalVariable(name: "i", scope: !16, file: !1, line: 9, type: !17)
!16 = distinct !DILexicalBlock(scope: !8, file: !1, line: 9, column: 5)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DILocation(line: 0, scope: !8)
!19 = !DILocation(line: 0, scope: !16)
!20 = !DILocation(line: 9, column: 5, scope: !16)
!21 = !DILocation(line: 38, column: 5, scope: !8)
!22 = !DILocation(line: 10, column: 27, scope: !23)
!23 = distinct !DILexicalBlock(scope: !24, file: !1, line: 9, column: 29)
!24 = distinct !DILexicalBlock(scope: !16, file: !1, line: 9, column: 5)
!25 = !DILocation(line: 10, column: 32, scope: !23)
!26 = !DILocation(line: 10, column: 19, scope: !23)
!27 = !DILocation(line: 9, column: 26, scope: !24)
!28 = !DILocation(line: 9, column: 20, scope: !24)
!29 = distinct !{!29, !20, !30, !31}
!30 = !DILocation(line: 11, column: 5, scope: !16)
!31 = !{!"llvm.loop.mustprogress"}
