<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>MyPage</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="/resources/css/share/userprofile.css">

</head>
<body>
	<form id="myForm" name="myForm" method="post">
		<!-- *Vo.jsp s -->
		<%@include file="shareVo.jsp"%>
		<!-- *Vo.jsp e -->
		<input type="hidden" name="memberSeq" value="${sessSeq}">
		<div class="navbar" style="background-color:rgb(142, 68, 173); height: 30px; width: 100%;"></div>
		<div class="sideEmty">
			<div class="header row">
				<a class="navbar-brand" href="share" style="width: 500px;">
					<img src="../../resources/images/share/fullLogo_p.png" id="logoimg">
					<button id="btnLogout" type="button" class="btn ms-5" style="height: 30px; text-align: center;">
						<img src="../../resources/images/share/logout.png" id="Imglogout">
						Logout
					</button>
				</a>
				<ul class="nav nav-tabs mt-5">
					<li class="nav-item">
			  			<a class="nav-link active" aria-current="page" onclick="goMyPage()">My Page</a>
					</li>
					<li class="nav-item">
				  		<a class="nav-link" onclick="goList()">My Share List</a>
					</li>
					<li class="nav-item">
			 	 		<a class="nav-link" onclick="goInfo()">Change My Information</a>
					</li>
					<li class="nav-item">
			 	 		<a class="nav-link" onclick="goSecu()">MY Security</a>
					</li>
				</ul>
			</div>
			<div style="margin: 30px 0px 0px 200px;">
				<table>
					<label for="img" class="form-label">My Profile</label>
					<td>
						<div class="mt-2 mb-2">
							<label for="img1" class="form-label input-file-button">
					 			<input class="form-control form-control-sm" id="img1" name="img1" type="file" style="display: none;" onChange="upload('memberUploadedImg', 1, 0, 1, 0, 0, 1);">
								<img src="/resources/images/share/user.png" id="img1" name="img1"> 
							</label>
							<div class="addScroll">
								<ul id="ulFile1" class="list-group"></ul>
							</div>
						</div>
						<button type="button" class="btn btn-outline-secondary ms-5 me-4" style="border-color: lightgray;">확인</button>
						<button type="button" class="btn btn-outline-secondary" style="border-color: lightgray;">취소</button>
					</td>
				</table>
				<hr style="color: rgb(78, 78, 78); width: 800px;">
				<table>
					<td>
						<label>My Share Place</label>
						<input class="mt-2 form-control" id="share_place" name="share_place" value="<c:out value="${item.share_place}"/>" disabled="disabled">
						<div class="invalid-feedback" id="idFeedback"></div>
					</td>
				</table>
				<hr style="color: rgb(78, 78, 78); width: 800px;">
				<table>
					<td>
						<label>My Nick Name</label>
						<input class="mt-2 form-control" id="nick_nm" name="nick_nm" value="<c:out value="${item.nick_nm}"/>" disabled="disabled">
						<div class="invalid-feedback" id="nick_nmCheckFeedback"></div>
					</td>
				</table>
			</div>
		</div>
	</form>
