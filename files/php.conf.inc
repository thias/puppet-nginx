# Proxy PHP requests to the FastCGI backend
location ~ \.php$ {
    # Don't bother PHP if the file doesn't exist, return the built in
    # 404 page (this also avoids "No input file specified" error pages)
    try_files     $uri =404;
    include       /etc/nginx/fastcgi.conf;
    fastcgi_pass  fpmbackend;
}

