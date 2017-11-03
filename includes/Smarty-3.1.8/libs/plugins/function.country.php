<?php

function smarty_function_country($params, &$smarty) {
	
	if (!isset($params['country_code']))
		$params['country_code'] = '';
	$img_file = $params['base_path'].strtolower($params['country_code']).".gif";
	if (file_exists($img_file))
	{
		$img_url = "<img src=\"".htmlspecialchars($img_file, ENT_QUOTES)."\" width=\"16\" height=\"11\" alt=\"\" /> ";
	} else
		$img_url = '';

	if (strlen($params['country_code']))
	{
		if (!isset($params['country_name']) || !strlen($params['country_name']))
			$params['country_name'] = '';
		if (isset($params['simple']) && $params['simple'])
		{
			if (!strlen($img_url))
				return '<div style="margin-left:20px">'.htmlspecialchars($params['country_name'], ENT_QUOTES).'</div>';
			else
				return $img_url.' '.htmlspecialchars($params['country_name'], ENT_QUOTES);
		}
		else
		{
			if (strlen($params['country_name']))
				$country_name = ' <small>('.htmlspecialchars($params['country_name'], ENT_QUOTES).')</small>';
			else
				$country_name = '';
			if (!strlen($img_url))
				return '<div style="margin-left:20px">'.'<b>'.htmlspecialchars($params['country_code'], ENT_QUOTES).'</b>'.$country_name.'</div>';
			else
				return $img_url.'<b>'.htmlspecialchars($params['country_code'], ENT_QUOTES).'</b>'.$country_name;
		}
	}
}

?>
