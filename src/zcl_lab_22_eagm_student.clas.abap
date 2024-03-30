CLASS zcl_lab_22_eagm_student DEFINITION INHERITING FROM zcl_lab_21_eagm_classroom
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      assign_student.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_22_EAGM_STUDENT IMPLEMENTATION.


  METHOD assign_student.
    DATA(lo_classroom) = NEW zcl_lab_21_eagm_classroom( ).
  ENDMETHOD.
ENDCLASS.
