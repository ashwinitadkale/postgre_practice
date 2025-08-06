-- Function to get total books borrowed by member
CREATE OR REPLACE FUNCTION get_total_books(member INT)
RETURNS INT AS $$
DECLARE
  total INT;
BEGIN
  SELECT COUNT(*) INTO total
  FROM borrowing_history
  WHERE member_id = member;

  RETURN total;
END;
$$ LANGUAGE plpgsql;

-- Call it
SELECT get_total_books(1);
