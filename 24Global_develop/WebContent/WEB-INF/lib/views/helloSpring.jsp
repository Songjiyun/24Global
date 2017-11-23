<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
table {
	border-collapse: collapse;
	border : 1px solid black;\
}
td,th {
	border : 1px solid black;
}
th {
	text-align: right;
}


</style>
</head>
<body>

<h1>Hello Spring!!</h1>

	<table>
		<tr>
			<th>timestamp</th>
			<td><input type="text" name="one"></td>
		</tr>
		<tr>
			<th>order_currency</th>
			<td><input type="text" name="two"></td>
		</tr>
		<tr>
			<th>payment_currency</th>
			<td><input type="text" name="three"></td>
		</tr>
		<tr>
			<th>timestamp</th>
			<td><input type="text" name="four"></td>
		</tr>
		<tr>
			<th>timestamp</th>
			<td><input type="text" name="five"></td>
		</tr>
		<tr>
			<th>timestamp</th>
			<td><input type="text" name="six"></td>
		</tr>
		<tr>
			<th>timestamp</th>
			<td><input type="text" name="seven"></td>
		</tr>
		<tr>
			<th>timestamp</th>
			<td><input type="text" name="eight"></td>
		</tr>
	
	</table>

<script type="text/javascript">
$(document).ready(function(){
	alert("ㅎㅇ");
	bitcoinFunction();
});

function bitcoinFunction(){
	alert("bitcoinFunction");
	
	
}; 

/* {
    "status"    : "0000",
    "data"      : {
        "timestamp"         : 1417142049868,
        "order_currency"    : "BTC",
        "payment_currency"  : "KRW",
        "bids": [{"quantity"  : "6.1189306", "price"     : "504000"},
            	 {"quantity"  : "10.35117828","price"     : "503000"}
        		],
        "asks": [
            {
                "quantity"  : "2.67575",
                "price"     : "506000"
            },
            {
                "quantity"  : "3.54343",
                "price"     : "507000"
            }
        ]
    }
} */

</script>

</body>
</html>






