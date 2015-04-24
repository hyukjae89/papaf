<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<link href="main.css" rel="stylesheet" type="text/css" />
	
	<title>Message</title>
	
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" />
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
	
	<style type="text/css">
		center {
			padding-top: 10px;
			padding-bottom: 10px;
			font-size: 16px;
			font-family: "맑은 고딕";
		}
		navbar {
			height: 93px;
			margin: 0;
			padding: 0;
			background-color: white;
		}
		.selected {
			border-bottom: 4px solid #de5a0e;
		}
		a {
			text-decoration: none;
			color: black;
		}
		#nav {
			background-color: #f0d6c7;
		}
	</style>
	<script>
		$( document ).on( "pageinit", "#receiveMessage", function() {
			// Swipe to remove list item
			$( document ).on( "swipeleft swiperight", "#list li.ui-li", function( event ) {
				var listitem = $( this ),
				// These are the classnames used for the CSS transition
				dir = event.type === "swipeleft" ? "left" : "right",
				// Check if the browser supports the transform (3D) CSS transition
				transition = $.support.cssTransform3d ? dir : false;
					
				confirmAndDelete( listitem, transition );
			});
	
				// If it's not a touch device...
				if ( ! $.mobile.support.touch ) {
					// Remove the class that is used to hide the delete button on touch devices				
					$( "#list" ).removeClass( "touch" );
					// Click delete split-button to remove list item
					$( ".delete" ).on( "click", function() {
						var listitem = $( this ).parent( "li.ui-li" );
						confirmAndDelete( listitem );
					});
				}
	
				function confirmAndDelete( listitem, transition ) {
					// Highlight the list item that will be removed
					listitem.addClass( "ui-btn-down-d" );
					// Inject topic in confirmation popup after removing any previous injected topics
					$( "#confirm .topic" ).remove();
					listitem.find( ".topic" ).clone().insertAfter( "#question" );
					// Show the confirmation popup
					$( "#confirm" ).popup( "open" );
					// Proceed when the user confirms
					$( "#confirm #yes" ).on( "click", function() {
						// Remove with a transition
						if ( transition ) {
							
							listitem
								// Remove the highlight
								.removeClass( "ui-btn-down-d" )
								// Add the class for the transition direction
								.addClass( transition )
								// When the transition is done...
								.on( "webkitTransitionEnd transitionend otransitionend", function() {
									// ...the list item will be removed
									listitem.remove();
									// ...the list will be refreshed and the temporary class for border styling removed
									$( "#list" ).listview( "refresh" ).find( ".ui-li.border" ).removeClass( "border" );
								})
								// During the transition the previous list item should get bottom border
								.prev( "li.ui-li" ).addClass( "border" );
						}
						// If it's not a touch device or the CSS transition isn't supported just remove the list item and refresh the list
						else {
							listitem.remove();
							$( "#list" ).listview( "refresh" );
						}
					});
					// Remove active state and unbind when the cancel button is clicked
					$( "#confirm #cancel" ).on( "click", function() {
						listitem.removeClass( "ui-btn-down-d" );
						$( "#confirm #yes" ).off();	
					});
				}
			});
			
			
		$( document ).on( "pageinit", "#sendMessage", function() {
				
				// Swipe to remove list item
				$( document ).on( "swipeleft swiperight", "#list2 li.ui-li", function( event ) {
					var listitem = $( this ),
						// These are the classnames used for the CSS transition
						dir = event.type === "swipeleft" ? "left" : "right",
						// Check if the browser supports the transform (3D) CSS transition
						transition = $.support.cssTransform3d ? dir : false;
						
						confirmAndDelete( listitem, transition );
				});
	
				// If it's not a touch device...
				if ( ! $.mobile.support.touch ) {
					
					// Remove the class that is used to hide the delete button on touch devices				
					$( "#list2" ).removeClass( "touch" );
					
					// Click delete split-button to remove list item
					$( ".delete" ).on( "click", function() {
						var listitem = $( this ).parent( "li.ui-li" );
						
						confirmAndDelete( listitem );
					});
				}
	
				function confirmAndDelete( listitem, transition ) {
					// Highlight the list item that will be removed
					listitem.addClass( "ui-btn-down-d" );
					// Inject topic in confirmation popup after removing any previous injected topics
					$( "#confirm2 .topic" ).remove();
					listitem.find( ".topic" ).clone().insertAfter( "#question" );
					// Show the confirmation popup
					$( "#confirm2" ).popup( "open" );
					// Proceed when the user confirms
					$( "#confirm2 #yes" ).on( "click", function() {
						// Remove with a transition
						if ( transition ) {
							
							listitem
								// Remove the highlight
								.removeClass( "ui-btn-down-d" )
								// Add the class for the transition direction
								.addClass( transition )
								// When the transition is done...
								.on( "webkitTransitionEnd transitionend otransitionend", function() {
									// ...the list item will be removed
									listitem.remove();
									// ...the list will be refreshed and the temporary class for border styling removed
									$( "#list2" ).listview( "refresh" ).find( ".ui-li.border" ).removeClass( "border" );
								})
								// During the transition the previous list item should get bottom border
								.prev( "li.ui-li" ).addClass( "border" );
						}
						// If it's not a touch device or the CSS transition isn't supported just remove the list item and refresh the list
						else {
							listitem.remove();
							$( "#list2" ).listview( "refresh" );
						}
					});
					// Remove active state and unbind when the cancel button is clicked
					$( "#confirm2 #cancel" ).on( "click", function() {
						listitem.removeClass( "ui-btn-down-d" );
						$( "#confirm2 #yes" ).off();	
					});
				}
			});
	</script>
		<style>
			/* Left transition */
			li.ui-li.left {
				-webkit-transition: -webkit-transform 250ms ease;
				-webkit-transform: translateX(-100%);
				-moz-transition: -moz-transform 250ms ease;
				-moz-transform: translateX(-100%);
				-o-transition: -o-transform 250ms ease;
				-o-transform: translateX(-100%);
				transition: transform 250ms ease;
				transform: translateX(-100%);
				border-top-width: 0;
				/* We switch to border bottom on previous list item */
				border-right-width: 1px;
			}
			/* Right transition */
			li.ui-li.right {
				-webkit-transition: -webkit-transform 250ms ease;
				-webkit-transform: translateX(100%);
				-moz-transition: -moz-transform 250ms ease;
				-moz-transform: translateX(100%);
				-o-transition: -o-transform 250ms ease;
				-o-transform: translateX(100%);
				transition: transform 250ms ease;
				transform: translateX(100%);
				border-top-width: 0;
				/* We switch to border bottom on previous list item */
				border-left-width: 1px;
			}
			
			/* Hide the delete button on touch devices */
			.touch .delete {
				display: none;
			}
			
			.touch .ui-link-inherit {
				padding-right: 15px !important;
			}
			/* Custom styling for the popup */
			#confirm { /*border: 1px solid;
						border-color: #044062; 
						border-color: rgba(4,64,98,.4);
						background: #456f9a; 
						background: rgba(69,111,154,.8);
						-moz-box-shadow: 0 2px 6px rgba(69,111,154,.5), inset 0 1px rgba(255,255,255,.3), inset 0 6px rgba(255,255,255,.1), inset 0 10px 20px rgba(255,255,255,.25), inset 0 -15px 30px rgba(69,111,154,.3);
						-webkit-box-shadow: 0 2px 6px rgba(69,111,154,.5), inset 0 1px rgba(255,255,255,.3), inset 0 6px rgba(255,255,255,.1), inset 0 10px 20px rgba(255,255,255,.25), inset 0 -15px 30px rgba(69,111,154,.3);
						box-shadow: 0 2px 6px rgba(69,111,154,.5), inset 0 1px rgba(255,255,255,.3), inset 0 6px rgba(255,255,255,.1), inset 0 10px 20px rgba(255,255,255,.25), inset 0 -15px 30px rgba(69,111,154,.3); */
				max-width: 250px;
			}
			
			/* Make the buttons inherit the popup border-radius (.ui-corner-all) */
			#confirm div,#confirm .ui-btn-corner-all {
				-webkit-border-radius: inherit;
				border-radius: inherit;
			}
			
			#confirm .topic.ui-li-desc {
				font-size: inherit;
				/* The cloned topic will have class ui-li-desc so we negate the font-size settings of this class */
				text-align: center;
			}
		</style>
