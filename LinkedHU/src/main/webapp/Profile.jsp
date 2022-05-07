<%@page import="Model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="general.MyConstants" %>     

 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

 
<!DOCTYPE html>

<html lang="en" >
    <!-- begin::Head -->
    <head><!--begin::Base Path (base relative path for assets of this page) -->
        <meta charset="utf-8"/>

        <title>Profile</title>
        <meta name="description" content="List columns 1 example">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


		<!--begin::Fonts -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700">       
		 <!--end::Fonts -->
		         
		<!--begin:: Global Mandatory Vendors -->
		<link href="./assets/vendors/general/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet" type="text/css" />
		<!--end:: Global Mandatory Vendors -->
		
		<!--begin:: Global Optional Vendors -->
		<link href="./assets/vendors/general/tether/dist/css/tether.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/general/bootstrap-datepicker/dist/css/bootstrap-datepicker3.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/general/bootstrap-datetime-picker/css/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/general/bootstrap-timepicker/css/bootstrap-timepicker.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/general/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/general/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/general/bootstrap-select/dist/css/bootstrap-select.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/general/bootstrap-switch/dist/css/bootstrap3/bootstrap-switch.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/general/select2/dist/css/select2.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/general/ion-rangeslider/css/ion.rangeSlider.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/general/nouislider/distribute/nouislider.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/general/owl.carousel/dist/assets/owl.carousel.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/general/owl.carousel/dist/assets/owl.theme.default.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/general/dropzone/dist/dropzone.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/general/quill/dist/quill.snow.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/general/@yaireo/tagify/dist/tagify.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/general/summernote/dist/summernote.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/general/bootstrap-markdown/css/bootstrap-markdown.min.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/general/animate.css/animate.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/general/toastr/build/toastr.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/general/dual-listbox/dist/dual-listbox.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/general/morris.js/morris.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/general/sweetalert2/dist/sweetalert2.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/general/socicon/css/socicon.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/custom/vendors/line-awesome/css/line-awesome.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/custom/vendors/flaticon/flaticon.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/custom/vendors/flaticon2/flaticon.css" rel="stylesheet" type="text/css" />
		<link href="./assets/vendors/general/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
		<!--end:: Global Optional Vendors -->

		<!--begin::Global Theme Styles(used by all pages) -->
		<link href="./assets/css/demo9/style.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Global Theme Styles -->
		<link href="./css/sidenavbar.css" rel="stylesheet" type="text/css" />
		
    </head>
    <!-- end::Head -->

    <!-- begin::Body -->
    <body  class="kt-page--loading-enabled kt-page--loading kt-app__aside--left kt-quick-panel--right kt-demo-panel--right kt-offcanvas-panel--right kt-header--fixed kt-header--minimize-menu kt-header-mobile--fixed kt-subheader--enabled kt-subheader--transparent kt-aside--enabled kt-aside--left kt-aside--fixed kt-page--loading"  >

	    <!-- begin:: Page -->
		<div class="kt-grid kt-grid--hor kt-grid--root">
			<div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--ver kt-page">
		
				<!-- begin:: side bar -->
				<div class="sb_sidebar ">
					<div class="sb_top_content">
						
						<!-- side bar:: brand-->
						<div class="sb_logo_content">
							<div class="sb_logo">
								<a class="kt-header__brand-logo" href="#">
									<img alt="Logo" src="./assets/media/logos/4060logos.png"/>		
								</a>	
							</div>
						</div>
						<!-- side bar:: brand end-->
						
						<!-- side bar:: profile picture -->
						<div class="sb_profile_content">
							<div class="sb_profile"> 
								<div class="sb_profile_details">
								 
									<img id="sb_profile_picture" alt="Pic" src="./ProfilePictures/123.jpg" />
									
									<div class="sb_fullname " style="display: none">
										Ali fuat ozturk
									</div>
										
							        <form action="UserController" method="POST">
								        <button type="submit" class="btn btn-label btn-label-brand btn-sm btn-bold">Sign Out</button>
								        <input type = "hidden" value = "${MyConstants.OPP_LOGOUT }" name = "operation">        
							        </form>
									
								</div>
							</div>
						</div>
						<!-- side bar:: profile picture end-->
						
						<!-- side bar:: navigation list -->
						<ul class="sb_nav_list">
							<li>
								<form action="UserController" method="POST">
									<a href="#" onclick = "window.location = 'HomePage.jsp'">
										<i class="fa fa-home"></i>
										<span class="links_name">Home Page</span>
									</a>
								</form>
							</li>
							<li>
								<form action="UserController" method="POST">
									<a href="#" onclick='this.parentNode.submit(); return false;'>					
										<i class="fa fa-user-alt"></i>
										<span class="links_name">Profile</span>
									</a>
									<input type="hidden" name="operation" value="${MyConstants.OPP_VIEW_PROFILE }">
									<input type="hidden" name="userID" value="${currentUser.userID }">
								</form>
							</li>
							<li>
								<a href="#" onclick = "window.location = 'UpdateProfile.jsp'">
									<i class="fa fa-user-edit"></i>
									<span class="links_name">Update Profile</span>
								</a>
							</li>
							<li>
								<a href="#">
									<i class="fa fa-comments"></i>
									<!-- <i class="fa fa-envelope"></i> -->
									<span class="links_name">Messages</span>
								</a>
							</li>
							<li>
								<a href="#">
									<i class="fa fa-key"></i>
									<span class="links_name">Change Password</span>
								</a>
							</li>
							<li>
								<a href="#">
									<i class="fa fa-info"></i>
									<span class="links_name">Administrator</span>
								</a>
							</li>
						</ul>
						<!-- side bar:: navigation list end-->
						
					</div>
				</div>
				<!-- end:: side bar -->
			
				<!-- begin:: 3 wrapper classes for content-->
				<div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-wrapper" id="kt_wrapper" style="padding: 0px !important">
					<div class="kt-body kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-grid--stretch" id="kt_body">
						<div class="kt-content  kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor" id="kt_content">


