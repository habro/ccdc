$When = ((Get-Date).AddHours(-1)).Date
$users = Get-ADUser -Filter {whenCreated -ge $When} -Properties whenCreated

if(user != null){
	$sh = new-object -comobject wscript.shell
	$msg = $sh.popup(("We found a new user, should we remove " + "them?"),0,"YOU CAN WIN!",4)
}
