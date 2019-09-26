#1.txt是nmap扫描存在文件中的结果，处理后放入filename.csv中
#awk的匹配用法
#gensub()函数第一个参数匹配，第二个参数替换字符串，第三个参数替换位置（有其他用法，//2 //1 1和2位置替换。。。）
cat 1.txt | awk '/Nmap scan report/ { if(match($5, "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}")) 
{ ip=$5 } else {
	$6=gensub(/\(|\)/,"",1, $6)
ip=gensub(/\(|\)/,"",1, $6)
	}
}
	/open/ {
split($1, t, "/");
	port=t[1];
	type=toupper(t[2]);
	$1=ip"\t"port"\t"type"\t";
	$2="";
	$3=$3==""?"unknown":$3;
	$3=$2" "$3
	$2=""
	print 
	}
'> filename.csv
