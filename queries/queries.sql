SELECT * FROM donor;
SELECT * FROM recipient;
SELECT * FROM inventory;

SELECT b.bank_name, t.group_name, i.units_available
FROM inventory i
JOIN blood_banks b ON i.bank_id = b.bank_id
JOIN blood_type t ON i.blood_type_id = t.blood_type_id
WHERE units_available < 5;
