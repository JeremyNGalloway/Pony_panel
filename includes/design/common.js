function showMore(_class)
{
	if ($('a.local_nav' + _class).text()=='�������� ���') {
		$('#hidden_rows' + _class).css('display','');
		$('a.local_nav' + _class).text('��������');
	}
	else if ($('a.local_nav' + _class).text()=='��������') {
		$('#hidden_rows' + _class).css('display','none');
		$('a.local_nav' + _class).text('�������� ���');
	}
}

function clear_form(_class)
{
	$(':input',_class)
	.not(':button, :submit, :reset, :hidden')
	.val('')
	.removeAttr('checked')
	.removeAttr('selected');
}
