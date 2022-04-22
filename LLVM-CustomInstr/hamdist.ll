; ModuleID = 'hamdist.c'
source_filename = "hamdist.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone
define dso_local i32 @hamdist(i32 noundef %0, i32 noundef %1) #0 !dbg !11 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %5, metadata !20, metadata !DIExpression()), !dbg !21
  %7 = load i32, i32* %3, align 4, !dbg !22
  %8 = load i32, i32* %4, align 4, !dbg !23
  %9 = xor i32 %7, %8, !dbg !24
  store i32 %9, i32* %5, align 4, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %6, metadata !25, metadata !DIExpression()), !dbg !26
  store i32 0, i32* %6, align 4, !dbg !26
  %10 = load i32, i32* %5, align 4, !dbg !27
  %11 = lshr i32 %10, 0, !dbg !28
  %12 = and i32 1, %11, !dbg !29
  %13 = load i32, i32* %6, align 4, !dbg !30
  %14 = add i32 %13, %12, !dbg !30
  store i32 %14, i32* %6, align 4, !dbg !30
  %15 = load i32, i32* %5, align 4, !dbg !31
  %16 = lshr i32 %15, 1, !dbg !32
  %17 = and i32 1, %16, !dbg !33
  %18 = load i32, i32* %6, align 4, !dbg !34
  %19 = add i32 %18, %17, !dbg !34
  store i32 %19, i32* %6, align 4, !dbg !34
  %20 = load i32, i32* %5, align 4, !dbg !35
  %21 = lshr i32 %20, 2, !dbg !36
  %22 = and i32 1, %21, !dbg !37
  %23 = load i32, i32* %6, align 4, !dbg !38
  %24 = add i32 %23, %22, !dbg !38
  store i32 %24, i32* %6, align 4, !dbg !38
  %25 = load i32, i32* %5, align 4, !dbg !39
  %26 = lshr i32 %25, 3, !dbg !40
  %27 = and i32 1, %26, !dbg !41
  %28 = load i32, i32* %6, align 4, !dbg !42
  %29 = add i32 %28, %27, !dbg !42
  store i32 %29, i32* %6, align 4, !dbg !42
  %30 = load i32, i32* %5, align 4, !dbg !43
  %31 = lshr i32 %30, 4, !dbg !44
  %32 = and i32 1, %31, !dbg !45
  %33 = load i32, i32* %6, align 4, !dbg !46
  %34 = add i32 %33, %32, !dbg !46
  store i32 %34, i32* %6, align 4, !dbg !46
  %35 = load i32, i32* %5, align 4, !dbg !47
  %36 = lshr i32 %35, 5, !dbg !48
  %37 = and i32 1, %36, !dbg !49
  %38 = load i32, i32* %6, align 4, !dbg !50
  %39 = add i32 %38, %37, !dbg !50
  store i32 %39, i32* %6, align 4, !dbg !50
  %40 = load i32, i32* %5, align 4, !dbg !51
  %41 = lshr i32 %40, 6, !dbg !52
  %42 = and i32 1, %41, !dbg !53
  %43 = load i32, i32* %6, align 4, !dbg !54
  %44 = add i32 %43, %42, !dbg !54
  store i32 %44, i32* %6, align 4, !dbg !54
  %45 = load i32, i32* %5, align 4, !dbg !55
  %46 = lshr i32 %45, 7, !dbg !56
  %47 = and i32 1, %46, !dbg !57
  %48 = load i32, i32* %6, align 4, !dbg !58
  %49 = add i32 %48, %47, !dbg !58
  store i32 %49, i32* %6, align 4, !dbg !58
  %50 = load i32, i32* %5, align 4, !dbg !59
  %51 = lshr i32 %50, 8, !dbg !60
  %52 = and i32 1, %51, !dbg !61
  %53 = load i32, i32* %6, align 4, !dbg !62
  %54 = add i32 %53, %52, !dbg !62
  store i32 %54, i32* %6, align 4, !dbg !62
  %55 = load i32, i32* %5, align 4, !dbg !63
  %56 = lshr i32 %55, 9, !dbg !64
  %57 = and i32 1, %56, !dbg !65
  %58 = load i32, i32* %6, align 4, !dbg !66
  %59 = add i32 %58, %57, !dbg !66
  store i32 %59, i32* %6, align 4, !dbg !66
  %60 = load i32, i32* %5, align 4, !dbg !67
  %61 = lshr i32 %60, 10, !dbg !68
  %62 = and i32 1, %61, !dbg !69
  %63 = load i32, i32* %6, align 4, !dbg !70
  %64 = add i32 %63, %62, !dbg !70
  store i32 %64, i32* %6, align 4, !dbg !70
  %65 = load i32, i32* %5, align 4, !dbg !71
  %66 = lshr i32 %65, 11, !dbg !72
  %67 = and i32 1, %66, !dbg !73
  %68 = load i32, i32* %6, align 4, !dbg !74
  %69 = add i32 %68, %67, !dbg !74
  store i32 %69, i32* %6, align 4, !dbg !74
  %70 = load i32, i32* %5, align 4, !dbg !75
  %71 = lshr i32 %70, 12, !dbg !76
  %72 = and i32 1, %71, !dbg !77
  %73 = load i32, i32* %6, align 4, !dbg !78
  %74 = add i32 %73, %72, !dbg !78
  store i32 %74, i32* %6, align 4, !dbg !78
  %75 = load i32, i32* %5, align 4, !dbg !79
  %76 = lshr i32 %75, 13, !dbg !80
  %77 = and i32 1, %76, !dbg !81
  %78 = load i32, i32* %6, align 4, !dbg !82
  %79 = add i32 %78, %77, !dbg !82
  store i32 %79, i32* %6, align 4, !dbg !82
  %80 = load i32, i32* %5, align 4, !dbg !83
  %81 = lshr i32 %80, 14, !dbg !84
  %82 = and i32 1, %81, !dbg !85
  %83 = load i32, i32* %6, align 4, !dbg !86
  %84 = add i32 %83, %82, !dbg !86
  store i32 %84, i32* %6, align 4, !dbg !86
  %85 = load i32, i32* %5, align 4, !dbg !87
  %86 = lshr i32 %85, 15, !dbg !88
  %87 = and i32 1, %86, !dbg !89
  %88 = load i32, i32* %6, align 4, !dbg !90
  %89 = add i32 %88, %87, !dbg !90
  store i32 %89, i32* %6, align 4, !dbg !90
  %90 = load i32, i32* %5, align 4, !dbg !91
  %91 = lshr i32 %90, 16, !dbg !92
  %92 = and i32 1, %91, !dbg !93
  %93 = load i32, i32* %6, align 4, !dbg !94
  %94 = add i32 %93, %92, !dbg !94
  store i32 %94, i32* %6, align 4, !dbg !94
  %95 = load i32, i32* %5, align 4, !dbg !95
  %96 = lshr i32 %95, 17, !dbg !96
  %97 = and i32 1, %96, !dbg !97
  %98 = load i32, i32* %6, align 4, !dbg !98
  %99 = add i32 %98, %97, !dbg !98
  store i32 %99, i32* %6, align 4, !dbg !98
  %100 = load i32, i32* %5, align 4, !dbg !99
  %101 = lshr i32 %100, 18, !dbg !100
  %102 = and i32 1, %101, !dbg !101
  %103 = load i32, i32* %6, align 4, !dbg !102
  %104 = add i32 %103, %102, !dbg !102
  store i32 %104, i32* %6, align 4, !dbg !102
  %105 = load i32, i32* %5, align 4, !dbg !103
  %106 = lshr i32 %105, 19, !dbg !104
  %107 = and i32 1, %106, !dbg !105
  %108 = load i32, i32* %6, align 4, !dbg !106
  %109 = add i32 %108, %107, !dbg !106
  store i32 %109, i32* %6, align 4, !dbg !106
  %110 = load i32, i32* %5, align 4, !dbg !107
  %111 = lshr i32 %110, 20, !dbg !108
  %112 = and i32 1, %111, !dbg !109
  %113 = load i32, i32* %6, align 4, !dbg !110
  %114 = add i32 %113, %112, !dbg !110
  store i32 %114, i32* %6, align 4, !dbg !110
  %115 = load i32, i32* %5, align 4, !dbg !111
  %116 = lshr i32 %115, 21, !dbg !112
  %117 = and i32 1, %116, !dbg !113
  %118 = load i32, i32* %6, align 4, !dbg !114
  %119 = add i32 %118, %117, !dbg !114
  store i32 %119, i32* %6, align 4, !dbg !114
  %120 = load i32, i32* %5, align 4, !dbg !115
  %121 = lshr i32 %120, 22, !dbg !116
  %122 = and i32 1, %121, !dbg !117
  %123 = load i32, i32* %6, align 4, !dbg !118
  %124 = add i32 %123, %122, !dbg !118
  store i32 %124, i32* %6, align 4, !dbg !118
  %125 = load i32, i32* %5, align 4, !dbg !119
  %126 = lshr i32 %125, 23, !dbg !120
  %127 = and i32 1, %126, !dbg !121
  %128 = load i32, i32* %6, align 4, !dbg !122
  %129 = add i32 %128, %127, !dbg !122
  store i32 %129, i32* %6, align 4, !dbg !122
  %130 = load i32, i32* %5, align 4, !dbg !123
  %131 = lshr i32 %130, 24, !dbg !124
  %132 = and i32 1, %131, !dbg !125
  %133 = load i32, i32* %6, align 4, !dbg !126
  %134 = add i32 %133, %132, !dbg !126
  store i32 %134, i32* %6, align 4, !dbg !126
  %135 = load i32, i32* %5, align 4, !dbg !127
  %136 = lshr i32 %135, 25, !dbg !128
  %137 = and i32 1, %136, !dbg !129
  %138 = load i32, i32* %6, align 4, !dbg !130
  %139 = add i32 %138, %137, !dbg !130
  store i32 %139, i32* %6, align 4, !dbg !130
  %140 = load i32, i32* %5, align 4, !dbg !131
  %141 = lshr i32 %140, 26, !dbg !132
  %142 = and i32 1, %141, !dbg !133
  %143 = load i32, i32* %6, align 4, !dbg !134
  %144 = add i32 %143, %142, !dbg !134
  store i32 %144, i32* %6, align 4, !dbg !134
  %145 = load i32, i32* %5, align 4, !dbg !135
  %146 = lshr i32 %145, 27, !dbg !136
  %147 = and i32 1, %146, !dbg !137
  %148 = load i32, i32* %6, align 4, !dbg !138
  %149 = add i32 %148, %147, !dbg !138
  store i32 %149, i32* %6, align 4, !dbg !138
  %150 = load i32, i32* %5, align 4, !dbg !139
  %151 = lshr i32 %150, 28, !dbg !140
  %152 = and i32 1, %151, !dbg !141
  %153 = load i32, i32* %6, align 4, !dbg !142
  %154 = add i32 %153, %152, !dbg !142
  store i32 %154, i32* %6, align 4, !dbg !142
  %155 = load i32, i32* %5, align 4, !dbg !143
  %156 = lshr i32 %155, 29, !dbg !144
  %157 = and i32 1, %156, !dbg !145
  %158 = load i32, i32* %6, align 4, !dbg !146
  %159 = add i32 %158, %157, !dbg !146
  store i32 %159, i32* %6, align 4, !dbg !146
  %160 = load i32, i32* %5, align 4, !dbg !147
  %161 = lshr i32 %160, 30, !dbg !148
  %162 = and i32 1, %161, !dbg !149
  %163 = load i32, i32* %6, align 4, !dbg !150
  %164 = add i32 %163, %162, !dbg !150
  store i32 %164, i32* %6, align 4, !dbg !150
  %165 = load i32, i32* %5, align 4, !dbg !151
  %166 = lshr i32 %165, 31, !dbg !152
  %167 = and i32 1, %166, !dbg !153
  %168 = load i32, i32* %6, align 4, !dbg !154
  %169 = add i32 %168, %167, !dbg !154
  store i32 %169, i32* %6, align 4, !dbg !154
  %170 = load i32, i32* %6, align 4, !dbg !155
  ret i32 %170, !dbg !156
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+d,+f,+m" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "hamdist.c", directory: "/home/llvm/LLVM-CustomInstr", checksumkind: CSK_MD5, checksum: "3b3d8cb36219f8055b8d374961db29d1")
!2 = !{!3}
!3 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 1, !"target-abi", !"ilp32d"}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{i32 1, !"SmallDataLimit", i32 8}
!10 = !{!"clang version 14.0.0"}
!11 = distinct !DISubprogram(name: "hamdist", scope: !1, file: !1, line: 5, type: !12, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{!3, !14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "a", arg: 1, scope: !11, file: !1, line: 5, type: !14)
!17 = !DILocation(line: 5, column: 26, scope: !11)
!18 = !DILocalVariable(name: "b", arg: 2, scope: !11, file: !1, line: 5, type: !14)
!19 = !DILocation(line: 5, column: 33, scope: !11)
!20 = !DILocalVariable(name: "c", scope: !11, file: !1, line: 6, type: !3)
!21 = !DILocation(line: 6, column: 18, scope: !11)
!22 = !DILocation(line: 6, column: 22, scope: !11)
!23 = !DILocation(line: 6, column: 26, scope: !11)
!24 = !DILocation(line: 6, column: 24, scope: !11)
!25 = !DILocalVariable(name: "res", scope: !11, file: !1, line: 7, type: !3)
!26 = !DILocation(line: 7, column: 18, scope: !11)
!27 = !DILocation(line: 12, column: 31, scope: !11)
!28 = !DILocation(line: 12, column: 33, scope: !11)
!29 = !DILocation(line: 12, column: 28, scope: !11)
!30 = !DILocation(line: 12, column: 9, scope: !11)
!31 = !DILocation(line: 13, column: 31, scope: !11)
!32 = !DILocation(line: 13, column: 33, scope: !11)
!33 = !DILocation(line: 13, column: 28, scope: !11)
!34 = !DILocation(line: 13, column: 9, scope: !11)
!35 = !DILocation(line: 14, column: 31, scope: !11)
!36 = !DILocation(line: 14, column: 33, scope: !11)
!37 = !DILocation(line: 14, column: 28, scope: !11)
!38 = !DILocation(line: 14, column: 9, scope: !11)
!39 = !DILocation(line: 15, column: 31, scope: !11)
!40 = !DILocation(line: 15, column: 33, scope: !11)
!41 = !DILocation(line: 15, column: 28, scope: !11)
!42 = !DILocation(line: 15, column: 9, scope: !11)
!43 = !DILocation(line: 16, column: 31, scope: !11)
!44 = !DILocation(line: 16, column: 33, scope: !11)
!45 = !DILocation(line: 16, column: 28, scope: !11)
!46 = !DILocation(line: 16, column: 9, scope: !11)
!47 = !DILocation(line: 17, column: 31, scope: !11)
!48 = !DILocation(line: 17, column: 33, scope: !11)
!49 = !DILocation(line: 17, column: 28, scope: !11)
!50 = !DILocation(line: 17, column: 9, scope: !11)
!51 = !DILocation(line: 18, column: 31, scope: !11)
!52 = !DILocation(line: 18, column: 33, scope: !11)
!53 = !DILocation(line: 18, column: 28, scope: !11)
!54 = !DILocation(line: 18, column: 9, scope: !11)
!55 = !DILocation(line: 19, column: 31, scope: !11)
!56 = !DILocation(line: 19, column: 33, scope: !11)
!57 = !DILocation(line: 19, column: 28, scope: !11)
!58 = !DILocation(line: 19, column: 9, scope: !11)
!59 = !DILocation(line: 20, column: 31, scope: !11)
!60 = !DILocation(line: 20, column: 33, scope: !11)
!61 = !DILocation(line: 20, column: 28, scope: !11)
!62 = !DILocation(line: 20, column: 9, scope: !11)
!63 = !DILocation(line: 21, column: 31, scope: !11)
!64 = !DILocation(line: 21, column: 33, scope: !11)
!65 = !DILocation(line: 21, column: 28, scope: !11)
!66 = !DILocation(line: 21, column: 9, scope: !11)
!67 = !DILocation(line: 22, column: 31, scope: !11)
!68 = !DILocation(line: 22, column: 33, scope: !11)
!69 = !DILocation(line: 22, column: 28, scope: !11)
!70 = !DILocation(line: 22, column: 9, scope: !11)
!71 = !DILocation(line: 23, column: 31, scope: !11)
!72 = !DILocation(line: 23, column: 33, scope: !11)
!73 = !DILocation(line: 23, column: 28, scope: !11)
!74 = !DILocation(line: 23, column: 9, scope: !11)
!75 = !DILocation(line: 24, column: 31, scope: !11)
!76 = !DILocation(line: 24, column: 33, scope: !11)
!77 = !DILocation(line: 24, column: 28, scope: !11)
!78 = !DILocation(line: 24, column: 9, scope: !11)
!79 = !DILocation(line: 25, column: 31, scope: !11)
!80 = !DILocation(line: 25, column: 33, scope: !11)
!81 = !DILocation(line: 25, column: 28, scope: !11)
!82 = !DILocation(line: 25, column: 9, scope: !11)
!83 = !DILocation(line: 26, column: 31, scope: !11)
!84 = !DILocation(line: 26, column: 33, scope: !11)
!85 = !DILocation(line: 26, column: 28, scope: !11)
!86 = !DILocation(line: 26, column: 9, scope: !11)
!87 = !DILocation(line: 27, column: 31, scope: !11)
!88 = !DILocation(line: 27, column: 33, scope: !11)
!89 = !DILocation(line: 27, column: 28, scope: !11)
!90 = !DILocation(line: 27, column: 9, scope: !11)
!91 = !DILocation(line: 28, column: 31, scope: !11)
!92 = !DILocation(line: 28, column: 33, scope: !11)
!93 = !DILocation(line: 28, column: 28, scope: !11)
!94 = !DILocation(line: 28, column: 9, scope: !11)
!95 = !DILocation(line: 29, column: 31, scope: !11)
!96 = !DILocation(line: 29, column: 33, scope: !11)
!97 = !DILocation(line: 29, column: 28, scope: !11)
!98 = !DILocation(line: 29, column: 9, scope: !11)
!99 = !DILocation(line: 30, column: 31, scope: !11)
!100 = !DILocation(line: 30, column: 33, scope: !11)
!101 = !DILocation(line: 30, column: 28, scope: !11)
!102 = !DILocation(line: 30, column: 9, scope: !11)
!103 = !DILocation(line: 31, column: 31, scope: !11)
!104 = !DILocation(line: 31, column: 33, scope: !11)
!105 = !DILocation(line: 31, column: 28, scope: !11)
!106 = !DILocation(line: 31, column: 9, scope: !11)
!107 = !DILocation(line: 32, column: 31, scope: !11)
!108 = !DILocation(line: 32, column: 33, scope: !11)
!109 = !DILocation(line: 32, column: 28, scope: !11)
!110 = !DILocation(line: 32, column: 9, scope: !11)
!111 = !DILocation(line: 33, column: 31, scope: !11)
!112 = !DILocation(line: 33, column: 33, scope: !11)
!113 = !DILocation(line: 33, column: 28, scope: !11)
!114 = !DILocation(line: 33, column: 9, scope: !11)
!115 = !DILocation(line: 34, column: 31, scope: !11)
!116 = !DILocation(line: 34, column: 33, scope: !11)
!117 = !DILocation(line: 34, column: 28, scope: !11)
!118 = !DILocation(line: 34, column: 9, scope: !11)
!119 = !DILocation(line: 35, column: 31, scope: !11)
!120 = !DILocation(line: 35, column: 33, scope: !11)
!121 = !DILocation(line: 35, column: 28, scope: !11)
!122 = !DILocation(line: 35, column: 9, scope: !11)
!123 = !DILocation(line: 36, column: 31, scope: !11)
!124 = !DILocation(line: 36, column: 33, scope: !11)
!125 = !DILocation(line: 36, column: 28, scope: !11)
!126 = !DILocation(line: 36, column: 9, scope: !11)
!127 = !DILocation(line: 37, column: 31, scope: !11)
!128 = !DILocation(line: 37, column: 33, scope: !11)
!129 = !DILocation(line: 37, column: 28, scope: !11)
!130 = !DILocation(line: 37, column: 9, scope: !11)
!131 = !DILocation(line: 38, column: 31, scope: !11)
!132 = !DILocation(line: 38, column: 33, scope: !11)
!133 = !DILocation(line: 38, column: 28, scope: !11)
!134 = !DILocation(line: 38, column: 9, scope: !11)
!135 = !DILocation(line: 39, column: 31, scope: !11)
!136 = !DILocation(line: 39, column: 33, scope: !11)
!137 = !DILocation(line: 39, column: 28, scope: !11)
!138 = !DILocation(line: 39, column: 9, scope: !11)
!139 = !DILocation(line: 40, column: 31, scope: !11)
!140 = !DILocation(line: 40, column: 33, scope: !11)
!141 = !DILocation(line: 40, column: 28, scope: !11)
!142 = !DILocation(line: 40, column: 9, scope: !11)
!143 = !DILocation(line: 41, column: 31, scope: !11)
!144 = !DILocation(line: 41, column: 33, scope: !11)
!145 = !DILocation(line: 41, column: 28, scope: !11)
!146 = !DILocation(line: 41, column: 9, scope: !11)
!147 = !DILocation(line: 42, column: 31, scope: !11)
!148 = !DILocation(line: 42, column: 33, scope: !11)
!149 = !DILocation(line: 42, column: 28, scope: !11)
!150 = !DILocation(line: 42, column: 9, scope: !11)
!151 = !DILocation(line: 43, column: 31, scope: !11)
!152 = !DILocation(line: 43, column: 33, scope: !11)
!153 = !DILocation(line: 43, column: 28, scope: !11)
!154 = !DILocation(line: 43, column: 9, scope: !11)
!155 = !DILocation(line: 44, column: 12, scope: !11)
!156 = !DILocation(line: 44, column: 5, scope: !11)