</head>
<body>
	<!-- receive page -->
	<div data-role="page" id="receiveMessage" data-theme="d">
		<div data-role="header" data-theme="c" data-position="fixed">
			<center>
				<font color="red">M</font>essag<font color="#de5a0e">e</font> <font color="gray">B</font>ox
			</center>
			<a href="../00_Main/Main.jsp" rel="external" data-icon="back" data-iconpos="notext"></a> <a href="WriteMessage.jsp" rel="external" data-icon="plus" data-iconpos="notext"></a>
		</div>
		<div data-role="navbar" id="nav">
			<ul>
				<li><a class="selected">받은 메세지</a></span></li>
				<li><a href="#sendMessage" data-transition="slide">보낸 메세지</a></li>
			</ul>
		</div>

		<div id="content">
			<ul data-role="listview" id="list" class="touch">
				<li data-icon="false">
					<a href="ReceiveMessage.jsp" rel="external">
						<h3>title</h3>
						<p>name</p>
						<p class="ui-li-aside">2014.09.05 13:11</p>
					</a>
					<a data-icon="delete" data-theme="c" class="delete"></a>
				</li>
				<li data-icon="false">
					<a href="ReceiveMessage.jsp" rel="external">
						<h3>title</h3>
						<p>name</p>
						<p class="ui-li-aside">2014.09.04 12:21</p>
					</a>
					<a data-icon="delete" data-theme="c" class="delete"></a>
				</li>
				<li data-icon="false">
					<a href="ReceiveMessage.jsp" rel="external">
						<h3>Hi</h3>
						<p>nanana</p>
						<p class="ui-li-aside">2014.09.03 10:37</p>
					</a>
					<a data-icon="delete" data-theme="c" class="delete"></a>
				</li>
			</ul>
		</div>

		<!-- poppup-->
		<div id="confirm" class="ui-content" data-role="popup" data-theme="c">
			<p id="question">삭제하시겠습니까?</p>
			<a id="yes" data-role="button" data-mini="true" data-shadow="false"
				data-theme="a" data-rel="back">Yes</a> <a id="cancel"
				data-role="button" data-mini="true" data-shadow="false"
				data-theme="c" data-rel="back">Cancel</a>
		</div>
		<!-- popup end-->

	</div>


	<!--아래부터는 보낸메세지-->
	<div data-role="page" id="sendMessage" data-theme="d">
		<div data-role="header" data-theme="c" data-position="fixed">
			<center>
				<font color="red">M</font>essag<font color="#de5a0e">e</font> <font color="gray">B</font>ox
			</center>
			<a href="../00_Main/Main.jsp" rel="external" data-icon="back" data-iconpos="notext"></a> 
			<a href="WriteMessage.jsp" rel="external" data-icon="plus" data-iconpos="notext"></a>
		</div>

		<div data-role="navbar" id="nav">
			<ul>
				<li><a href="#receiveMessage" data-direction="reverse">받은 메세지</a></li>
				<li><a class="selected">보낸 메세지</a></li>
			</ul>
		</div>

		<div id="content">
			<ul data-role="listview" id="list2" class="touch">
				<li data-icon="false">
					<a href="#" rel="external">
						<h3>title</h3>
						<p>name</p>
						<p class="ui-li-aside">2014.09.04 17:32</p>
					</a>
					<a data-icon="delete" data-theme="c" class="delete"></a>
				</li>
				<li data-icon="false">
					<a href="#" rel="external">
						<h3>Hi</h3>
						<p>nanana</p>
						<p class="ui-li-aside">2014.09.03 15:21</p>
					</a>
					<a data-icon="delete" data-theme="c" class="delete"></a>
				</li>
			</ul>
		</div>

		<!-- poppup-->
		<div id="confirm2" class="ui-content" data-role="popup" data-theme="d">
			<p id="question">삭제하시겠습니까?</p>
			<a id="yes" data-role="button" data-mini="true" data-shadow="false"
				data-theme="a" data-rel="back">Yes</a> <a id="cancel"
				data-role="button" data-mini="true" data-shadow="false"
				data-theme="c" data-rel="back">Cancel</a>
		</div>
		<!-- popup end-->
	</div>
</body>
</html>
