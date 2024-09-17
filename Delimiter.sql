USE HospitalManagement;

DELIMITER $$

CREATE TRIGGER MarkOverdueBills
BEFORE UPDATE ON Bills
FOR EACH ROW
BEGIN
    IF NEW.PaymentStatus = 'Pending' AND DATEDIFF(CURRENT_DATE, NEW.BillingDate) > 30 THEN
        SET NEW.PaymentStatus = 'Overdue';
    END IF;
END$$

DELIMITER ;
