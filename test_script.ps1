$conn = New-Object System.Data.SqlClient.SqlConnection
$conn.ConnectionString = $env:TEST_CONNECTION_STRING
$conn.Open()
$cmd = New-Object System.Data.SqlClient.SqlCommand("SELECT * FROM information_schema.tables", $conn)
$reader = $cmd.ExecuteReader()
while($reader.Read())
{
  Write-Host "Table: $($reader["table_name"])"
}
$conn.Close()
