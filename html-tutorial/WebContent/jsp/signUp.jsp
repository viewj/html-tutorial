<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE>
<html lang="en-US">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	</head>
	<body>
		<%
		String identity = request.getParameter("identity");
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");
		String jumin1 = request.getParameter("jumin1");
		String jumin2 = request.getParameter("jumin2");
		String name = request.getParameter("name");
		String birthday1 = request.getParameter("birthday1");
		String birthday2 = request.getParameter("birthday2");
		String birthday3 = request.getParameter("birthday3");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String hphone1 = request.getParameter("hphone1");
		String hphone2 = request.getParameter("hphone2");
		String hphone3 = request.getParameter("hphone3");
		String email = request.getParameter("email");
		String zipcode1 = request.getParameter("zipcode1");
		String zipcode2 = request.getParameter("zipcode2");
		String addrplace = request.getParameter("addrplace");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String company = request.getParameter("company");
		String compNo = request.getParameter("compNo");
		String partname = request.getParameter("partname");
		String compostion = request.getParameter("compostion");
		String homepage = request.getParameter("homepage");
		%>
		
		<h1>ȸ������</h1>
			<div>
				<!-- index�������� �̵� -->
				<a href = "../html/htmlIndex.html">���</a>
			</div>
			<br>
	
	<form>
		<fieldset id="loginInfo">
			<legend>
				01 �α��� ����
	
			</legend>
			<table class="login">
				<tr>
					<td class="td0">
						<img src= "../signUp/check_icon.gif">
					</td>
					<td class="td1">
						<img src="../signUp/User_ID.gif">
					
					</td>
					<td class="td2">
						<input type="text" placeholder="�����̸������" name="identity" id="identity" class="important" value= "<%= identity%>" autofocus >
					</td>
					<td>
						<input type="button" value="�ߺ�Ȯ��" class="orange">
					</td>
					<td>
						<font>���� ���� �����ҹ���,��������</font>
					</td>
				</tr>
				<tr>
					<td>
						<img src="../signUp/check_icon.gif">
					</td>
					<td>
						<img src="../signUp/User_Pw.gif">
					</td>
					<td>
						<input type="password" id="password" name="password" class="important" value= "<%=password%>">
					</td>
					<td colspan="2">
						<font>���� ���� �����ҹ���,��������</font>
					</td>
				</tr>
				<tr>
					<td>
						<img src="../signUp/check_icon.gif">
					</td>
					<td>
						<img src="../signUp/User_Pw2.gif">
					</td>
					<td>
						<input type="password" id="repassword" name="repassword" class="important" value= "<%=repassword%>">
					</td>
					<td colspan="2">
						<font>��й�ȣ�� �ѹ��� �Է����ּ���</font>
					</td>
				</tr>
			</table>
		</fieldset>
		
		<fieldset id="persnolInfo" class="box drop-shadow lifted">
			<legend>
				02 ���� ����
				
			</legend>
			<table class="login">
				<tr>
					<td class="td0">
						<img src="../signUp/check_icon.gif">
					</td>
					<td class="td1">
						<img src="../signUp/User_Name.gif">
					</td>
					<td class="td2">
						<input type="text" id="name" name="name" value= "<%= name%>">
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>
					<td>
					</td>
					<td>
						<img src="../signUp/User_Number.gif">
					</td>
					<td colspan="3">
						<input type="text" id="jumin1" name="jumin1" size="15" maxlength="6" value= "<%= jumin1%>">
						 - <input type="text" id="jumin2" name="jumin2" size="15" maxlength="7" value= "<%= jumin2%>"> 
					</td>
				</tr>
				<tr>
					<td>
					</td>
					<td>
						<img src="../signUp/User_birth.gif">
					</td>
					<td colspan="2">
						<input type="text" id="birthday1" name="birthday1" size="6" maxlength="4" value= "<%= birthday1%>"> ��
						<input type="text" id="birthday2" name="birthday2" size="6" maxlength="2" value= "<%= birthday2%>"> ��
						<input type="text" id="birthday3" name="birthday3" size="6" maxlength="2" value= "<%= birthday3%>"> �� 
					</td>
					<td>
						<%
							String mtype = request.getParameter("mtype")==null?"":request.getParameter("mtype");
						%>
					
						<%																	
						if (mtype.equals("solar")) {
						%>
						
							<input type="radio" name="mtype" id="mtype" value="solar" checked= "checked">���
							<input type="radio" name="mtype" id="mtype" value="lunar">����
							
						<%	
						} else if (mtype.equals("lunar")){	
						%>
						
							<input type="radio" name="mtype" id="mtype" value="solar">���
							<input type="radio" name="mtype" id="mtype" value="lunar" checked= "checked">����
						
						<%
						} else {	
						%>
						<input type="radio" name="mtype" id="mtype" value="solar">���
						<input type="radio" name="mtype" id="mtype" value="lunar">����
						
						<%
						}
						%>
						
						
						
					</td>
				</tr>
				<tr>
					<td>
						<img src="../signUp/check_icon.gif">
					</td>
					<td class="td1">
						<img src="../signUp/User_call.gif">
					</td>
					<td	colspan="2">
						<select id="phone1" name="phone1">
						<%
							String phone1 = request.getParameter("phone1");
						%>
	
			            <%
			            if (phone1.equals("02")) {
			            %>
			            <option value="02" selected>����(02)</option>
			            <option value="051">�λ�(051)</option>
			            <option value="053">�뱸(053)</option>
			            <option value="032">��õ(032)</option>
			            <option value="062">����(062)</option>
			            <option value="042">����(042)</option>
			            <option value="052">���(052)</option>
			            <option value="031">���(031)</option>
			            <option value="033">����(033)</option>
			            <option value="043">���(043)</option>
			            <option value="041">�泲(041)</option>
			            <option value="063">����(063)</option>
			            <option value="061">����(061)</option>
			            <option value="054">���(054)</option>
			            <option value="055">�泲(055)</option>
			            <option value="064">����(064)</option>
			                    	
			           <%
			           } else if (phone1.equals("051")) {
			           %>
			                    	
			           <option value="02" >����(02)</option>
			           <option value="051" selected>�λ�(051)</option>
			           <option value="053">�뱸(053)</option>
			           <option value="032">��õ(032)</option>
			           <option value="062">����(062)</option>
			           <option value="042">����(042)</option>
			           <option value="052">���(052)</option>
			           <option value="031">���(031)</option>
			           <option value="033">����(033)</option>
			           <option value="043">���(043)</option>
			           <option value="041">�泲(041)</option>
			           <option value="063">����(063)</option>
			           <option value="061">����(061)</option>
			           <option value="054">���(054)</option>
			           <option value="055">�泲(055)</option>
			           <option value="064">����(064)</option>
			                    	
			                    	<%
			                    	} else if (phone1.equals("053")) {
			                    	%>
			                    	
			                    	<option value="02" >����(02)</option>
			                    	<option value="051">�λ�(051)</option>
			                    	<option value="053" selected>�뱸(053)</option>
			                    	<option value="032">��õ(032)</option>
			                    	<option value="062">����(062)</option>
			                    	<option value="042">����(042)</option>
			                    	<option value="052">���(052)</option>
			                    	<option value="031">���(031)</option>
			                    	<option value="033">����(033)</option>
			                    	<option value="043">���(043)</option>
			                    	<option value="041">�泲(041)</option>
			                    	<option value="063">����(063)</option>
			                    	<option value="061">����(061)</option>
			                    	<option value="054">���(054)</option>
			                    	<option value="055">�泲(055)</option>
			                    	<option value="064">����(064)</option>
			                    	
			                    	<%
			                    	} else if (phone1.equals("032")) {
			                    	%>
			                    	
			                    	<option value="02" >����(02)</option>
			                    	<option value="051">�λ�(051)</option>
			                    	<option value="053">�뱸(053)</option>
			                    	<option value="032" selected>��õ(032)</option>
			                    	<option value="062">����(062)</option>
			                    	<option value="042">����(042)</option>
			                    	<option value="052">���(052)</option>
			                    	<option value="031">���(031)</option>
			                    	<option value="033">����(033)</option>
			                    	<option value="043">���(043)</option>
			                    	<option value="041">�泲(041)</option>
			                    	<option value="063">����(063)</option>
			                    	<option value="061">����(061)</option>
			                    	<option value="054">���(054)</option>
			                    	<option value="055">�泲(055)</option>
			                    	<option value="064">����(064)</option>
			                    	
			                    	<%
			                    	} else if (phone1.equals("062")) {
			                    	%>
			                    	
			                    	<option value="02" >����(02)</option>
			                    	<option value="051">�λ�(051)</option>
			                    	<option value="053">�뱸(053)</option>
			                    	<option value="032">��õ(032)</option>
			                    	<option value="062" selected>����(062)</option>
			                    	<option value="042">����(042)</option>
			                    	<option value="052">���(052)</option>
			                    	<option value="031">���(031)</option>
			                    	<option value="033">����(033)</option>
			                    	<option value="043">���(043)</option>
			                    	<option value="041">�泲(041)</option>
			                    	<option value="063">����(063)</option>
			                    	<option value="061">����(061)</option>
			                    	<option value="054">���(054)</option>
			                    	<option value="055">�泲(055)</option>
			                    	<option value="064">����(064)</option>
			                    	
			                    	<%
			                    	} else if (phone1.equals("042")) {
			                    	%>
			                    	
			                    	<option value="02" >����(02)</option>
			                    	<option value="051">�λ�(051)</option>
			                    	<option value="053">�뱸(053)</option>
			                    	<option value="032">��õ(032)</option>
			                    	<option value="062">����(062)</option>
			                    	<option value="042" selected>����(042)</option>
			                    	<option value="052">���(052)</option>
			                    	<option value="031">���(031)</option>
			                    	<option value="033">����(033)</option>
			                    	<option value="043">���(043)</option>
			                    	<option value="041">�泲(041)</option>
			                    	<option value="063">����(063)</option>
			                    	<option value="061">����(061)</option>
			                    	<option value="054">���(054)</option>
			                    	<option value="055">�泲(055)</option>
			                    	<option value="064">����(064)</option>
			                    	
			                    	<%
			                    	} else if (phone1.equals("052")) {
			                    	%>
			                    	
			                    	<option value="02" >����(02)</option>
			                    	<option value="051">�λ�(051)</option>
			                    	<option value="053">�뱸(053)</option>
			                    	<option value="032">��õ(032)</option>
			                    	<option value="062">����(062)</option>
			                    	<option value="042">����(042)</option>
			                    	<option value="052" selected>���(052)</option>
			                    	<option value="031">���(031)</option>
			                    	<option value="033">����(033)</option>
			                    	<option value="043">���(043)</option>
			                    	<option value="041">�泲(041)</option>
			                    	<option value="063">����(063)</option>
			                    	<option value="061">����(061)</option>
			                    	<option value="054">���(054)</option>
			                    	<option value="055">�泲(055)</option>
			                    	<option value="064">����(064)</option>
			                    	
			                    	<%
			                    	} else if (phone1.equals("031")) {
			                    	%>
			                    	
			                    	<option value="02" >����(02)</option>
			                    	<option value="051">�λ�(051)</option>
			                    	<option value="053">�뱸(053)</option>
			                    	<option value="032">��õ(032)</option>
			                    	<option value="062">����(062)</option>
			                    	<option value="042">����(042)</option>
			                    	<option value="052">���(052)</option>
			                    	<option value="031" selected>���(031)</option>
			                    	<option value="033">����(033)</option>
			                    	<option value="043">���(043)</option>
			                    	<option value="041">�泲(041)</option>
			                    	<option value="063">����(063)</option>
			                    	<option value="061">����(061)</option>
			                    	<option value="054">���(054)</option>
			                    	<option value="055">�泲(055)</option>
			                    	<option value="064">����(064)</option>
			                    	
			                    	<%
			                    	} else if (phone1.equals("033")) {
			                    	%>
			                    	
			                    	<option value="02" >����(02)</option>
			                    	<option value="051">�λ�(051)</option>
			                    	<option value="053">�뱸(053)</option>
			                    	<option value="032">��õ(032)</option>
			                    	<option value="062">����(062)</option>
			                    	<option value="042">����(042)</option>
			                    	<option value="052">���(052)</option>
			                    	<option value="031">���(031)</option>
			                    	<option value="033" selected>����(033)</option>
			                    	<option value="043">���(043)</option>
			                    	<option value="041">�泲(041)</option>
			                    	<option value="063">����(063)</option>
			                    	<option value="061">����(061)</option>
			                    	<option value="054">���(054)</option>
			                    	<option value="055">�泲(055)</option>
			                    	<option value="064">����(064)</option>
			                    	
			                    	<%
			                    	} else if (phone1.equals("043")) {
			                    	%>
			                    	
			                    	<option value="02" >����(02)</option>
			                    	<option value="051">�λ�(051)</option>
			                    	<option value="053">�뱸(053)</option>
			                    	<option value="032">��õ(032)</option>
			                    	<option value="062">����(062)</option>
			                    	<option value="042">����(042)</option>
			                    	<option value="052">���(052)</option>
			                    	<option value="031">���(031)</option>
			                    	<option value="033">����(033)</option>
			                    	<option value="043" selected>���(043)</option>
			                    	<option value="041">�泲(041)</option>
			                    	<option value="063">����(063)</option>
			                    	<option value="061">����(061)</option>
			                    	<option value="054">���(054)</option>
			                    	<option value="055">�泲(055)</option>
			                    	<option value="064">����(064)</option>
			                    	
			                    	<%
			                    	} else if (phone1.equals("041")) {
			                    	%>
			                    	
			                    	<option value="02" >����(02)</option>
			                    	<option value="051">�λ�(051)</option>
			                    	<option value="053">�뱸(053)</option>
			                    	<option value="032">��õ(032)</option>
			                    	<option value="062">����(062)</option>
			                    	<option value="042">����(042)</option>
			                    	<option value="052">���(052)</option>
			                    	<option value="031">���(031)</option>
			                    	<option value="033">����(033)</option>
			                    	<option value="043">���(043)</option>
			                    	<option value="041" selected>�泲(041)</option>
			                    	<option value="063">����(063)</option>
			                    	<option value="061">����(061)</option>
			                    	<option value="054">���(054)</option>
			                    	<option value="055">�泲(055)</option>
			                    	<option value="064">����(064)</option>
			                    	
			                    	<%
			                    	} else if (phone1.equals("063")) {
			                    	%>
			                    	
			                    	<option value="02" >����(02)</option>
			                    	<option value="051">�λ�(051)</option>
			                    	<option value="053">�뱸(053)</option>
			                    	<option value="032">��õ(032)</option>
			                    	<option value="062">����(062)</option>
			                    	<option value="042">����(042)</option>
			                    	<option value="052">���(052)</option>
			                    	<option value="031">���(031)</option>
			                    	<option value="033">����(033)</option>
			                    	<option value="043">���(043)</option>
			                    	<option value="041">�泲(041)</option>
			                    	<option value="063" selected>����(063)</option>
			                    	<option value="061">����(061)</option>
			                    	<option value="054">���(054)</option>
			                    	<option value="055">�泲(055)</option>
			                    	<option value="064">����(064)</option>
			                    	
			                    	<%
			                    	} else if (phone1.equals("061")) {
			                    	%>
			                    	
			                    	<option value="02" >����(02)</option>
			                    	<option value="051">�λ�(051)</option>
			                    	<option value="053">�뱸(053)</option>
			                    	<option value="032">��õ(032)</option>
			                    	<option value="062">����(062)</option>
			                    	<option value="042">����(042)</option>
			                    	<option value="052">���(052)</option>
			                    	<option value="031">���(031)</option>
			                    	<option value="033">����(033)</option>
			                    	<option value="043">���(043)</option>
			                    	<option value="041">�泲(041)</option>
			                    	<option value="063">����(063)</option>
			                    	<option value="061" selected>����(061)</option>
			                    	<option value="054">���(054)</option>
			                    	<option value="055">�泲(055)</option>
			                    	<option value="064">����(064)</option>
			                    	
			                    	<%
			                    	} else if (phone1.equals("054")) {
			                    	%>
			                    	
			                    	<option value="02" >����(02)</option>
			                    	<option value="051">�λ�(051)</option>
			                    	<option value="053">�뱸(053)</option>
			                    	<option value="032">��õ(032)</option>
			                    	<option value="062">����(062)</option>
			                    	<option value="042">����(042)</option>
			                    	<option value="052">���(052)</option>
			                    	<option value="031">���(031)</option>
			                    	<option value="033">����(033)</option>
			                    	<option value="043">���(043)</option>
			                    	<option value="041">�泲(041)</option>
			                    	<option value="063">����(063)</option>
			                    	<option value="061">����(061)</option>
			                    	<option value="054" selected>���(054)</option>
			                    	<option value="055">�泲(055)</option>
			                    	<option value="064">����(064)</option>
			                    	
			                    	<%
			                    	} else if (phone1.equals("055")) {
			                    	%>
			                    	
			                    	<option value="02" >����(02)</option>
			                    	<option value="051">�λ�(051)</option>
			                    	<option value="053">�뱸(053)</option>
			                    	<option value="032">��õ(032)</option>
			                    	<option value="062">����(062)</option>
			                    	<option value="042">����(042)</option>
			                    	<option value="052">���(052)</option>
			                    	<option value="031">���(031)</option>
			                    	<option value="033">����(033)</option>
			                    	<option value="043">���(043)</option>
			                    	<option value="041">�泲(041)</option>
			                    	<option value="063">����(063)</option>
			                    	<option value="061">����(061)</option>
			                    	<option value="054">���(054)</option>
			                    	<option value="055" selected>�泲(055)</option>
			                    	<option value="064">����(064)</option>
			                    	
			                    	<%
			                    	} else if (phone1.equals("064")) {
			                    	%>
			                    	
			                    	<option value="02" >����(02)</option>
			                    	<option value="051">�λ�(051)</option>
			                    	<option value="053">�뱸(053)</option>
			                    	<option value="032">��õ(032)</option>
			                    	<option value="062">����(062)</option>
			                    	<option value="042">����(042)</option>
			                    	<option value="052">���(052)</option>
			                    	<option value="031" selected>���(031)</option>
			                    	<option value="033">����(033)</option>
			                    	<option value="043">���(043)</option>
			                    	<option value="041">�泲(041)</option>
			                    	<option value="063">����(063)</option>
			                    	<option value="061">����(061)</option>
			                    	<option value="054">���(054)</option>
			                    	<option value="055">�泲(055)</option>
			                    	<option value="064" selected>����(064)</option>
 									
 									<%
			                    	} else {
			                    	%>
			                 		<option value="">==����==</option>
			                    	<option value="02">����(02)</option>
			                    	<option value="051">�λ�(051)</option>
			                    	<option value="053">�뱸(053)</option>
			                    	<option value="032">��õ(032)</option>
			                    	<option value="062">����(062)</option>
			                    	<option value="042">����(042)</option>
			                    	<option value="052">���(052)</option>
			                    	<option value="031">���(031)</option>
			                    	<option value="033">����(033)</option>
			                    	<option value="043">���(043)</option>
			                    	<option value="041">�泲(041)</option>
			                    	<option value="063">����(063)</option>
			                    	<option value="061">����(061)</option>
			                    	<option value="054">���(054)</option>
			                    	<option value="055">�泲(055)</option>
			                    	<option value="064">����(064)</option>
			                    				                    	
 									<%
			                    	}
 									%>
 	
						</select> -
						<input type="tel" id="phone2" name="phone2" size="6" maxlength="4" value= "<%= phone2%>"> -
						<input type="tel" id="phone3" name="phone3" size="6" maxlength="4" value= "<%= phone3%>">
					</td>
					<td>
						<%
							String telplace = request.getParameter("telplace")==null?"":request.getParameter("telplace");
						%>
						
						<%																	
							if (telplace.equals("office")) {
						%>
						
							<input type="radio" name="telplace" id="telplace" value="home">����
							<input type="radio" name="telplace" id="telplace" value="office" checked= "checked">����
						
						<%
							} else if (telplace.equals("home")) {
						%>
						
							<input type="radio" name="telplace" id="telplace" value="home" checked= "checked">����
							<input type="radio" name="telplace" id="telplace" value="office">����
						
						<%
						} else {
						%>
						
							<input type="radio" name="telplace" id="telplace" value="home">����
							<input type="radio" name="telplace" id="telplace" value="office">����
						
						<%
						}
						%>
					</td>
				</tr>
				<tr>
					<td>
						<img src="../signUp/check_icon.gif">
					</td>
					<td class="td1">
						<img src="../signUp/User_Phone.gif">
					</td>
					<td colspan="3">
						<input type="text" id="hphone1" name="hphone1" size="6" maxlength="3" value= "<%= hphone1%>"> -
						<input type="text" id="hphone2" name="hphone2" size="6" maxlength="3" value= "<%= hphone2%>"> -
						<input type="text" id="hphone3" name="hphone3" size="6" maxlength="3" value= "<%= hphone3%>">
					</td>
				</tr>
				<tr>
					<td>
						<img src="../signUp/check_icon.gif">
					</td>
					<td>
						<img src="../signUp/User_Email.gif">
					</td>
					<td colspan="3">
						<input type="email" id="eamil" name="email" placeholder="example@example.com" size="40" value= "<%= email%>">
					</td>
				</tr>
				<tr>
					<td>
						<img src="../signUp/check_icon.gif">
					</td>
					<td class="td1">
						<img src="../signUp/User_addr.gif">
					</td>
					<td colspan="2">
						<input type="text" id="zipcode1" name="zipcode1" size="6" maxlength="3" value= "<%= zipcode1%>"> -
						<input type="text" id="zipcode2" name="zipcode2" size="6" maxlength="3" value= "<%= zipcode2%>">&nbsp;
						<input type="button" value="�����ȣã��" class="white"> 
					</td>
					<td>
						<%
							String addrplace = request.getParameter("addrplace")==null?"":request.getParameter("addrplace");
						%>
						
						<%																	
							if (addrplace.equals("office")) {
						%>
						
							<input type="radio" name="addrplace" id="addrplace" value="home">����
							<input type="radio" name="addrplace" id="addrplace" value="office" checked= "checked">����
						
						<%
							} else if (addrplace.equals("home")) {
						%>
						
							<input type="radio" name="addrplace" id="addrplace" value="home" checked= "checked">����
							<input type="radio" name="addrplace" id="addrplace" value="office">����
						
						<%
						} else {
						%>
						
							<input type="radio" name="addrplace" id="addrplace" value="home">����
							<input type="radio" name="addrplace" id="addrplace" value="office">����
						
						<%
						}
						%>
					</td>
				</tr>
				<tr>
					<td>
					</td>
					<td>
					</td>
					<td colspan="3">
						<input type="text" name="addr1" id="addr1" size="40" value= "<%= addr1%>">
					</td>
				</tr>
				<tr>
					<td>
					</td>
					<td>
					</td>
					<td colspan="3">
						<input type="text" name="addr2" id="addr2" size="40" value= "<%= addr2%>">
					</td>
				</tr>
			</table>
		</fieldset>
		
		<fieldset id="persnolInfo" class="box drop-shadow lifted">
			<legend>03 ��Ÿ����</legend>
			<table class="login">
				<tr>
					<td class="td0">
					</td>
					<td class="td1">
						<img src="../signUp/User_Job.gif">
					</td>
					<td  colspan="2">
						<select name="job" id="job">
							<option value="" selected="selected">===�����ϼ���===</option>
							<option value="job1">ȸ���</option>
							<option value="job2">����������</option>
							<option value="job3">����</option>
							<option value="job4">�л�</option>
							<option value="job5">�Ϲ��ڿ���</option>
							<option value="job6">������</option>
							<option value="job7">�Ƿ���</option>
							<option value="job8">������</option>
							<option value="job9">����.���/������</option>
							<option value="job10">��.��.����/��������</option>
							<option value="job11">��ü</option>
							<option value="job12">�ֺ�</option>
							<option value="job13">����</option>
							<option value="job14">��Ÿ</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>
					</td>
					<td>
						<img src="../signUp/User_company.gif">
					</td>
					<td class="td2">
						<input type="text" id="company" name="company" size="20" value= "<%= company%>">&nbsp;<input type="button" value="ã��" class="white">
					</td>
					<td>
						<%
							String companyname = request.getParameter("companyname")==null?"":request.getParameter("companyname");
						%>
						
						<%																	
							if (companyname.equals("office")) {
						%>
						
							<input type="radio" name="companyname" id="companyname" value="home">����
							<input type="radio" name="companyname" id="companyname" value="office" checked= "checked">����
						
						<%
							} else if (companyname.equals("home")) {
						%>
						
							<input type="radio" name="companyname" id="companyname" value="home" checked= "checked">����
							<input type="radio" name="companyname" id="companyname" value="office">����
						
						<%
						} else {
						%>
						
							<input type="radio" name="companyname" id="companyname" value="home">����
							<input type="radio" name="companyname" id="companyname" value="office">����
						
						<%
						}
						%>
					</td>
				</tr>
				<tr>
					<td>
					</td>
					<td>
						<img src="../signUp/User_CompanyNum.gif">
					</td>
					<td colspan="2">
						<input type="text" id="compNo" name="compNo" size="20" value= "<%= compNo%>"> 
					</td>
				</tr>
				<tr>
					<td>
					</td>
					<td>
						<img src="../signUp/User_division.gif">
					</td>
					<td colspan="2">
						<input type="tel" id="division" name="partname" size="20" value= "<%= partname%>">
					</td>
				</tr>
				<tr>
					<td>
					</td>
					<td class="td1">
						<img src="../signUp/User_Grade.gif">
					</td>
					<td colspan="2">
						<input type="text" id="compostion" name="compostion" size="20" value= "<%= compostion%>">
					</td>
				</tr>
				<tr>
					<td>
					</td>
					<td>
						<img src="../signUp/User_Hobby.gif">
					</td>
					<td colspan="2">
						<select name="interest" id="interest">
							<option value="" selected="selected">===�����ϼ���===</option>
	        				<option value="inter1">��óâ��</option>
							<option value="inter2">business����</option>
							<option value="inter3">������å����</option>
							<option value="inter4">�ڱ�����</option>
							<option value="inter5">�ű���ҽ�</option>
							<option value="inter6">���/���</option>
							<option value="inter7">��Ÿ</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>
					</td>
					<td>
						<img src="../signUp/TP_Recieve.gif">
					</td>
					<td>
						<input type="radio" name="webzine" id="webzine" value="true">���ŵ���
						<input type="radio" name="webzine" id="webzine" value="false">������������
					</td>
					<td>
						(TP���� �����ϴ� Webzine ���񽺸� �޾ƺ��ðڽ��ϱ�?)
					</td>
				</tr>
				<tr>
					<td>
					</td>
					<td>
						<img src="../signUp/User_Page.gif">
					</td>
					<td colspan="2">
						<input type="text" name="homepage" id="homepage" size="47" value= "<%= homepage%>">
					</td>
				</tr>
				<tr>
					<td>
					</td>
					<td>
						<img src="../signUp/User_intro.gif">
					</td>
					<td colspan="2">
						<textarea name="self" id="self"></textarea>
					</td>
				</tr>
			</table>
		</fieldset>
		<br>
		<fieldset id="lastfield">
			<input type="submit" value="����" class="orange">
			<input type="button" value="���" class="orange">
		</fieldset>
	</form>
	</body>
</html>