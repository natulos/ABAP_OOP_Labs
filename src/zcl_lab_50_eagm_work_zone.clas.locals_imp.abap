*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations


CLASS lcl_helper IMPLEMENTATION.

  METHOD get_work_zone.
    rs_work_zone-dashboard = me->ms_work_zone-dashboard.
    rs_work_zone-launchpad = me->ms_work_zone-launchpad.
    rs_work_zone-spaces    = me->ms_work_zone-spaces.
  ENDMETHOD.

ENDCLASS.
