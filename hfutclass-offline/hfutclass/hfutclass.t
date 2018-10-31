//开始按钮_点击操作
var aoutput=null
var aaoutput=null
var ainput=0
var path=null
var length
var tmp=null
function main()
    var file=文件读取内容(path)    
    aoutput=null
    
    
    //ainput=编辑框获取文本("input")
    length=字符串长度(ainput)
    
    
    变量 retarr=null
    变量 n = 字符串分割(file,"</tr>",retarr)
    //  messagebox("retarr" & retarr)
    for(var i = 0; i < n; i++)
        变量 retarr2=null
        变量 m = 字符串分割(retarr[i],"</td>",retarr2)
        //   messagebox("retarr2" & retarr2)
        for(var i2 = 0; i2 < m; i2++)
            变量 retarr3=null
            变量 o = 字符串分割(retarr2[i2],"/",retarr3)
            // messagebox("retarr3" & retarr3)
            for(var i3 = 0; i3 < o; i3++)
                //messagebox(retarr3[i3])
                
                if(字符串截取左侧(retarr3[i3],length)==ainput)
                    aoutput=aoutput & "weekday" & i2 & "studule" & i & "\r\n"
                    var tmparr
                    字符串分割(retarr3[i3],"[",tmparr)
                    
                    表格设置内容("grid0",i,i2-1,字符串移除(tmparr[1],1,假))
                    //表格设置选项背景图("grid0",i,i2-1,"rc:/" & i & ".bmp",1)
                end
            end
            
            
        end
    end
    if(aoutput==null)
        aoutput="sorry,please add the database first."
    end
    // 编辑框设置文本("output",aoutput)
    
    
end


function hfutclass_init()
    //这里添加你要执行的代码
    browsesettext("path0","rc:/hfut.txt")
    
end


function path0_selectchange()
    //这里添加你要执行的代码
    aaoutput=null
    path=浏览框获取文本("path0")
    
    变量 file=文件读取内容(path)
    
    
    var tmparr
    字符串分割(file,"</table>",tmparr)
    file=tmparr[0]
    
    var tmparr2
    字符串分割(file,"一</td>",tmparr2)
    file=tmparr2[1]
    
    
    
    变量 retarr=null
    变量 n = 字符串分割(file,"</tr>",retarr)
    //  messagebox("retarr" & retarr)
    for(var i = 0; i < n; i++)
        变量 retarr2=null
        变量 m = 字符串分割(retarr[i],"</td>",retarr2)
        //   messagebox("retarr2" & retarr2)
        for(var i2 = 0; i2 < m; i2++)
            变量 retarr3=null
            变量 o = 字符串分割(retarr2[i2],"/",retarr3)
            // messagebox("retarr3" & retarr3)
            for(var i3 = 0; i3 < o; i3++)
                //messagebox(retarr3[i3])
                retarr3[i3]=字符串移除(retarr3[i3],字符串查找(retarr3[i3],">")+1,1)
                retarr3[i3]=字符串移除(retarr3[i3],字符串查找(retarr3[i3],">")+1,1)
                retarr3[i3]=字符串移除(retarr3[i3],字符串查找(retarr3[i3],">")+1,1)
                retarr3[i3]=字符串移除(retarr3[i3],字符串查找(retarr3[i3],">")+1,1)
                retarr3[i3]=字符串移除(retarr3[i3],字符串查找(retarr3[i3],"<")+1,1)             
                retarr3[i3]=字符串移除(retarr3[i3],字符串查找(retarr3[i3],"  ")+1,1)
                字符串分割(字符串替换(retarr3[i3]," ",""),"[",tmp)	
                if(tmp[0]=="" || tmp[0]=="一" || tmp[0]=="二" || tmp[0]=="三" || tmp[0]=="四" || tmp[0]=="五" || tmp[0]=="六" || tmp[0]=="日" ||tmp[0]=="1"|| tmp[0]=="2"|| tmp[0]=="3"|| tmp[0]=="4"|| tmp[0]=="5"|| tmp[0]=="6"|| tmp[0]=="7"|| tmp[0]=="8"|| tmp[0]=="9"|| tmp[0]=="10"|| tmp[0]=="11")
                    continue
                end
                // retarr3[i3]=字符串替换(retarr3[i3]," ","")
                
                if(字符串查找(aaoutput,tmp[0])==-1)
                    aaoutput=aaoutput & tmp[0]
                    调试输出(tmp[0])
                    
                    //messagebox(tmp[0])
                    
                    列表框增加文本("list0",tmp[0])
                    
                    
                end
            end            
        end
    end
    
    // for(var i = 0; i < 列表框获取选项个数("list0"); i++)
    //       if(列表框获取文本("list0",i)==null || 列表框获取文本("list0",i)==0)
    //           列表框删除选项文本("list0",i)
    //       end
    //   end
    
    
    if(aaoutput==null)
        aaoutput="sorry,please add the database first."
    end
    
end


function list0_selectchange()
    //这里添加你要执行的代码
    ainput=列表框获取选中文本("list0")
    if(ainput=="Clear Sheet")
        for(var i = 0; i < 7; i++)
        for(var i2 = 1; i2 < 12; i2++)        
            表格设置内容("grid0",i2,i,"")
            //表格取消选项背景图("grid0",i2,i)
        end  
    end
	end
    main()
end


function button0_click()
    //这里添加你要执行的代码
    ainput=编辑框获取文本("edit0")
    main()
    
    
end


//function check0_click()
    //这里添加你要执行的代码
    
 //   if(复选框获取状态("check0")==1)   
 //       var file=http获取页面源码("http://222.195.8.201/teacher/asp/jskb_table.asp?tdsourcetag=s_pctim_aiomsg","utf-8")
       
        
 //   end
    
//end
