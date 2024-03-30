CLASS zcl_lab_32_eagm_internal_empl DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_eagm_04_employee .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_32_EAGM_INTERNAL_EMPL IMPLEMENTATION.


  METHOD zif_lab_eagm_04_employee~get_employees_count.
    rv_employees = '5'.
  ENDMETHOD.
ENDCLASS.
