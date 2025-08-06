-- Trigger to auto-set return date

CREATE OR REPLACE FUNCTION set_return_date()
RETURNS TRIGGER AS $$
BEGIN
  NEW.return_date := NEW.borrow_date + INTERVAL '7 days';
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER set_return_date_trigger
BEFORE INSERT ON borrowing_history
FOR EACH ROW
EXECUTE FUNCTION set_return_date();
