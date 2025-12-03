# 生成文件名
file_name="docker-compose.yml"

# 通过 rclone 上传,并生成下载链接
rclone lsf r2:test/md/

# 先删
rclone deletefile r2:test/md/$file_name
# 再上传
rclone copy $file_name r2:test/md/

echo "路径 : https://pub-4cbde83fd01f4fe98e2672c3b1f14315.r2.dev/md/$file_name"
