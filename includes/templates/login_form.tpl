		<div class="login_form">
            	<h2><font color="red">Authorization</font></h2>
                <form name="login_frm" action="{$smarty.server.SCRIPT_NAME}{$smarty.server.REQUEST_URI|substr:strlen($smarty.server.SCRIPT_NAME)}" method="post">
					<input type="submit" style="position:absolute;left:-10000px;top:-10000px;" />
                	<label class="formTxt"><font color="red">User</font></label>
                	<input type="text" name="login" value="" class="txtBox" />
                    <label class="formTxt"><font color="red">Password</font></label>
                    <input type="password" name="password" value="" class="txtBox" />
                    <input type="checkbox" id="save_password" name="save_password" />
                    <label class="formTxt" for="save_password"><font color="red">Save password</font></label>
                    <div class="buttons">
				    	<button onclick="javascript:document.login_frm.submit();" style="float:right;width:80px;">
				        	<img src="includes/design/images/lock_open.png" alt="" /> 
				        	Login
						</button>
    				</div>
					
                </form>
		</div>