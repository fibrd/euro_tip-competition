<?php

/**
 * Special function counting score for particular sporttip competition
 * Based on specific conditions
 *
 * @param integer $tip_home
 * @param integer $tip_away
 * @param integer $result_home
 * @param integer $result_away
 * @param integer $bonus_len
 * @return void
 */
function countScore( $tip_home, $tip_away, $result_home, $result_away, $bonus_len = 5 )
{
	$score = 0;

	if ( $tip_home == $result_home && $tip_away == $result_away ) 
	{
		$score = 4;
		if ( $tip_home + $tip_away >= $bonus_len ) {
			 $score += 1;
		}

	} elseif ($tip_home - $tip_away == $result_home - $result_away) 
	{
		$score = 2;
	} elseif ( ($tip_home - $tip_away) * ($result_home - $result_away) > 0 ) {
		$score = 1;
	}

	return $score;
}

/**
 * Word Limiter
 *
 * Limits a string to X number of words.
 *
 * @param	string
 * @param	int
 * @param	string	the end character. Usually an ellipsis
 * @return	string
 */
function word_limiter($str, $limit = 100, $end_char = '...')
{
	if (trim($str) === '') {
		return $str;
	}

	preg_match('/^\s*+(?:\S++\s*+){1,'.(int) $limit.'}/', $str, $matches);

	if (strlen($str) === strlen($matches[0])) {
		$end_char = '';
	}

	return rtrim($matches[0]).$end_char;
}



/**
 * Add Paragraphs
 *
 * Adds line breaks into text
 * And breaks it into paragraphs as needed
 *
 * @param  string  $str
 * @return mixed|string
 */
function add_paragraphs( $str )
{
	// Trim whitespace
	if (($str = trim($str)) === '') return '';

	// Standardize newlines
	$str = str_replace(array("\r\n", "\r"), "\n", $str);

	// Trim whitespace on each line
	$str = preg_replace('~^[ \t]+~m', '', $str);
	$str = preg_replace('~[ \t]+$~m', '', $str);

	// The following regexes only need to be executed if the string contains html
	if ($html_found = (strpos($str, '<') !== FALSE))
	{
		// Elements that should not be surrounded by p tags
		$no_p = '(?:p|div|article|header|aside|hgroup|canvas|output|progress|section|figcaption|audio|video|nav|figure|footer|video|details|main|menu|summary|h[1-6r]|ul|ol|li|blockquote|d[dlt]|pre|t[dhr]|t(?:able|body|foot|head)|c(?:aption|olgroup)|form|s(?:elect|tyle)|a(?:ddress|rea)|ma(?:p|th))';

		// Put at least two linebreaks before and after $no_p elements
		$str = preg_replace('~^<'.$no_p.'[^>]*+>~im', "\n$0", $str);
		$str = preg_replace('~</'.$no_p.'\s*+>$~im', "$0\n", $str);
	}

	// Do the <p> magic!
	$str = '<p>'.trim($str).'</p>';
	$str = preg_replace('~\n{2,}~', "</p>\n\n<p>", $str);

	// The following regexes only need to be executed if the string contains html
	if ($html_found !== FALSE)
	{
		// Remove p tags around $no_p elements
		$str = preg_replace('~<p>(?=</?'.$no_p.'[^>]*+>)~i', '', $str);
		$str = preg_replace('~(</?'.$no_p.'[^>]*+>)</p>~i', '$1', $str);
	}

	// Convert single linebreaks to <br />
	$str = preg_replace('~(?<!\n)\n(?!\n)~', "<br>\n", $str);

	return $str;
}



/**
 * Filter Url
 *
 * URL filter. Automatically converts text web addresses (URLs, e-mail addresses,
 * ftp links, etc.) into hyperlinks.
 *
 * @param  string  $text
 * @return mixed|string
 */
function filter_url( $text )
{
	// Pass length to regexp callback
	filter_url_trim(NULL, 72);

	$text = ' '. $text .' ';

	// Match absolute URLs.
	$text = preg_replace_callback("`(<p>|<li>|<br\s*/?".">|[ \n\r\t\(])((http://|https://|ftp://|mailto:|smb://|afp://|file://|gopher://|news://|ssl://|sslv2://|sslv3://|tls://|tcp://|udp://)([a-zA-Z0-9@:%_+*~#?&=.,/;()-]*[a-zA-Z0-9@:%_+*~#&=/;-]))([.,?!]*?)(?=(</p>|</li>|<br\s*/?".">|[ \n\r\t\)]))`i",
		'filter_url_parse_full_links', $text);

	// Match e-mail addresses.
	$text = preg_replace("`(<p>|<li>|<br\s*/?".">|[ \n\r\t\(])([A-Za-z0-9._-]+@[A-Za-z0-9._+-]+\.[A-Za-z]{2,4})([.,?!]*?)(?=(</p>|</li>|<br\s*/?".">|[ \n\r\t\)]))`i", '\1<a href="mailto:\2">\2</a>\3', $text);

	// Match www domains/addresses.
	$text = preg_replace_callback("`(<p>|<li>|[ \n\r\t\(])(www\.[a-zA-Z0-9@:%_+*~#?&=.,/;-]*[a-zA-Z0-9@:%_+~#\&=/;-])([.,?!]*?)(?=(</p>|</li>|<br\s*/?".">|[ \n\r\t\)]))`i",
		'filter_url_parse_partial_links', $text);
	$text = substr($text, 1, -1);

	return $text;
}



/**
 * Filter Url Parse Full Links
 *
 * Make links out of absolute URLs.
 *
 * @param  string $match
 * @return string
 */
function filter_url_parse_full_links( $match )
{
	$caption = filter_url_trim( $match[2] );
	return $match[1] . '<a href="'. $match[2] .'" title="'. $match[2] .'">'. $caption .'</a>'. $match[5];
}



/**
 * Filter Url Parse Partial Links
 *
 * Make links out of domain names starting with "www."
 *
 * @param  $match
 * @return string
 */
function filter_url_parse_partial_links( $match )
{
	$caption = filter_url_trim($match[2]);
	return $match[1] . '<a href="http://'. $match[2] .'" title="'. $match[2] .'">'. $caption .'</a>'. $match[3];
}



/**
 * Filter Url Trim
 *
 * Shortens long URLs to http://www.example.com/long/url...
 *
 * @param  string  $text
 * @param  null    $length
 * @return string
 */
function filter_url_trim( $text, $length = NULL )
{
	static $_length;

	if ( $length !== NULL ) $_length = $length;
	if ( strlen($text) > $_length ) $text = substr($text, 0, $_length) .'&hellip;';

	return $text;
}



/**
 * Link to previous page
 *
 * @param string $text
 * @return string
 */
function link_back( $text = 'Back' )
{
	return '<a href="'. URL::previous() ."\">$text</a>";
}



/**
 * so we know, where we are
 */
function body_id()
{
	$body_id = preg_replace('/\d-/', '', implode( '-', Request::segments() ) );
	return ! empty( $body_id ) && $body_id != '-' ? $body_id : 'home';
}



/**
 * so we know, where we are
 */
function body_class()
{
	$body_classes = [];

	if ( $route_name = Route::currentRouteName() ) {
		$body_classes = explode('.', $route_name);
	}

	$class = "";

	foreach ( Request::segments() as $segment )
	{
		if ( is_numeric( $segment ) || empty( $segment ) )
			continue;

		$class .= ! empty( $class ) ? "-" . $segment : $segment;
		array_push( $body_classes, $class );
	}

	return ! empty( $body_classes ) ? implode( ' ', array_unique($body_classes) ) : 'home';
}