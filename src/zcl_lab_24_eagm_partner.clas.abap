CLASS zcl_lab_24_eagm_partner DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      get_company_capital RETURNING VALUE(rv_capital) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_24_EAGM_PARTNER IMPLEMENTATION.


  METHOD get_company_capital.
    DATA(lo_company) = NEW zcl_lab_23_eagm_company(  ).
    rv_capital = lo_company->capital.
  ENDMETHOD.
ENDCLASS.
