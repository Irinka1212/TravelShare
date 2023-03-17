<!DOCTYPE html>
<html>
<head>
	<title>Messenger</title>
	<link rel="stylesheet" href="../library/css/bootstrap.min.css">
	<script src="../library/js/jquery-3.4.1.min.js"></script>
	<style type="text/css">
		#messages {
			height: 200px;
			background: whitesmoke;
			overflow: auto;
		}

		#chat-room-frm {
			margin-top: 10px;
		}

		body {
    		background-color: #fbfaf1;
    		color: #333;
    		font-family: 'Open Sans', sans-serif;
    		margin: 0;
    		padding: 0;
		}

		h2.text-center {
    		color: #2f4f4f;
    		font-size: 2.5em;
    		margin-top: 20px;
    		text-transform: uppercase;
		}

		hr {
    		border: 0;
    		border-top: 1px solid #ccc;
    		margin: 20px 0;
		}

		.container {
    		margin: 30px auto 30px;
    		max-width: 900px;
    		padding: 20px;
    		background-color: #fff;
    		color: #2f4f4f;
    		border-radius: 10px;
			box-shadow: 5px 5px 5px 5px #ecca86;
		}

		#messages {
    		background: white;
    		border: 1px solid #ccc;
    		height: 300px;
    		overflow: auto;
    		padding: 20px;
    		width: 100%;
		}

		#chat-room-frm {
    		margin-top: 20px;
    		width: 100%;
		}

		.table {
    		width: 100%;
    		background-color: white;
		}

		/* Remove the default scrollbar */
		body::-webkit-scrollbar {
    		width: 10px;
    		background-color: #ecca86;
		}

		body::-webkit-scrollbar-thumb {
    		border-radius: 10px;
    		background-color: #333;
		}

		.header-wrapper {
			display: flex;
			align-items: center;
			justify-content: space-between;
		}

		.logo-msg {
			max-height: 100px;
		}

		.msg-wrapper {
			display: flex;
			align-items: center;
    		justify-content: space-between;
		}

		.form-group {
			width: 85%;
		}

		.btn-warning {
			background-color: #f99842;
		}

		.btn-warning:hover {
			background-color: #d38038;
		}

		.col-md-4 {
    		-ms-flex: 0 0 25%;
    		flex: 0 0 25%;
    		max-width: 25%;
  		}
  
  		.col-md-8 {
    		-ms-flex: 0 0 75%;
    		flex: 0 0 75%;
    		max-width: 75%;
  		}

  		.table-striped tbody tr:nth-of-type(odd) {
  			background-color: rgb(237 205 140 / 23%);
		}
	</style>
</head>
<body>
	<div class="container">
		<div class="header-wrapper"> 
		<img class="logo-msg" src="boeing-1595-cropped.svg" alt="logo">
		<h2 class="text-center" style="margin-top: 5px; padding-top: 0;">Messenger</h2>
		<td><input type='button' onclick='goBack()' class='btn btn-warning' id='leave-chat' name='leave-chat'value='Back to home'></td>
		</div>
		<hr>
		<div class="row">
			<div class="col-md-4">
				<?php 
					require_once 'controllers/authController.php';
					if(!isset($_SESSION['id'])) {
						header("location: index.php");
					}
					require("dbB/users.php");
					require("dbB/chatrooms.php");

					$objChatroom = new chatrooms;
					$chatrooms   = $objChatroom->getAllChatRooms();

					$objUser = new users;
					$users   = $objUser->getAllUsers();
				 ?>
				<table class="table table-striped">
					<thead>
						<tr style="width:100%">
							<?php 
								echo "<tr><td><div><strong>Logged in as: ".$_SESSION['username']."</strong></div><div></td>";	
					  	 	?>
						</tr>
						<tr>
							<th colspan="1">Users</th>
						</tr>
					</thead>
					<tbody>
						 <?php 
							foreach ($users as $key => $user) {
								if(!isset($_SESSION['user'][$user['id']])) {
								echo "<tr><td>".$user['username']."</td>";
								}
								$userId = $_SESSION['id'];
								echo '<input type="hidden" name="userId" id="userId" value="'.$userId.'">';
							}
						 ?>
					</tbody>
				</table>
			</div>
			<div class="col-md-8">
				<div id="messages">
					<table id="chats" class="table table-striped">
					  <thead>
					    <tr>
					      <th colspan="4" scope="col"><strong>Chat Room</strong></th>
					    </tr>
					  </thead>
					  <tbody>
					  	<?php 
					  		foreach ($chatrooms as $key => $chatroom) {
					  			if($userId == $chatroom['userid']) {
					  				$from = "Me";
					  			} else {
									$from = $chatroom['username'];
					  			}
					  			echo '<tr><td valign="top"><div><strong>'.$from.'</strong></div><div>'.$chatroom['msg'].'</div><td align="right" valign="top">'.date("d/m/Y h:i:s A", strtotime($chatroom['created_on'])).'</td></tr>';
					  		}
					  	 ?>
					  </tbody>
					</table>
				</div>
				<form id="chat-room-frm" method="post" action="">
					<div class="msg-wrapper">
						<div class="form-group">
                    		<textarea class="form-control" id="msg" name="msg" placeholder="Enter Message"></textarea>
	                	</div>
	                	<div id="buttons">
	                    	<input type="button" value="Send" class="btn btn-success btn-block" id="send" name="send">
	                	</div>
					</div>
			    </form>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function(){
		var conn = new WebSocket('ws://localhost:8080');
		conn.onopen = function(e) {
		    console.log("Connection established!");
		};

		conn.onmessage = function(e) {
		    console.log(e.data);
		    var data = JSON.parse(e.data);
		    var row = '<tr><td valign="top"><div><strong>' + data.from +'</strong></div><div>'+data.msg+'</div><td align="right" valign="top">'+data.dt+'</td></tr>';
		    $('#chats > tbody').prepend(row);
		};

		conn.onclose = function(e) {
			console.log("Connection Closed!");
		}

		$("#send").click(function(){
			var userId 	= $("#userId").val();
			var msg 	= $("#msg").val();
			var data = {
				userId: userId,
				msg: msg
			};
			conn.send(JSON.stringify(data));
			$("#msg").val("");
		});

		$("#leave-chat").click(function(){
			var userId 	= $("#userId").val();
			$.ajax({
				url:"action.php",
				method:"post",
				data: "userId="+userId+"&action=leave"
			}).done(function(result){
				var data = JSON.parse(result);
				if(data.status == 1) {
					conn.close();
					location = "index.php";
				} else {
					console.log(data.msg);
				}
			});
		})

		$("#leave-chat").click(function(){
			var userId 	= $("#userId").val();
			$.ajax({
				url:"action.php",
				method:"post",
				data: "userId="+userId+"&action=leave"
			}).done(function(result){
				var data = JSON.parse(result);
				if(data.status == 1) {
					conn.close();
					location = "index.php";
				} else {
					console.log(data.msg);
				}
			});
		})
	})
	function goBack() {
  	window.history.back();
}
</script>
</html>