<div class="kt-container  kt-grid__item kt-grid__item--fluid" style="padding-top: 30px">


	<!-- begin:: profile information -->
	<div class="row">
	<div class="col-xl-12">
	        <!--begin:: Widgets/Applications/User/Profile3-->
	<div class="kt-portlet kt-portlet--height-fluid">
	    <div class="kt-portlet__body">
	        <div class="kt-widget kt-widget--user-profile-3">
	            <div class="kt-widget__top">
	                <div class="kt-widget__media kt-hidden-">
	                    <img src="${otherUser.profilePictureSrc}" alt="image">
	                    
	                </div>
	                <div class="kt-widget__pic kt-widget__pic--danger kt-font-danger kt-font-boldest kt-font-light kt-hidden">
	                    JM
	                </div>
	                <div class="kt-widget__content">
	                    <div class="kt-widget__head">
	                        <a href="#" class="kt-widget__username">
	                            <c:out value="${otherUser.fullName}">name</c:out>    
	                            <i class="flaticon2-correct"></i>                       
	                        </a>
	                    </div>
	
	                    <div class="kt-widget__subhead">
	                        <a href="#"><i class="flaticon2-new-email"></i>  <c:out value="${otherUser.email}">email</c:out></a>
	                        <a href="#"><i class="flaticon2-calendar-3"></i> <c:out value="${otherUser.academicTitle}">academicTitle</c:out> </a>
	                        <a href="https://cs.hacettepe.edu.tr/index_tr.html"><i class="flaticon2-placeholder"></i> Hacettepe University CS</a>
	                        <a href="#"><i class="flaticon-home"></i> Office Number: <c:out value="${otherUser.officeNumber}">officeNumber</c:out> </a>
	                    </div>
	
	                    <div class="kt-widget__info">
	                        <div class="kt-widget__desc">
	                            <c:out value="${otherUser.bio}">bio</c:out>
							<div class="kt-portlet kt-portlet--bordered-semi kt-portlet--height-fluid">
								<div class="kt-portlet__head">
									<div class="kt-portlet__head-label">
										<h3 class="kt-portlet__head-title">
											Profile
										</h3>
									</div>
								</div>
								<div class="kt-portlet__body">
									<div class="kt-widget4" >
										<div class="kt-widget4__item"  >
											<div class="kt-portlet__head-label" style="min-width:200px !important">
												<h4 class="kt-portlet__head-title" style="right-margin=14px">
													Professional History
												</h4>
											</div>
											&nbsp
											<div class="kt-widget4__info" style="white-space: pre-line" >
												${ otherUser.professionalHistory }
											</div>						
										</div>	 
							
										<div class="kt-widget4__item">
											<div class="kt-portlet__head-label" style="min-width:200px !important">
												<h4 class="kt-portlet__head-title" style="right-margin=14px">
													Research History
												</h4>
											</div>
											&nbsp
											<div class="kt-widget4__info" style="white-space: pre-line">
												${ otherUser.researchHistory }
											</div>						 
										</div>
							
										<div class="kt-widget4__item">
											<div class="kt-portlet__head-label" style="min-width:200px !important">
												<h4 class="kt-portlet__head-title" style="right-margin=14px">
													Proficiencies
												</h4>
											</div>
											&nbsp
											<div class="kt-widget4__info" style="white-space: pre-line;">
												${otherUser.proficiencies}		 
											</div>				
										</div>	
									</div>			 
								</div>
							</div>
	                            
	                        </div>
	   
	                    </div>
	                </div>
	            </div>
	            <div class="kt-widget__bottom">
	            
	                <div class="kt-widget__item">
	                    <div class="kt-widget__icon">
	                        <i class="flaticon-users"></i>
	                    </div>
	                    <div class="kt-widget__details">
	                        <span class="kt-widget__title">Followers</span>
	                        <span class="kt-widget__value">249,500</span>
	                    </div>
	                </div>
	
	                <div class="kt-widget__item">
	                    <div class="kt-widget__icon">
	                        <i class="flaticon-chat-1"></i>
	                    </div>
	                    <div class="kt-widget__details">
	                        <span class="kt-widget__title">${otherUser.authorOf.size()} Posts</span>
	                        
	                        <a href="#" class="kt-widget__value kt-font-brand" onclick = "togglePostView()" id="viewControl">View</a>
	                        <script type="text/javascript">
	                        	function togglePostView(){
	                        		var x = document.getElementById('postProfileDiv');
	                        		if (x.style.display === 'none') {
	                        		    x.style.display = 'block';
	                        		    document.getElementById('viewControl').textContent = "Hide";
	                        		}else 
	                        		{
	                        		   x.style.display = 'none';
	                        		   document.getElementById('viewControl').textContent = "View";
	                        		}
	                        	}
	
	                        </script>
	                    </div>
	                </div>
					<!-- 
					
	                <div class="kt-widget__item">
	                    <div class="kt-widget__icon">
	                        <i class="flaticon-network"></i>
	                    </div>
	                    <div class="kt-widget__details">
	                        <div class="kt-section__content kt-section__content--solid">
	                            <div class="kt-media-group">
	                                <a href="#" class="kt-media kt-media--sm kt-media--circle" data-toggle="kt-tooltip" data-skin="brand" data-placement="top" title="" data-original-title="John Myer">
	                                    <img src="./assets/media/users/100_1.jpg" alt="image">
	                                </a>
	                                <a href="#" class="kt-media kt-media--sm kt-media--circle" data-toggle="kt-tooltip" data-skin="brand" data-placement="top" title="" data-original-title="Alison Brandy">
	                                    <img src="./assets/media/users/100_10.jpg" alt="image">
	                                </a>
	                                <a href="#" class="kt-media kt-media--sm kt-media--circle" data-toggle="kt-tooltip" data-skin="brand" data-placement="top" title="" data-original-title="Selina Cranson">
	                                    <img src="./assets/media/users/100_11.jpg" alt="image">
	                                </a>
	                                <a href="#" class="kt-media kt-media--sm kt-media--circle" data-toggle="kt-tooltip" data-skin="brand" data-placement="top" title="" data-original-title="Luke Walls">
	                                    <img src="./assets/media/users/100_2.jpg" alt="image">
	                                </a>
	                                <a href="#" class="kt-media kt-media--sm kt-media--circle" data-toggle="kt-tooltip" data-skin="brand" data-placement="top" title="" data-original-title="Micheal York">
	                                    <img src="./assets/media/users/100_3.jpg" alt="image">
	                                </a>
	                                <a href="#" class="kt-media kt-media--sm kt-media--circle" data-toggle="kt-tooltip" data-skin="brand" data-placement="top" title="" data-original-title="Micheal York">
	                                    <span>+3</span>
	                                </a>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                 -->
	                
	            </div>
	        </div>
	    </div>
	</div>
	<!--end:: Widgets/Applications/User/Profile3-->    </div>
	</div>
	<!-- end:: profile information -->
	
	<!-- begin:: posts -->
	<div id="postProfileDiv" style="display:none">
	<c:forEach items="${otherUser.authorOf}" var="post">
	<!--Begin::Section-->
	<div class="row">
	    <div class="col-xl-12">
	        <!--begin:: Portlet-->
	        <div class="kt-portlet kt-portlet--height-fluid">
	            <div class="kt-portlet__body kt-portlet__body--fit">
	                <!--begin::Widget -->
	                <div class="kt-widget kt-widget--project-1">
	                
	                    <div class="kt-widget__head">
	                        <div class="kt-widget__label">
	                            <div class="kt-widget__media">
	                            	
	                            	<form action="UserController" method="POST">
	                                <span class="kt-media--circle">                                     
	                                    <input type="image" src="${otherUser.profilePictureSrc }" alt="image" style="height:100px;width:100px;cursor: pointer;border-top-left-radius: 50% 50%; border-top-right-radius: 50% 50%; border-bottom-right-radius: 50% 50%; border-bottom-left-radius: 50% 50%;">
	                                    <input type="hidden" name="operation" value="${MyConstants.OPP_VIEW_PROFILE }">
	                                    <input type="hidden" name="userID" value="${otherUser.userID }">                                	
	                                </span>
	                            	</form>
	                            	
	                            </div>
	                            <div class="kt-widget__info kt-margin-t-5">
	                                <a href="#" class="kt-widget__title">
	                                ${ post.title }
	                                                                        
	                                </a>
	                                
	                                <span class="kt-widget__desc">
	                                ${otherUser.fullName}
	                                <br>
	                                ${post.dateFormat}
	                                </span>
	                            </div>
	                        </div>
	                        
	                         <!-- DELETE POST ENABLE OR DISABLE -->
	                        <c:if test="${currentUser.userID ==  otherUser.userID}">
	                        <div class="kt-portlet__head-toolbar">
	                            <a href="#" class="btn btn-clean btn-sm btn-icon btn-icon-md" data-toggle="dropdown">
	                                <i class="flaticon-more-1"></i>
	                            </a>
	                            <div class="dropdown-menu dropdown-menu-fit dropdown-menu-right">
	                                <form action = "PostController" method = "POST">
	                                <ul class="kt-nav">
	                                    <li class="kt-nav__item">
	                                        <button type = "submit" class="kt-nav__link-icon flaticon2-trash" style = "color:  tomato ;border: none; background-color: white; font-size: 14px; ">
	                                        	<span class="kt-nav__link-text" style = "color: black; margin-left: 14px">Delete Post</span>
	                                        </button>
	                                        <input type = "hidden" name = "operation" value = "${MyConstants.OPP_DELETE_POST }" >
	                                        <input type = "hidden" name = "delPost" value = ${String.valueOf(post.postID) }>
	                                    </li>
	                                </ul>
	                                </form>
	                            </div>
	                        </div>
	                        </c:if>
	                    </div>
	
	                    <div class="kt-widget__body">
	                    	<span class="kt-widget__text" style="font-size: 17px; white-space: pre-line;margin-top:0px">
	                    		${post.messageText}
	                    	</span>	
	                    </div>
	
	                    <div class="kt-widget__footer">
	                        <div class="kt-widget__wrapper">
	                           	<div class="kt-widget__section">
	                           		<div class="kt-demo-icon__preview">
	                           			<c:if test="${currentUser.likes.contains(post.postID)}">
	                           		
	                          				<button type="button" class="flaticon-black like-btn" style="border: none; background-color: white; font-size: 25px; color: red;"></button>
	                                    	<a href="#" style="font-size: 15px; color: black;">${post.likeCount} Likes</a>
	                           				<input type="hidden" value=${post.postID }>
	                           				
	                           			</c:if>
	                           			
	                           			<c:if test="${currentUser.likes.contains(post.postID) == false}">
	                           			
	                          				<button type="button" class="flaticon-black like-btn" style="border: none; background-color: white; font-size: 25px; color: gray;"></button>
	                                    	<a href="#" style="font-size: 15px; color: black;">${post.likeCount} Likes</a>
	                           				<input type="hidden" value=${post.postID }>
	                           				
	                           			</c:if>
	                           			
	                           		</div>
	                           		<div class="kt-demo-icon__preview">
	                           			<button type="button" class="flaticon2-chat-1" style="border: none; background-color: white; font-size: 25px;"></button>
	                           			<a href="#" style="font-size: 15px; color: black;"> <span class="comment-count" >${post.commentCount}</span>  Comments</a>
	                           		</div>
	                           	</div>
	                           	<div class="kt-widget__section">
	                           		<form action="PostController" method="POST">
		                           		<button class="btn btn-outline-dark" type="submit">Details</button>
		                           		<input type="hidden" value="${MyConstants.OPP_POST_DETAILS }" name="operation" > 
			               				<input type="hidden" name="postID" value=${post.postID }>  
	                           		</form>
	                           	</div>
	                        </div>
	                    </div>
	                </div>
	                <!--end::Widget -->
	            </div>
	        </div>
	        <!--end:: Portlet-->
	    </div>
	      
	</div>
	<!--End::Section-->
		</c:forEach>
		<script type="text/javascript">
			if(performance.navigation.type == 2){
				console.log("xx");
				location.reload(true);
			}
		</script>
		
		<form id="likeForm">
			<input type = "hidden" name = "operation" value = "${MyConstants.OPP_LIKE_POST }" >
			<input type = "hidden" id = "likedPost" name = "likedPost" value = "">
			<input type = "hidden" name = "pageCode" value = "${MyConstants.CODE_PROFILEPAGE }">
		</form>
		<form id="dislikeForm">
			<input type = "hidden" name = "operation" value = "${MyConstants.OPP_DISLIKE_POST }" >
			<input type = "hidden" id = "dislikedPost" name = "dislikedPost" value = "">
			<input type = "hidden" name = "pageCode" value = "${MyConstants.CODE_PROFILEPAGE }">
		</form>
	</div>
	<!-- end:: posts -->
	
	<!-- begin:: Footer -->
	<div class="kt-footer kt-grid__item" id="kt_footer">
		<div class="kt-container ">
			<div class="kt-footer__wrapper">
				<div class="kt-footer__copyright">
	
					2022&nbsp;&copy;&nbsp;<a href="#" target="_blank" class="kt-link">HelloWorld Inc.</a>
				</div>
				<div class="kt-footer__menu">
					<a href="#" target="_blank" class="kt-link">About</a>
					<a href="#" target="_blank" class="kt-link">Team</a>
					<a href="#" target="_blank" class="kt-link">Contact</a>
	
				</div>
			</div>
		</div>
	</div>
	<!-- end:: Footer -->
	