</body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/a33686bef4.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
	
	    var goUrlMyList = "/myList";
		var goUrlMyPage = "/myPage";
		var goUrlMyInfo = "/personalInformation";
		var goUrlMySecurity = "/mySecurity";
		var goUrlInst = "/shareMyPageInst";
		var goUrlUpdt = "/shareMyPageUpdt";
		var goUrlUpdt = "/shareMyPageUpdt";
		
		var seq = $("input:hidden[name=seq]");
		
		var form = $("#myForm");
		
		alert(seq.val())
	
		goList = function() {
			form.attr("action", goUrlMyList).submit();
		};
		
		goMyPage = function() {
			form.attr("action", goUrlMyPage).submit();
		};
		
		goInfo = function() {
			form.attr("action", goUrlMyInfo).submit();
		};
		
		goSecu = function() {
			form.attr("action", goUrlMySecurity).submit();
		};
	
		// 업데이트 정보 넘기기s
		
		$("#btnS").on("click", function() {
			if (seq.val() == "0" || seq.val() == "") {
				// insert
				form.attr("action", goUrlInst).submit();
			} else {
				// update
				form.attr("action", goUrlUpdt).submit();
				alert("정보변경 완료!")
			}
		});
		
		$("#btnC").on("click", function() {
			form.attr("action", goUrlMypage).submit();
		})
		
		</script>
		<script type="text/javascript">
		
		//로그아웃 버튼
		
		$("#btnLogout").on("click", function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "logoutProc"
			,data: {}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/share";
				} else {
					// by pass
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
		
		</script>
		<script>
		
		// 이미지 미리보기
		
			const reader = new FileReader();
			
		    reader.onload = (readerEvent) => {
	        document.querySelector("#img").setAttribute("src", readerEvent.target.result);
	    };
	
	    	document.querySelector("#chooseImg").addEventListener("change", (changeEvent) => {
	
	        const imgFile = changeEvent.target.files[0];
	        reader.readAsDataURL(imgFile);
	    })
		
		 // 파일 업로드 s

		upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
		//	objName 과 seq 는 jsp 내에서 유일 하여야 함.
		//	memberProfileImage: 1
		//	memberImage: 2
		//	memberFile : 3
			
			var totalFileSize = 0;
			var obj = $("#" + objName +"")[0].files;	
			var fileCount = obj.length;
			
			const MAX_EACH_FILE_SIZE = 5 * 1024 * 1024;		//	5M
			const MAX_TOTAL_FILE_SIZE = 25 * 1024 * 1024;	//	25M
			const MAX_TOTAL_FILE_NUMBER = 5;
			
			allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
			allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
			allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
			
			if(checkUploadedToalFileNumber(obj, allowedMaxTotalFileNumber, fileCount) == false) { return false; }
			alert("된다")
			
			 for (var i = 0 ; i < fileCount ; i++) {
				if(checkUploadedExt($("#" + objName +"")[0].files[i].name, seq, allowedExtdiv) == false) { return false; }
				if(checkUploadedEachFileSize($("#" + objName +"")[0].files[i], seq, allowedEachFileSize) == false) { return false; }
				totalFileSize += $("#" + objName +"")[0].files[i].size;
				
				 alert("확인 : " + totalFileSize)
			}
			
			 if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
		}
		
			 if (uiType == 1) {
						
				$("#ulFile" + seq).children().remove();
				
				for (var i = 0 ; i < fileCount ; i++) {
					addUploadLi(seq, i, $("#" + objName +"")[0].files[i].name);
				}
	 		
				for (var i = 0 ; i < fileCount ; i++) {
					
		 			var divImage = "";
		 			divImage += '<div style="display: inline-block; height: 95px;">';
					divImage += '	<img id="aaa'+i+'" src="" class="rounded" width= "85px" height="85px">';
					divImage += '	<div style="position: relative; top:-85px; left:5px"><span style="color: red;">X</span></div>';
					divImage += '</div> ';
					
					$("#ifmmUploadedImage1View").append(divImage);
					
					var fileReader = new FileReader();
					 fileReader.readAsDataURL($("#" + objName +"")[0].files[i]);
					alert($("#" + objName +"")[0].files[i]);
					 fileReader.onload = function () {
					 alert($("#aaa"+i+""));
					 
					 if(i == 0) {
						 $("#aaa0").attr("src", fileReader.result);
					 } else if (i == 1) {
						 $("#aaa0").attr("src", fileReader.result);	
					 } else {
						 
					 }
					 }
				}			
	 			
			} else if(uiType == 2) {
				$("#ulFile" + seq).children().remove();
				
				for (var i = 0 ; i < fileCount ; i++) {
					addUploadLi(seq, i, $("#" + objName +"")[0].files[i].name);
				}
			} else if (uiType == 3) {
				var fileReader = new FileReader();
				 fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
				
				 fileReader.onload = function () {
					 $("#imgProfile").attr("src", fileReader.result);	
				 }		
			} else {
				return false;
			}
			return false;
		} 
		
	addUploadLi = function (seq, index, name){
			
			var ul_list = $("#ulFile0");
			
			li = '<li id="li_'+seq+'_'+index+'" class="list-group-item d-flex justify-content-between align-items-center">';
			li = li + name;
			li = li + '<span class="badge bg-danger rounded-pill" onClick="delLi('+ seq +','+ index +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
			li = li + '</li>';
			
			$("#ulFile"+seq).append(li);
		}
		
		
		delLi = function(seq, index) {
			$("#li_"+seq+"_"+index).remove();
		}
		
		 // 파일 업로드 e 
	</script>
</body>
</html>
