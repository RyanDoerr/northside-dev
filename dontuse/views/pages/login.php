<style type="text/css">
    .container {
        width: 100px;
        clear: both;
    }
    .container input {
        width: 100%;
        clear: both;
    }
</style>
You're on the login page.<br><br><br>
<div class="container">
	<form id="userform" name="userform" method="post" action="?controller=pages&amp;action=menu">

		<label>Username:
			<input type="text" name="employee_id" id="employee_id" />
		</label>

		<label><br>Password:
			<input type="password" name="password_hash" id="password_hash" />
		</label>
		<label><br><br>
			<input type = "submit" name="login" id="login" value="login" />
		</label>
	</form>
</div>
<br><br><br><br>


