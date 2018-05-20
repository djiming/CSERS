var file = {
    upload: function(e){
        var file = e.target.files[0];//得到第一张选择的图片的一些参数
        var type = file.type.split('/')[0];//得到文件的类型 type:image/jpeg
        if (type !='image') {
            alert('请上传图片');
            return;
        }
        var size = Math.floor(file.size / 1024 /1024);
        if (size > 1) {
            alert('图片大小不得超过1M');
            return;
        };
        var reader = new FileReader();
        console.log(file);
        console.log(reader);
        // reader.readAsBinaryString(file);
        // reader.readAsArrayBuffer(file);
        // reader.abort(file);
        // reader.readAsText(file);
        reader.readAsDataURL(file);//开始读取指定的Blob中的内容。一旦完成，result属性中将包含一个data: URL格式的字符串以表示所读取文件的内容
        reader.onloadstart = function(){    //处理loadstart事件。该事件在读取操作开始时触发。，也就是上传的开始
            console.log('start');
        };
        reader.onprogress = function(e){    //处理progress事件。该事件在读取Blob时触发,也就是上传的过程
            var p = '已完成：' + Math.round(e.loaded / e.total * 100) + '%' ;
            $(".file_upload").find(".progress").html(p);
            // console.log(e);
            console.log('uploading');
        };
        reader.onabort = function(){        //该事件在读取操作被中断时触发。
            console.log('abort');
        };
        reader.onerror = function(){       // 该事件在读取操作发生错误时触发。
            console.log('error');
        };
        reader.onload = function(e){        // 该事件在读取操作完成时触发。
           // console.log(e);
            console.log('load complete');
        };
        reader.onloadend = function (e) {   //该事件在读取操作结束时（要么成功，要么失败）触发。
           // console.log(e);
            var dataURL = reader.result;
            var image = '<img src="'+dataURL+'"/>';
            var text = '<span>"'+dataURL+'"</span>';
            console.log(dataURL);
            //file里面存放有文件的名字(name)、格式(type)、大小(size)、上传时间(time)等等
            var name = file.name,size = Math.round(file.size / 1024),time = new Date(file.lastModified);
            time = time.getFullYear() + '年' + Math.floor(time.getMonth() + 1 )+ '月'+ time.getDate() + '日';
            var div = '<p>Name: '+name+'</p><p>Size: '+size+'kb</p>';
            var imglist = '<div class="img_box">'+image+'</div>';
            $(".img_holder").html(imglist);

            //异步提交数据
            $(".upload_bt").click(function(){
                if ($("#upload").val() =='') {
                    alert('请上传图片');
                    return;
                };
                var para = {
                    name: name,
                    url: dataURL
                };
                $.ajax({
                    url:'http://www.baidu.com',
                    type:'post',
                    data: para,
                    success: function(data){
                        if (data) {
                            alert('success');
                        }else{
                            alert('failure');
                        }
                    },
                    err: function(){
                        alert('error');
                    }
                })
            });
        };
    },
    event: function(){
        $("#upload").change(function(e){
            //$(".progress").removeClass("none");
            file.upload(e);
        });
        //删除文件
        $(".file_upload").delegate(".delete","click",function(){
            var o = $(this);
            o.parents(".img_box").remove();//并没有清空input里面的值
            $(".progress").addClass("none");
            $("#upload,#m_upload").val('');//这下就删除了
        })
    },
    init: function(){
        this.event();
    }
}
function upload(){
    file.init();
}