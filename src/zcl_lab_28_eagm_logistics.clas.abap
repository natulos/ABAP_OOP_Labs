CLASS zcl_lab_28_eagm_logistics DEFINITION INHERITING FROM zcl_lab_27_eagm_factory
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      production_line REDEFINITION,
      input_products REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_28_EAGM_LOGISTICS IMPLEMENTATION.


  METHOD input_products.
    rv_input = 'Input Products'.
  ENDMETHOD.


  METHOD production_line.
    rv_production = 'Production'.
  ENDMETHOD.
ENDCLASS.
