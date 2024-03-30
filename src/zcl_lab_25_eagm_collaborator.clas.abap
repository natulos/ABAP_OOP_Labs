CLASS zcl_lab_25_eagm_collaborator DEFINITION INHERITING FROM zcl_lab_24_eagm_partner
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-METHODS:
      get_capital RETURNING VALUE(rv_capital) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_25_EAGM_COLLABORATOR IMPLEMENTATION.


  METHOD get_capital.
    DATA(lo_partner) = new zcl_lab_24_eagm_partner( ).
    rv_capital = lo_partner->get_company_capital( ).
  ENDMETHOD.
ENDCLASS.
