# Try to send all non-existing files to the main /index.php (Frameworks)
location @indexphp {
  if (-f $document_root/index.php) { rewrite .* /index.php last; }
}
try_files $uri @indexphp;

