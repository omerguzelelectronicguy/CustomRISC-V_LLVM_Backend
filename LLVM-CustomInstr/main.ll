; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 !dbg !11 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 127, i32* %2, align 4, !dbg !17
  call void @llvm.dbg.declare(metadata i32* %3, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 129, i32* %3, align 4, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %4, metadata !20, metadata !DIExpression()), !dbg !21
  %5 = load i32, i32* %2, align 4, !dbg !22
  %6 = load i32, i32* %3, align 4, !dbg !23
  %7 = add nsw i32 %5, %6, !dbg !24
  store i32 %7, i32* %4, align 4, !dbg !21
  %8 = load i32, i32* %4, align 4, !dbg !25
  %9 = and i32 -16777216, %8, !dbg !26
  %10 = lshr i32 %9, 24, !dbg !27
  %11 = load i32, i32* %4, align 4, !dbg !28
  %12 = and i32 16711680, %11, !dbg !29
  %13 = lshr i32 %12, 8, !dbg !30
  %14 = or i32 %10, %13, !dbg !31
  %15 = load i32, i32* %4, align 4, !dbg !32
  %16 = and i32 65280, %15, !dbg !33
  %17 = shl i32 %16, 8, !dbg !34
  %18 = or i32 %14, %17, !dbg !35
  %19 = load i32, i32* %4, align 4, !dbg !36
  %20 = and i32 255, %19, !dbg !37
  %21 = shl i32 %20, 24, !dbg !38
  %22 = or i32 %18, %21, !dbg !39
  store i32 %22, i32* %4, align 4, !dbg !40
  ret i32 0, !dbg !41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+d,+f,+m" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "main.c", directory: "/home/llvm/LLVM-CustomInstr", checksumkind: CSK_MD5, checksum: "dfc5eb7612a17d59f43a958faad96225")
!2 = !{!3}
!3 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 1, !"target-abi", !"ilp32d"}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{i32 1, !"SmallDataLimit", i32 8}
!10 = !{!"clang version 14.0.0"}
!11 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !12, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{!14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "a", scope: !11, file: !1, line: 3, type: !14)
!17 = !DILocation(line: 3, column: 9, scope: !11)
!18 = !DILocalVariable(name: "b", scope: !11, file: !1, line: 4, type: !14)
!19 = !DILocation(line: 4, column: 9, scope: !11)
!20 = !DILocalVariable(name: "c", scope: !11, file: !1, line: 7, type: !3)
!21 = !DILocation(line: 7, column: 18, scope: !11)
!22 = !DILocation(line: 7, column: 22, scope: !11)
!23 = !DILocation(line: 7, column: 26, scope: !11)
!24 = !DILocation(line: 7, column: 24, scope: !11)
!25 = !DILocation(line: 9, column: 43, scope: !11)
!26 = !DILocation(line: 9, column: 41, scope: !11)
!27 = !DILocation(line: 9, column: 46, scope: !11)
!28 = !DILocation(line: 10, column: 43, scope: !11)
!29 = !DILocation(line: 10, column: 41, scope: !11)
!30 = !DILocation(line: 10, column: 46, scope: !11)
!31 = !DILocation(line: 9, column: 53, scope: !11)
!32 = !DILocation(line: 11, column: 43, scope: !11)
!33 = !DILocation(line: 11, column: 41, scope: !11)
!34 = !DILocation(line: 11, column: 46, scope: !11)
!35 = !DILocation(line: 10, column: 52, scope: !11)
!36 = !DILocation(line: 12, column: 43, scope: !11)
!37 = !DILocation(line: 12, column: 41, scope: !11)
!38 = !DILocation(line: 12, column: 46, scope: !11)
!39 = !DILocation(line: 11, column: 53, scope: !11)
!40 = !DILocation(line: 8, column: 7, scope: !11)
!41 = !DILocation(line: 13, column: 4, scope: !11)
