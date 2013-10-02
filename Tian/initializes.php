<?php
define('DOC_ROOT', $_SERVER['DOCUMENT_ROOT']);
define('SERVER_NAME', $_SERVER['SERVER_NAME']);
define('REQUEST_TIME', $_SERVER['REQUEST_TIME']);
define('SERVER_ADDR', $_SERVER['SERVER_ADDR']);
define('REMOTE_ADDR', $_SERVER['REMOTE_ADDR']);

define('DAILY_EXPENSE_TYPES',"daily_expense_types");

require_once('db.inc');

$db = new Database();
$daily_expense_types = $db->displayAction(DAILY_EXPENSE_TYPES, null);
?>
