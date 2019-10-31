package my;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
public class Simplecal {

public String getResult(String op1,String op2,String op){
	Double res=0.0;
	if(op.equals("+")){
		res=Double.valueOf(op1)+Double.valueOf(op2);
	}else if(op.equals("-")){
		res=Double.valueOf(op1)-Double.valueOf(op2);
	}else if(op.equals("*")){
		res=Double.valueOf(op1)*Double.valueOf(op2);
	}else if(op.equals("/")){
		res=Double.valueOf(op1)/Double.valueOf(op2);
	}
	String res1=String.valueOf(res);
	if(res1.indexOf(".")!=-1){
		Pattern p=Pattern.compile("0+");
		Matcher m=p.matcher(res1.split("\\.")[1]);
		if(m.matches())
			return res1.split("\\.")[0];
		}
	return res1;
	}
}