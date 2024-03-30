CLASS zcl_lab_33_eagm_expatria_empl DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_eagm_04_employee .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_33_EAGM_EXPATRIA_EMPL IMPLEMENTATION.


  METHOD zif_lab_eagm_04_employee~get_employees_count.
    rv_employees = '20'.
  ENDMETHOD.
ENDCLASS.
