; ModuleID = 'sladd.c'
source_filename = "sladd.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone
define dso_local void @sladd(i32 noundef %0, i32 noundef %1, i32* noundef %2) #0 !dbg !11 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !18, metadata !DIExpression()), !dbg !19
  store i32* %2, i32** %6, align 4
  call void @llvm.dbg.declare(metadata i32** %6, metadata !20, metadata !DIExpression()), !dbg !21
  %7 = load i32, i32* %4, align 4, !dbg !22
  %8 = load i32, i32* %5, align 4, !dbg !23
  %9 = shl i32 %8, 1, !dbg !24
  %10 = add i32 %7, %9, !dbg !25
  %11 = load i32*, i32** %6, align 4, !dbg !26
  store i32 %10, i32* %11, align 4, !dbg !27
  ret void, !dbg !28
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+d,+f,+m" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "sladd.c", directory: "/home/llvm/LLVM-CustomInstr", checksumkind: CSK_MD5, checksum: "d7bcaa51d4e65276b17793c9af9b480a")
!2 = !{!3}
!3 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 1, !"target-abi", !"ilp32d"}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{i32 1, !"SmallDataLimit", i32 8}
!10 = !{!"clang version 14.0.0"}
!11 = distinct !DISubprogram(name: "sladd", scope: !1, file: !1, line: 5, type: !12, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !3, !3, !14}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 32)
!15 = !{}
!16 = !DILocalVariable(name: "rs1", arg: 1, scope: !11, file: !1, line: 5, type: !3)
!17 = !DILocation(line: 5, column: 25, scope: !11)
!18 = !DILocalVariable(name: "rs2", arg: 2, scope: !11, file: !1, line: 5, type: !3)
!19 = !DILocation(line: 5, column: 43, scope: !11)
!20 = !DILocalVariable(name: "rd", arg: 3, scope: !11, file: !1, line: 5, type: !14)
!21 = !DILocation(line: 5, column: 62, scope: !11)
!22 = !DILocation(line: 6, column: 12, scope: !11)
!23 = !DILocation(line: 6, column: 19, scope: !11)
!24 = !DILocation(line: 6, column: 23, scope: !11)
!25 = !DILocation(line: 6, column: 16, scope: !11)
!26 = !DILocation(line: 6, column: 6, scope: !11)
!27 = !DILocation(line: 6, column: 10, scope: !11)
!28 = !DILocation(line: 7, column: 1, scope: !11)
