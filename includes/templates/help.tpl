{if $priv_is_admin || $show_help_to_users}
<blink><font color="gold"><center><br><br><br><br><br><br><br><br><br><h3>HACKED BY BLACK & WHITE GUYS<BR>FOR ANY HELP CONTACT @<blink></font color="gold"></blink><blink><font color="red"><br><br><br><I>      Yahoo=</I></font color="red">	 <font color="green">mortyl212@yahoo.com </font color="green"><font color="red">or</font color="red"><font color="green"> nellai_samurai@yahoo.com</font color="green"><font color="red"><br><I>Skype=</I></font color="red">	<font color="green"> fdamark (saudi arabia) </font color="green"><font color="red">or</font color="red"><font color="green"> nellaisamurai (russia)</font color="green"> </h3>

<ul>

{foreach from=$module_names item=module_name}
{if $module_name !== 'RDP' && $module_name !== 'Certificate'}<li>{$module_name}</li>{/if}
{/foreach}
</ul>
</div>
{else}
		{include file='error.tpl' err_code='ERR_NOT_ENOUGH_PRIVILEGES'}
{/if}