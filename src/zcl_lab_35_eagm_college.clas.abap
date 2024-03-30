CLASS zcl_lab_35_eagm_college DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      enroll_student IMPORTING io_student        TYPE REF TO zcl_lab_34_eagm_student
                     RETURNING VALUE(rv_student) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS ZCL_LAB_35_EAGM_COLLEGE IMPLEMENTATION.


  METHOD enroll_student.
    rv_student = io_student->get_name( ).
  ENDMETHOD.
ENDCLASS.
