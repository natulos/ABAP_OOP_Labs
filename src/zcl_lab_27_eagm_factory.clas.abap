CLASS zcl_lab_27_eagm_factory DEFINITION ABSTRACT
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      merchandise_output RETURNING VALUE(rv_merchendise)      TYPE string,
      production_line ABSTRACT RETURNING VALUE(rv_production) TYPE string,
      input_products ABSTRACT RETURNING VALUE(rv_input)       TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_27_EAGM_FACTORY IMPLEMENTATION.


  METHOD merchandise_output.
    rv_merchendise = 'Merchandise Output'.
  ENDMETHOD.
ENDCLASS.
