CLASS zcl_lab_06_eagm_elements DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES:
      BEGIN OF ty_elem_objects,
        class     TYPE string,
        instance  TYPE string,
        reference TYPE string,
      END OF ty_elem_objects.

    CONSTANTS:
      BEGIN OF cs_currency,
        usd TYPE c LENGTH 3 VALUE 'USD',
        eur TYPE c LENGTH 3 VALUE 'EUR',
        cop TYPE c LENGTH 3 VALUE 'COP',
        btc TYPE c LENGTH 3 VALUE 'BTC',
      END OF cs_currency.

    DATA:
        ms_object TYPE ty_elem_objects.

    METHODS:
      set_elements IMPORTING VALUE(is_elements) TYPE ty_elem_objects.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_06_EAGM_ELEMENTS IMPLEMENTATION.


  METHOD set_elements.
    ms_object-class     = is_elements-class.
    ms_object-instance  = is_elements-instance.
    ms_object-reference = is_elements-reference.
  ENDMETHOD.
ENDCLASS.
