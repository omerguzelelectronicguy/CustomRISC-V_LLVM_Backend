; ModuleID = 'rvrs_fun.c'
source_filename = "rvrs_fun.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

; Function Attrs: mustprogress nofree nosync nounwind optsize readnone willreturn
define dso_local i32 @rvrs_fun(i32 noundef %0) local_unnamed_addr #0 !dbg !8 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !13, metadata !DIExpression()), !dbg !14
  %2 = tail call i32 @llvm.bswap.i32(i32 %0), !dbg !15
  ret i32 %2, !dbg !16
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

attributes #0 = { mustprogress nofree nosync nounwind optsize readnone willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+d,+f,+m" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "rvrs_fun.c", directory: "/home/llvm/LLVM-CustomInstr", checksumkind: CSK_MD5, checksum: "71399f13b0883c52a664ef3aa3ebfc43")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 1, !"target-abi", !"ilp32d"}
!6 = !{i32 1, !"SmallDataLimit", i32 8}
!7 = !{!"clang version 14.0.0"}
!8 = distinct !DISubprogram(name: "rvrs_fun", scope: !1, file: !1, line: 17, type: !9, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11}
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13}
!13 = !DILocalVariable(name: "rs1", arg: 1, scope: !8, file: !1, line: 17, type: !11)
!14 = !DILocation(line: 0, scope: !8)
!15 = !DILocation(line: 19, column: 37, scope: !8)
!16 = !DILocation(line: 18, column: 5, scope: !8)
