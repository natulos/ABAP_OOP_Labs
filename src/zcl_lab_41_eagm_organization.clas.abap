CLASS zcl_lab_41_eagm_organization DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      set_headquarters IMPORTING iv_headquarters TYPE string,
      get_headquarters RETURNING VALUE(rv_headquarters) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
      headquarters TYPE string.
ENDCLASS.



CLASS ZCL_LAB_41_EAGM_ORGANIZATION IMPLEMENTATION.


  METHOD set_headquarters.
    me->headquarters = iv_headquarters.
  ENDMETHOD.


  METHOD get_headquarters.
    rv_headquarters = me->headquarters.
  ENDMETHOD.
ENDCLASS.