</div>

				
						</div>
					</div>
				</div>
				<!-- end:: 3 wrapper classes for content-->
				
			</div>
		</div><!-- root end -->
<!-- end:: Page -->

 <!-- begin::Global Config(global config for global JS sciprts) -->
 <script>
     var KTAppOptions = {"colors":{"state":{"brand":"#591df1","light":"#ffffff","dark":"#282a3c","primary":"#5867dd","success":"#34bfa3","info":"#36a3f7","warning":"#ffb822","danger":"#fd3995"},"base":{"label":["#c5cbe3","#a1a8c3","#3d4465","#3e4466"],"shape":["#f0f3ff","#d9dffa","#afb4d4","#646c9a"]}}};
 </script>
 <!-- end::Global Config -->

<!--begin:: Global Mandatory Vendors -->
<script src="./assets/vendors/general/jquery/dist/jquery.js" type="text/javascript"></script>
<script src="./assets/vendors/general/popper.js/dist/umd/popper.js" type="text/javascript"></script>
<script src="./assets/vendors/general/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
<script src="./assets/vendors/general/js-cookie/src/js.cookie.js" type="text/javascript"></script>
<script src="./assets/vendors/general/moment/min/moment.min.js" type="text/javascript"></script>
<script src="./assets/vendors/general/tooltip.js/dist/umd/tooltip.min.js" type="text/javascript"></script>
<script src="./assets/vendors/general/perfect-scrollbar/dist/perfect-scrollbar.js" type="text/javascript"></script>
<script src="./assets/vendors/general/sticky-js/dist/sticky.min.js" type="text/javascript"></script>
<script src="./assets/vendors/general/wnumb/wNumb.js" type="text/javascript"></script>
<!--end:: Global Mandatory Vendors -->

