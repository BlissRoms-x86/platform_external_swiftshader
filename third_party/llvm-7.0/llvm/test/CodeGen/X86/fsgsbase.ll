; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=x86_64-unknown-unknown -mattr=fsgsbase | FileCheck %s

define i32 @test_x86_rdfsbase_32() {
; CHECK-LABEL: test_x86_rdfsbase_32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    rdfsbasel %eax
; CHECK-NEXT:    retq
  %res = call i32 @llvm.x86.rdfsbase.32()
  ret i32 %res
}
declare i32 @llvm.x86.rdfsbase.32() nounwind readnone

define i32 @test_x86_rdgsbase_32() {
; CHECK-LABEL: test_x86_rdgsbase_32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    rdgsbasel %eax
; CHECK-NEXT:    retq
  %res = call i32 @llvm.x86.rdgsbase.32()
  ret i32 %res
}
declare i32 @llvm.x86.rdgsbase.32() nounwind readnone

define i64 @test_x86_rdfsbase_64() {
; CHECK-LABEL: test_x86_rdfsbase_64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    rdfsbaseq %rax
; CHECK-NEXT:    retq
  %res = call i64 @llvm.x86.rdfsbase.64()
  ret i64 %res
}
declare i64 @llvm.x86.rdfsbase.64() nounwind readnone

define i64 @test_x86_rdgsbase_64() {
; CHECK-LABEL: test_x86_rdgsbase_64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    rdgsbaseq %rax
; CHECK-NEXT:    retq
  %res = call i64 @llvm.x86.rdgsbase.64()
  ret i64 %res
}
declare i64 @llvm.x86.rdgsbase.64() nounwind readnone

define void @test_x86_wrfsbase_32(i32 %x) {
; CHECK-LABEL: test_x86_wrfsbase_32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    wrfsbasel %edi
; CHECK-NEXT:    retq
  call void @llvm.x86.wrfsbase.32(i32 %x)
  ret void
}
declare void @llvm.x86.wrfsbase.32(i32) nounwind readnone

define void @test_x86_wrgsbase_32(i32 %x) {
; CHECK-LABEL: test_x86_wrgsbase_32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    wrgsbasel %edi
; CHECK-NEXT:    retq
  call void @llvm.x86.wrgsbase.32(i32 %x)
  ret void
}
declare void @llvm.x86.wrgsbase.32(i32) nounwind readnone

define void @test_x86_wrfsbase_64(i64 %x) {
; CHECK-LABEL: test_x86_wrfsbase_64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    wrfsbaseq %rdi
; CHECK-NEXT:    retq
  call void @llvm.x86.wrfsbase.64(i64 %x)
  ret void
}
declare void @llvm.x86.wrfsbase.64(i64) nounwind readnone

define void @test_x86_wrgsbase_64(i64 %x) {
; CHECK-LABEL: test_x86_wrgsbase_64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    wrgsbaseq %rdi
; CHECK-NEXT:    retq
  call void @llvm.x86.wrgsbase.64(i64 %x)
  ret void
}
declare void @llvm.x86.wrgsbase.64(i64) nounwind readnone
