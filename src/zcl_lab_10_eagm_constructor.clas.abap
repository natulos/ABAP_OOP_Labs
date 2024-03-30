CLASS zcl_lab_10_eagm_constructor DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-METHODS:
      class_constructor.

    CLASS-DATA:
      log   TYPE string.

    METHODS:
      constructor.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS ZCL_LAB_10_EAGM_CONSTRUCTOR IMPLEMENTATION.


  METHOD class_constructor.
    log = |Static Constructor-->|.
  ENDMETHOD.


  METHOD constructor.
    log = |{ log }-Instance Constructor-->|.
  ENDMETHOD.
ENDCLASS.
