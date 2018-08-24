# 说明

## 利用curl请求cfssl ca server申请证书

示例代码如下：
```
curl -d '{ "request": {"hosts":["www.example.com"], "names":[{"C":"US", "ST":"California", "L":"San Francisco", "O":"example.com"}], "CN": "www.example.com"} }' \
          ${CFSSL_HOST}/api/v1/cfssl/newcert  \
          | python -m json.tool
```          
[详情参考这里](https://github.com/cloudflare/cfssl/blob/master/doc/api/endpoint_newcert.txt)

## 利用curl请求cfssl ca server对证书签名

示例代码如下：
```
curl -H 'token: 1122334455667788' -d '{"certificate_request": "-----BEGIN CERTIFICATE REQUEST-----\nMIIBUjCB+QIBADBqMQswCQYDVQQGEwJVUzEUMBIGA1UEChMLZXhhbXBsZS5jb20x\nFjAUBgNVBAcTDVNhbiBGcmFuY2lzY28xEzARBgNVBAgTCkNhbGlmb3JuaWExGDAW\nBgNVBAMTD3d3dy5leGFtcGxlLmNvbTBZMBMGByqGSM49AgEGCCqGSM49AwEHA0IA\nBK/CtZaQ4VliKE+DLIVGLwtSxJgtUKRzGvN1EwI3HRgKDQ3l3urBIzHtUcdMq6HZ\nb8jX0O9fXYUOf4XWggrLk1agLTArBgkqhkiG9w0BCQ4xHjAcMBoGA1UdEQQTMBGC\nD3d3dy5leGFtcGxlLmNvbTAKBggqhkjOPQQDAgNIADBFAiAcvfhXnsLtzep2sKSa\n36W7G9PRbHh8zVGlw3Hph8jR1QIhAKfrgplKwXcUctU5grjQ8KXkJV8RxQUo5KKs\ngFnXYtkb\n-----END CERTIFICATE REQUEST-----\n"}' \
          ${CFSSL_HOST}/api/v1/cfssl/sign  \
          | python -m json.tool
```
[详情参考这里](https://github.com/cloudflare/cfssl/blob/master/doc/api/endpoint_authsign.txt)
