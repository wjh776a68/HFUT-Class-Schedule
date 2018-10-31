//开始按钮_点击操作
var aoutput=null
var ainput=0
var path=null
var length
function start_click()
    aoutput=null
    path=浏览框获取文本("path0")
    
    ainput=编辑框获取文本("input")
    length=字符串长度(ainput)
    
    变量 file=文件读取内容(path)
    变量 retarr
    变量 n = 字符串分割(file,"</tr>",retarr)
    //  messagebox("retarr" & retarr)
    for(var i = 0; i < n; i++)
        变量 retarr2
        变量 m = 字符串分割(retarr[i],"</td>",retarr2)
        //   messagebox("retarr2" & retarr2)
        for(var i2 = 0; i2 < m; i2++)
            变量 retarr3
            变量 o = 字符串分割(retarr2[i2],"/",retarr3)
            // messagebox("retarr3" & retarr3)
            for(var i3 = 0; i3 < o; i3++)
                //messagebox(retarr3[i3])
                
                if(字符串截取左侧(retarr3[i3],length)==ainput)
                    aoutput=aoutput & "weekday" & i2 & "studule" & i & "\r\n"
                    表格设置内容("grid0",i,i2-1,retarr3[i3])
                    
                end
            end
            
            
        end
    end
    if(aoutput==null)
        aoutput="sorry,please add the database first."
    end
    编辑框设置文本("output",aoutput)
    
    
end

//退出按钮_点击操作
function exit_click()
    
    exit()
end

function hfutclass_init()
//这里添加你要执行的代码
browsesettext("path0","hfut.txt")

end
