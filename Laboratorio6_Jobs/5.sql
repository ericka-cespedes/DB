BEGIN
DBMS_SCHEDULER.stop_job('A01',TRUE);
END;

--En este caso se puede usar disable

BEGIN
DBMS_SCHEDULER.disable('A01',TRUE);
END;