<script src="./js/Like.js" type="text/javascript"></script>
<script src="./js/Comment.js" type="text/javascript"></script>
<script src="./js/sidenavbar.js" type="text/javascript"></script>

<!--begin:: Global Optional Vendors -->
<script src="./assets/vendors/general/jquery-form/dist/jquery.form.min.js" type="text/javascript"></script>
<script src="./assets/vendors/general/block-ui/jquery.blockUI.js" type="text/javascript"></script>
<script src="./assets/vendors/general/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
<script src="./assets/vendors/custom/js/vendors/bootstrap-datepicker.init.js" type="text/javascript"></script>
<script src="./assets/vendors/general/bootstrap-datetime-picker/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<script src="./assets/vendors/general/bootstrap-timepicker/js/bootstrap-timepicker.min.js" type="text/javascript"></script>
<script src="./assets/vendors/custom/js/vendors/bootstrap-timepicker.init.js" type="text/javascript"></script>
<script src="./assets/vendors/general/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script>
<script src="./assets/vendors/general/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.js" type="text/javascript"></script>
<script src="./assets/vendors/general/bootstrap-maxlength/src/bootstrap-maxlength.js" type="text/javascript"></script>
<script src="./assets/vendors/custom/vendors/bootstrap-multiselectsplitter/bootstrap-multiselectsplitter.min.js" type="text/javascript"></script>
<script src="./assets/vendors/general/bootstrap-select/dist/js/bootstrap-select.js" type="text/javascript"></script>
<script src="./assets/vendors/general/bootstrap-switch/dist/js/bootstrap-switch.js" type="text/javascript"></script>
<script src="./assets/vendors/custom/js/vendors/bootstrap-switch.init.js" type="text/javascript"></script>
<script src="./assets/vendors/general/select2/dist/js/select2.full.js" type="text/javascript"></script>
<script src="./assets/vendors/general/ion-rangeslider/js/ion.rangeSlider.js" type="text/javascript"></script>
<script src="./assets/vendors/general/typeahead.js/dist/typeahead.bundle.js" type="text/javascript"></script>
<script src="./assets/vendors/general/handlebars/dist/handlebars.js" type="text/javascript"></script>
<script src="./assets/vendors/general/inputmask/dist/jquery.inputmask.bundle.js" type="text/javascript"></script>
<script src="./assets/vendors/general/inputmask/dist/inputmask/inputmask.date.extensions.js" type="text/javascript"></script>
<script src="./assets/vendors/general/inputmask/dist/inputmask/inputmask.numeric.extensions.js" type="text/javascript"></script>
<script src="./assets/vendors/general/nouislider/distribute/nouislider.js" type="text/javascript"></script>
<script src="./assets/vendors/general/owl.carousel/dist/owl.carousel.js" type="text/javascript"></script>
<script src="./assets/vendors/general/autosize/dist/autosize.js" type="text/javascript"></script>
<script src="./assets/vendors/general/clipboard/dist/clipboard.min.js" type="text/javascript"></script>
<script src="./assets/vendors/general/dropzone/dist/dropzone.js" type="text/javascript"></script>
<script src="./assets/vendors/custom/js/vendors/dropzone.init.js" type="text/javascript"></script>
<script src="./assets/vendors/general/quill/dist/quill.js" type="text/javascript"></script>
<script src="./assets/vendors/general/@yaireo/tagify/dist/tagify.polyfills.min.js" type="text/javascript"></script>
<script src="./assets/vendors/general/@yaireo/tagify/dist/tagify.min.js" type="text/javascript"></script>
<script src="./assets/vendors/general/summernote/dist/summernote.js" type="text/javascript"></script>
<script src="./assets/vendors/general/markdown/lib/markdown.js" type="text/javascript"></script>
<script src="./assets/vendors/general/bootstrap-markdown/js/bootstrap-markdown.js" type="text/javascript"></script>
<script src="./assets/vendors/custom/js/vendors/bootstrap-markdown.init.js" type="text/javascript"></script>
<script src="./assets/vendors/general/bootstrap-notify/bootstrap-notify.min.js" type="text/javascript"></script>
<script src="./assets/vendors/custom/js/vendors/bootstrap-notify.init.js" type="text/javascript"></script>
<script src="./assets/vendors/general/jquery-validation/dist/jquery.validate.js" type="text/javascript"></script>
<script src="./assets/vendors/general/jquery-validation/dist/additional-methods.js" type="text/javascript"></script>
<script src="./assets/vendors/custom/js/vendors/jquery-validation.init.js" type="text/javascript"></script>
<script src="./assets/vendors/general/toastr/build/toastr.min.js" type="text/javascript"></script>
<script src="./assets/vendors/general/dual-listbox/dist/dual-listbox.js" type="text/javascript"></script>
<script src="./assets/vendors/general/raphael/raphael.js" type="text/javascript"></script>
<script src="./assets/vendors/general/morris.js/morris.js" type="text/javascript"></script>
<script src="./assets/vendors/general/chart.js/dist/Chart.bundle.js" type="text/javascript"></script>
<script src="./assets/vendors/custom/vendors/bootstrap-session-timeout/dist/bootstrap-session-timeout.min.js" type="text/javascript"></script>
<script src="./assets/vendors/custom/vendors/jquery-idletimer/idle-timer.min.js" type="text/javascript"></script>
<script src="./assets/vendors/general/waypoints/lib/jquery.waypoints.js" type="text/javascript"></script>
<script src="./assets/vendors/general/counterup/jquery.counterup.js" type="text/javascript"></script>
<script src="./assets/vendors/general/es6-promise-polyfill/promise.min.js" type="text/javascript"></script>
<script src="./assets/vendors/general/sweetalert2/dist/sweetalert2.min.js" type="text/javascript"></script>
<script src="./assets/vendors/custom/js/vendors/sweetalert2.init.js" type="text/javascript"></script>
<script src="./assets/vendors/general/jquery.repeater/src/lib.js" type="text/javascript"></script>
<script src="./assets/vendors/general/jquery.repeater/src/jquery.input.js" type="text/javascript"></script>
<script src="./assets/vendors/general/jquery.repeater/src/repeater.js" type="text/javascript"></script>
<script src="./assets/vendors/general/dompurify/dist/purify.js" type="text/javascript"></script>
<!--end:: Global Optional Vendors -->

<!--begin::Global Theme Bundle(used by all pages) -->
    	    	   
		    	   <script src="./assets/js/demo9/scripts.bundle.js" type="text/javascript"></script>
				<!--end::Global Theme Bundle -->

        
            </body>
    <!-- end::Body -->
</html>
    