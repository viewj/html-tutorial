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
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String company = request.getParameter("company");
		String compNo = request.getParameter("compNo");
		String partname = request.getParameter("partname");
		String compostion = request.getParameter("compostion");
		String homepage = request.getParameter("homepage");
		String self = request.getParameter("self");
		%>
		
		<h1>회원가입</h1>
			<div>
				<!-- index페이지로 이동 -->
				<a href = "../html/htmlIndex.html">목록</a>
			</div>
			<br>
	
	<form>
		<fieldset id="loginInfo">
			<legend>
				01 로그인 정보
	
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
						<input type="text" placeholder="영문이름만사용" name="identity" id="identity" class="important" value= "<%= identity%>" autofocus >
					</td>
					<td>
						<input type="button" value="중복확인" class="orange">
					</td>
					<td>
						<font>띄어쓰기 없는 영문소문자,숫자조합</font>
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
						<font>띄어쓰기 없는 영문소문자,숫자조합</font>
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
						<font>비밀번호를 한번더 입력해주세요</font>
					</td>
				</tr>
			</table>
		</fieldset>
		
		<fieldset id="persnolInfo" class="box drop-shadow lifted">
			<legend>
				02 개인 정보
				
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
						<input type="text" id="birthday1" name="birthday1" size="6" maxlength="4" value= "<%= birthday1%>"> 년
						<input type="text" id="birthday2" name="birthday2" size="6" maxlength="2" value= "<%= birthday2%>"> 월
						<input type="text" id="birthday3" name="birthday3" size="6" maxlength="2" value= "<%= birthday3%>"> 일 
					</td>
					<td>
						<%
							String mtype = request.getParameter("mtype")==null?"":request.getParameter("mtype");
						%>
					
						<%																	
						if (mtype.equals("solar")) {
						%>
						
							<input type="radio" name="mtype" id="mtype" value="solar" checked= "checked">양력
							<input type="radio" name="mtype" id="mtype" value="lunar">음력
							
						<%	
						} else if (mtype.equals("lunar")){	
						%>
						
							<input type="radio" name="mtype" id="mtype" value="solar">양력
							<input type="radio" name="mtype" id="mtype" value="lunar" checked= "checked">음력
						
						<%
						} else {	
						%>
						<input type="radio" name="mtype" id="mtype" value="solar">양력
						<input type="radio" name="mtype" id="mtype" value="lunar">음력
						
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
							<option value="" <% if (phone1.equals("")) { %> selected <% } %>>==선택==</option>
				            <option value="02" <% if (phone1.equals("02")) { %> selected <% } %>>서울(02)</option>
				            <option value="051" <% if (phone1.equals("051")) { %> selected <% } %>>부산(051)</option>
				            <option value="053" <% if (phone1.equals("053")) { %> selected <% } %>>대구(053)</option>
				            <option value="032" <% if (phone1.equals("032")) { %> selected <% } %>>인천(032)</option>
				            <option value="062" <% if (phone1.equals("062")) { %> selected <% } %>>광주(062)</option>
				            <option value="042" <% if (phone1.equals("042")) { %> selected <% } %>>대전(042)</option>
				            <option value="052" <% if (phone1.equals("052")) { %> selected <% } %>>울산(052)</option>
				            <option value="031" <% if (phone1.equals("031")) { %> selected <% } %>>경기(031)</option>
				            <option value="033" <% if (phone1.equals("033")) { %> selected <% } %>>강원(033)</option>
				            <option value="043" <% if (phone1.equals("043")) { %> selected <% } %>>충북(043)</option>
				            <option value="041" <% if (phone1.equals("041")) { %> selected <% } %>>충남(041)</option>
				            <option value="063" <% if (phone1.equals("063")) { %> selected <% } %>>전북(063)</option>
				            <option value="061" <% if (phone1.equals("061")) { %> selected <% } %>>전남(061)</option>
				            <option value="054" <% if (phone1.equals("054")) { %> selected <% } %>>경북(054)</option>
				            <option value="055" <% if (phone1.equals("055")) { %> selected <% } %>>경남(055)</option>
				            <option value="064" <% if (phone1.equals("064")) { %> selected <% } %>>제주(064)</option>
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
						
							<input type="radio" name="telplace" id="telplace" value="home">자택
							<input type="radio" name="telplace" id="telplace" value="office" checked= "checked">직장
						
						<%
							} else if (telplace.equals("home")) {
						%>
						
							<input type="radio" name="telplace" id="telplace" value="home" checked= "checked">자택
							<input type="radio" name="telplace" id="telplace" value="office">직장
						
						<%
						} else {
						%>
						
							<input type="radio" name="telplace" id="telplace" value="home">자택
							<input type="radio" name="telplace" id="telplace" value="office">직장
						
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
						<input type="button" value="우편번호찾기" class="white"> 
					</td>
					<td>
						<%
							String addrplace = request.getParameter("addrplace")==null?"":request.getParameter("addrplace");
						%>
						
						<%																	
							if (addrplace.equals("office")) {
						%>
						
							<input type="radio" name="addrplace" id="addrplace" value="home">자택
							<input type="radio" name="addrplace" id="addrplace" value="office" checked= "checked">직장
						
						<%
							} else if (addrplace.equals("home")) {
						%>
						
							<input type="radio" name="addrplace" id="addrplace" value="home" checked= "checked">자택
							<input type="radio" name="addrplace" id="addrplace" value="office">직장
						
						<%
						} else {
						%>
						
							<input type="radio" name="addrplace" id="addrplace" value="home">자택
							<input type="radio" name="addrplace" id="addrplace" value="office">직장
						
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
			<legend>03 기타정보</legend>
			<table class="login">
				<tr>
					<td class="td0">
					</td>
					<td class="td1">
						<img src="../signUp/User_Job.gif">
					</td>
					<td  colspan="2">
						<select name="job" id="job">
							<%
								String job = request.getParameter("job");
							%>
							<option value="" <% if (job.equals("")) {%> selected <% } %>>===선택하세요=== </option>
							<option value="job1"<% if (job.equals("job1")) {%> selected <% } %>>회사원</option>
							<option value="job2" <% if (job.equals("job2")) {%> selected <% } %>>연구전문직</option>
							<option value="job3" <% if (job.equals("job3")) {%> selected <% } %>>교수</option>
							<option value="job4" <% if (job.equals("job4")) {%> selected <% } %>>학생</option>
							<option value="job5" <% if (job.equals("job5")) {%> selected <% } %>>일반자영업</option>
							<option value="job6" <% if (job.equals("job6")) {%> selected <% } %>>공무원</option>
							<option value="job7" <% if (job.equals("job7")) {%> selected <% } %>>의료인</option>
							<option value="job8" <% if (job.equals("job8")) {%> selected <% } %>>법조인</option>
							<option value="job9" <% if (job.equals("job9")) {%> selected <% } %>>종교.언론/예술인</option>
							<option value="job10" <% if (job.equals("job10")) {%> selected <% } %>>농.축.수산/광공업인</option>
							<option value="job11" <% if (job.equals("job11")) {%> selected <% } %>>단체</option>
							<option value="job12" <% if (job.equals("job12")) {%> selected <% } %>>주부</option>
							<option value="job13" <% if (job.equals("job13")) {%> selected <% } %>>무직</option>
							<option value="job14" <% if (job.equals("job14")) {%> selected <% } %>>기타</option>
								
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
						<input type="text" id="company" name="company" size="20" value= "<%= company%>">&nbsp;<input type="button" value="찾기" class="white">
					</td>
					<td>
						<%
							String companyname = request.getParameter("companyname")==null?"":request.getParameter("companyname");
						%>
						
						<%																	
							if (companyname.equals("office")) {
						%>
						
							<input type="radio" name="companyname" id="companyname" value="home">자택
							<input type="radio" name="companyname" id="companyname" value="office" checked= "checked">직장
						
						<%
							} else if (companyname.equals("home")) {
						%>
						
							<input type="radio" name="companyname" id="companyname" value="home" checked= "checked">자택
							<input type="radio" name="companyname" id="companyname" value="office">직장
						
						<%
							} else {
						%>
						
							<input type="radio" name="companyname" id="companyname" value="home">자택
							<input type="radio" name="companyname" id="companyname" value="office">직장
						
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
							<%
								String interest = request.getParameter("interest");
							%>
							
	 			          	<option value="" <% if (interest.equals("")) { %>selected <% } %>>===선택하세요===</option>
		        			<option value="inter1" <% if (interest.equals("inter1")) { %>selected <% } %>>벤처창업</option>
							<option value="inter2" <% if (interest.equals("inter2")) { %>selected <% } %>>business동향</option>
							<option value="inter3" <% if (interest.equals("inter3")) { %>selected <% } %>>정부정책동향</option>
							<option value="inter4" <% if (interest.equals("inter4")) { %>selected <% } %>>자금지원</option>
							<option value="inter5" <% if (interest.equals("inter5")) { %>selected <% } %>>신기술소식</option>
							<option value="inter6" <% if (interest.equals("inter6")) { %>selected <% } %>>취업/고용</option>
							<option value="inter7" <% if (interest.equals("inter7")) { %>selected <% } %>>기타</option>
								
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
						<%
							String webzine = request.getParameter("webzine")==null?"":request.getParameter("webzine");
						%>
						
						<%																	
							if (webzine.equals("true")) {
						%>
							<input type="radio" name="webzine" id="webzine" value="true" checked= "checked">수신동의
							<input type="radio" name="webzine" id="webzine" value="false">수신하지않음
						
						<%
							} else if (webzine.equals("false")) {
						%>
							<input type="radio" name="webzine" id="webzine" value="true">수신동의
							<input type="radio" name="webzine" id="webzine" value="false" checked= "checked">수신하지않음
						<%
							} else {
						%>
							<input type="radio" name="webzine" id="webzine" value="true">수신동의
							<input type="radio" name="webzine" id="webzine" value="false">수신하지않음
						
						<%
							}
						%>
					</td>
					<td>
						(TP에서 제공하는 Webzine 서비스를 받아보시겠습니까?)
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
						<textarea name="self" id="self"><%= self%></textarea>
					</td>
				</tr>
			</table>
		</fieldset>
		<br>
		<fieldset id="lastfield">
			<input type="submit" value="가입" class="orange">
			<input type="button" value="취소" class="orange">
		</fieldset>
	</form>
	</body>
</html>