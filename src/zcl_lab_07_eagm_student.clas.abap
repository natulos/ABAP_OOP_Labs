CLASS zcl_lab_07_eagm_student DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA:
        birth_date TYPE zdate READ-ONLY.

    METHODS:
      set_birth_date IMPORTING VALUE(iv_birth_date) TYPE zdate.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_07_EAGM_STUDENT IMPLEMENTATION.


  METHOD set_birth_date.
    birth_date = iv_birth_date.
  ENDMETHOD.
ENDCLASS.
