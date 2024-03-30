CLASS zcl_lab_09_eagm_account DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      set_iban IMPORTING VALUE(iban) TYPE string,
      get_iban EXPORTING VALUE(iban) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
        iban TYPE string.
ENDCLASS.



CLASS ZCL_LAB_09_EAGM_ACCOUNT IMPLEMENTATION.


  METHOD set_iban.
    me->iban = iban.
  ENDMETHOD.


  METHOD get_iban.
    iban = me->iban.
  ENDMETHOD.
ENDCLASS.
