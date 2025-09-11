<?php
function get_pdo(): PDO {
  return new PDO(
    'mysql:host=localhost;dbname=appdb;charset=utf8mb4',
    'root', ''
  );
}
