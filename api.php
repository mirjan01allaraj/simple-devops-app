<?php
header('Content-Type: application/json');
require_once __DIR__ . '//app/src/db.php';

try {
  $pdo = get_pdo();
  $stmt = $pdo->query('SELECT id, name, description FROM items');
  echo json_encode(['ok' => true, 'data' => $stmt->fetchAll(PDO::FETCH_ASSOC)]);

} catch (Throwable $e) {
  echo json_encode(['ok' => false, 'error' => $e->getMessage()]);
}
