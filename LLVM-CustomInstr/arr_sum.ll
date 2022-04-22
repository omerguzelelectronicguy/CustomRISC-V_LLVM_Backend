; ModuleID = 'arr_sum.c'
source_filename = "arr_sum.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind optsize readonly
define dso_local i32 @arr_sum(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !dbg !8 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !14, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i32 %1, metadata !15, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i32 0, metadata !16, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i32 0, metadata !17, metadata !DIExpression()), !dbg !20
  %3 = icmp sgt i32 %1, 0, !dbg !21
  br i1 %3, label %6, label %4, !dbg !23

4:                                                ; preds = %6, %2
  %5 = phi i32 [ 0, %2 ], [ %11, %6 ], !dbg !19
  ret i32 %5, !dbg !24

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %12, %6 ], [ 0, %2 ]
  %8 = phi i32 [ %11, %6 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !17, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata i32 %8, metadata !16, metadata !DIExpression()), !dbg !19
  %9 = getelementptr inbounds i32, i32* %0, i32 %7, !dbg !25
  %10 = load i32, i32* %9, align 4, !dbg !25, !tbaa !27
  %11 = add nsw i32 %10, %8, !dbg !31
  call void @llvm.dbg.value(metadata i32 %11, metadata !16, metadata !DIExpression()), !dbg !19
  %12 = add nuw nsw i32 %7, 1, !dbg !32
  call void @llvm.dbg.value(metadata i32 %12, metadata !17, metadata !DIExpression()), !dbg !20
  %13 = icmp eq i32 %12, %1, !dbg !21
  br i1 %13, label %4, label %6, !dbg !23, !llvm.loop !33
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree norecurse nosync nounwind optsize readonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+d,+f,+m" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "arr_sum.c", directory: "/home/llvm/LLVM-CustomInstr", checksumkind: CSK_MD5, checksum: "c530376bde5e3b53aa66ffc22425aa2b")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 1, !"target-abi", !"ilp32d"}
!6 = !{i32 1, !"SmallDataLimit", i32 8}
!7 = !{!"clang version 14.0.0"}
!8 = distinct !DISubprogram(name: "arr_sum", scope: !1, file: !1, line: 4, type: !9, scopeLine: 5, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !12, !11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!13 = !{!14, !15, !16, !17}
!14 = !DILocalVariable(name: "arr", arg: 1, scope: !8, file: !1, line: 4, type: !12)
!15 = !DILocalVariable(name: "size", arg: 2, scope: !8, file: !1, line: 4, type: !11)
!16 = !DILocalVariable(name: "res", scope: !8, file: !1, line: 6, type: !11)
!17 = !DILocalVariable(name: "i", scope: !18, file: !1, line: 7, type: !11)
!18 = distinct !DILexicalBlock(scope: !8, file: !1, line: 7, column: 5)
!19 = !DILocation(line: 0, scope: !8)
!20 = !DILocation(line: 0, scope: !18)
!21 = !DILocation(line: 7, column: 23, scope: !22)
!22 = distinct !DILexicalBlock(scope: !18, file: !1, line: 7, column: 5)
!23 = !DILocation(line: 7, column: 5, scope: !18)
!24 = !DILocation(line: 11, column: 5, scope: !8)
!25 = !DILocation(line: 9, column: 16, scope: !26)
!26 = distinct !DILexicalBlock(scope: !22, file: !1, line: 8, column: 5)
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !DILocation(line: 9, column: 13, scope: !26)
!32 = !DILocation(line: 7, column: 32, scope: !22)
!33 = distinct !{!33, !23, !34, !35}
!34 = !DILocation(line: 10, column: 5, scope: !18)
!35 = !{!"llvm.loop.mustprogress"}
