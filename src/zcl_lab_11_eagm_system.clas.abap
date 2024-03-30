CLASS zcl_lab_11_eagm_system DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA:
        architecture TYPE string VALUE '64BITS'.

    METHODS:
      get_architecture EXPORTING ev_architecture TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_11_EAGM_SYSTEM IMPLEMENTATION.


  METHOD get_architecture.
    ev_architecture = me->architecture.
  ENDMETHOD.
ENDCLASS.
