
#!/bin/bash

echo "Enter the file path:"
read file_path

if [ -f "$file_path" ]; then
  echo "Generating hash values..."
  
  echo "MD5: $(md5sum "$file_path" | awk '{print $1}')"
  echo "SHA1: $(sha1sum "$file_path" | awk '{print $1}')"
  echo "SHA256: $(sha256sum "$file_path" | awk '{print $1}')"
else
  echo "File not found."
fi
