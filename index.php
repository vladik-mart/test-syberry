<?php
require_once("vendor/autoload.php");

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

class Report
{
    private PDO $pdo;

    const WEEKDAYS = [
        1 => 'Sunday',
        2 => 'Monday',
        3 => 'Tuesday',
        4 => 'Wednesday',
        5 => 'Thursday',
        6 => 'Friday',
        7 => 'Saturday'
    ];

    const LIMIT = 3;

    public function __construct()
    {
        $this->initDatabase();
    }

    private function initDatabase()
    {
        $dsn = sprintf('mysql:host=%s;dbname=%s', $_ENV["DB_SERVER"], $_ENV["DB_NAME"]);
        $opt = [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            PDO::ATTR_EMULATE_PREPARES => false,
        ];

        $pdo = new PDO($dsn, $_ENV['DB_LOGIN'], $_ENV['DB_PASSWORD'], $opt);
        $this->pdo = $pdo;
    }

    public function get()
    {
        $reports = [];
        foreach (array_keys(self::WEEKDAYS) as $dayIndex) {
            $stmt = $this->pdo->prepare("SELECT employee_id, ROUND(AVG(hours), 2) as avg_hours, name FROM time_reports JOIN employees ON employee_id=employees.id WHERE DAYOFWEEK(date) = :dayIndex GROUP BY employee_id ORDER BY avg_hours DESC LIMIT :limit");
            $stmt->execute(['dayIndex' => $dayIndex, 'limit' => self::LIMIT]);
            $reports[$dayIndex] = $stmt->fetchAll();
        }

        return $reports;
    }

    public function __toString()
    {
        $output = '';
        $reports = $this->get();
        foreach ($reports as $dayIndex => $report) {
            $output .= sprintf('| %s | ', self::WEEKDAYS[$dayIndex]);
            foreach ($report as $key => $employeeReport) {
                $output .= sprintf(
                    '%s (%s hours)%s ',
                    $employeeReport['name'],
                    $employeeReport['avg_hours'],
                    $key == (self::LIMIT - 1) ? '' : ',');
            }
            $output .= ' |' . PHP_EOL;
        }
        return $output;
    }
}

$report = new Report();
echo $report;