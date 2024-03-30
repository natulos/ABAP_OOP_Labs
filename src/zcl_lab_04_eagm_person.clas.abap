CLASS zcl_lab_04_eagm_person DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      set_age IMPORTING VALUE(iv_age) TYPE i,
      get_age EXPORTING VALUE(ev_age) TYPE i.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
        age TYPE i.
ENDCLASS.



CLASS ZCL_LAB_04_EAGM_PERSON IMPLEMENTATION.


  METHOD get_age.
    ev_age = age.
  ENDMETHOD.


  METHOD set_age.
    age = iv_age.
  ENDMETHOD.
ENDCLASS.
