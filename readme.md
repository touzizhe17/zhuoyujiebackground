# 琢玉界

# JS 部分
1. 使用html5提供的formData 去实现ajax上传图片

``` 
$.ajax({
                type: 'POST',
                url: url,
                data: imageForm,
                processData: false,  // 告诉jQuery不要去处理发送的数据
                contentType: false,   // 告诉jQuery不要去设置Content-Type请求头
                success: function (data) {
                    if(data.code==200){
                        $('#img').attr('src',data.url)
                    }

                },
                error: function () {
                }
            });

```
 