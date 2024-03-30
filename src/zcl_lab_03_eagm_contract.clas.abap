CLASS zcl_lab_03_eagm_contract DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA:
        cntr_type TYPE c LENGTH 2.

    METHODS:
      set_creation_date IMPORTING VALUE(iv_creation_date) TYPE zdate.

  PROTECTED SECTION.
    DATA:
        creation_date TYPE zdate.

  PRIVATE SECTION.
    DATA:
        client TYPE string.
ENDCLASS.



CLASS ZCL_LAB_03_EAGM_CONTRACT IMPLEMENTATION.


  METHOD set_creation_date.
    iv_creation_date = creation_date.
  ENDMETHOD.
ENDCLASS.
