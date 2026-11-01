USE mise_en_place;

INSERT INTO stores (name, address, city) VALUES
  ('Negozio Centro', 'Via Roma 10', 'Milano'),
  ('Negozio Stazione', 'Piazza Duca d''Aosta 2', 'Milano');

INSERT INTO employees (store_id, first_name, last_name, email, role, hourly_cost, hired_at) VALUES
  (1, 'Marco', 'Rossi', 'marco.rossi@example.com', 'manager', 14.50, '2025-01-10'),
  (1, 'Giulia', 'Bianchi', 'giulia.bianchi@example.com', 'cucina', 11.00, '2025-03-01'),
  (1, 'Luca', 'Verdi', 'luca.verdi@example.com', 'cassa', 10.50, '2025-06-15'),
  (2, 'Sara', 'Neri', 'sara.neri@example.com', 'manager', 14.00, '2024-11-20'),
  (2, 'Paolo', 'Gialli', 'paolo.gialli@example.com', 'cucina', 11.00, '2025-09-01');

INSERT INTO ingredients (name, unit, unit_cost, supplier) VALUES
  ('Farina 00', 'kg', 0.900, 'Molino Rossi'),
  ('Strutto', 'kg', 4.500, 'Molino Rossi'),
  ('Prosciutto crudo', 'kg', 22.000, 'Salumificio Parma'),
  ('Squacquerone', 'kg', 9.000, 'Caseificio Romagna'),
  ('Rucola', 'kg', 8.000, 'Ortofrutta Sole'),
  ('Mozzarella', 'kg', 7.500, 'Caseificio Romagna');

INSERT INTO recipes (name, category, selling_price) VALUES
  ('Piadina crudo e squacquerone', 'Piadine', 6.50),
  ('Piadina mozzarella e rucola', 'Piadine', 5.50);

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
  (1, 1, 0.100), (1, 2, 0.010), (1, 3, 0.060), (1, 4, 0.050), (1, 5, 0.010),
  (2, 1, 0.100), (2, 2, 0.010), (2, 6, 0.080), (2, 5, 0.015);

INSERT INTO shifts (employee_id, store_id, shift_date, start_time, end_time) VALUES
  (1, 1, '2026-11-02', '09:00', '17:00'),
  (2, 1, '2026-11-02', '11:00', '19:00'),
  (3, 1, '2026-11-03', '12:00', '20:00'),
  (4, 2, '2026-11-02', '10:00', '18:00'),
  (5, 2, '2026-11-02', '12:00', '20:00'),
  (5, 2, '2026-11-03', '12:00', '20:00');