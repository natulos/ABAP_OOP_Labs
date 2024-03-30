CLASS zcl_lab_61_eagm_travel DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      get_travel RETURNING VALUE(rs_fligth) TYPE /dmo/flight.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_61_eagm_travel IMPLEMENTATION.
  METHOD get_travel.

    DATA:
      ls_fligth      TYPE /dmo/flight,
      lv_fligth_date TYPE /dmo/flight_date.

    lv_fligth_date = '20241009'.

    SELECT SINGLE FROM /dmo/flight
    FIELDS *
    WHERE flight_date = @lv_fligth_date
    INTO @rs_fligth.

    TEST-SEAM select_data.

      "Codigo que solo se ejecuta en el ABAP Test
      SELECT SINGLE FROM /dmo/flight
      FIELDS *
      WHERE flight_date = @lv_fligth_date
      INTO @ls_fligth.

    END-TEST-SEAM.

    IF lv_fligth_date = '20231214'.
      rs_fligth = CORRESPONDING #( ls_fligth ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
