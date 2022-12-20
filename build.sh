export ANDROIDSDK="/Users/anshdubey/Library/Android/sdk"
export ANDROIDNDK="/Users/anshdubey/Library/Android/sdk/ndk/25.1.8937393"
export ANDROIDAPI="30"  # Target API version of your application
export NDKAPI="21"  # Minimum supported API version of your application

p4a apk --private . \
    --package=xyz.ansh.test \
    --name "TestAppName" \
    --version 0.1 \
    --bootstrap=webview \
    --requirements=python3,hostpython3,django,asgiref==3.5.2,sqlparse==0.2.2,pytz,dj_database_url,sqlite3 \
    --permission INTERNET --permission WRITE_EXTERNAL_STORAGE \
    --port=8000 --icon icon.png \
    --arch=armeabi-v7a --arch=arm64-v8a \
