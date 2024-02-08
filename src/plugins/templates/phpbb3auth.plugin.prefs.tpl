<fieldset>
	<legend>{lng p="prefs"}</legend>
	
	<form action="{$pageURL}&sid={$sid}&do=save" method="post" onsubmit="spin(this)">
		<div class="mb-3 row">
			<label class="col-sm-2 col-form-check-label">{lng p="enable"}</label>
			<div class="col-sm-10">
				<label class="form-check">
					<input class="form-check-input" type="checkbox" name="enableAuth"{if $phpbb3_prefs.enableAuth} checked="checked"{/if}>
				</label>
			</div>
		</div>
		<div class="mb-3 row">
			<label class="col-sm-2 col-form-label">MySQL {lng p="host"}</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="mysqlHost" value="{if isset($phpbb3_prefs.mysqlHost)}{text value=$phpbb3_prefs.mysqlHost}{/if}">
			</div>
		</div>
		<div class="mb-3 row">
			<label class="col-sm-2 col-form-label">MySQL {lng p="user"}</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="mysqlUser" value="{if isset($phpbb3_prefs.mysqlUser)}{text value=$phpbb3_prefs.mysqlUser}{/if}">
			</div>
		</div>
		<div class="mb-3 row">
			<label class="col-sm-2 col-form-label">MySQL {lng p="password"}</label>
			<div class="col-sm-10">
				<input type="password" class="form-control" name="mysqlPass" value="{if isset($phpbb3_prefs.mysqlPass)}{text value=$phpbb3_prefs.mysqlPass}{/if}">
			</div>
		</div>
		<div class="mb-3 row">
			<label class="col-sm-2 col-form-label">MySQL {lng p="db"}</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="mysqlDB" value="{if isset($phpbb3_prefs.mysqlDB)}{text value=$phpbb3_prefs.mysqlDB}{/if}">
			</div>
		</div>
		<div class="mb-3 row">
			<label class="col-sm-2 col-form-label">MySQL Prefix</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="mysqlPrefix" value="{if isset($phpbb3_prefs.mysqlPrefix)}{text value=$phpbb3_prefs.mysqlPrefix allowEmpty=true}{/if}">
			</div>
		</div>
		<div class="mb-3 row">
			<label class="col-sm-2 col-form-label">{lng p="user"}-{lng p="domain"}</label>
			<div class="col-sm-10">
				<select name="userDomain" class="form-select">
					{foreach from=$domains item=domain}
						<option value="{$domain}"{if $phpbb3_prefs.userDomain==$domain} selected="selected"{/if}>{$domain}</option>
					{/foreach}
				</select>
			</div>
		</div>

		<div class="text-end">
			<input type="submit" class="btn btn-primary" value="{lng p="save"}" />
		</div>
	</form>
</fieldset>