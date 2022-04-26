; ModuleID = 'sladd.c'
source_filename = "sladd.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @sladd(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !10 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !15, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.value(metadata i32 %1, metadata !16, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.value(metadata i32* %2, metadata !17, metadata !DIExpression()), !dbg !18
  %4 = shl i32 %1, 1, !dbg !19
  %5 = add i32 %4, %0, !dbg !20
  store i32 %5, i32* %2, align 4, !dbg !21, !tbaa !22
  ret void, !dbg !26
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind optsize willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+d,+f,+m" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "sladd.c", directory: "/home/llvm/LLVM-CustomInstr", checksumkind: CSK_MD5, checksum: "d7bcaa51d4e65276b17793c9af9b480a")
!2 = !{!3}
!3 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 1, !"target-abi", !"ilp32d"}
!8 = !{i32 1, !"SmallDataLimit", i32 8}
!9 = !{!"clang version 14.0.0"}
!10 = distinct !DISubprogram(name: "sladd", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !3, !3, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 32)
!14 = !{!15, !16, !17}
!15 = !DILocalVariable(name: "rs1", arg: 1, scope: !10, file: !1, line: 5, type: !3)
!16 = !DILocalVariable(name: "rs2", arg: 2, scope: !10, file: !1, line: 5, type: !3)
!17 = !DILocalVariable(name: "rd", arg: 3, scope: !10, file: !1, line: 5, type: !13)
!18 = !DILocation(line: 0, scope: !10)
!19 = !DILocation(line: 6, column: 23, scope: !10)
!20 = !DILocation(line: 6, column: 16, scope: !10)
!21 = !DILocation(line: 6, column: 10, scope: !10)
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = !DILocation(line: 7, column: 1, scope: !10)
