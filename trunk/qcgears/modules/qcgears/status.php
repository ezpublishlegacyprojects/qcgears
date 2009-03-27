<?php 
/**
 * qcGears Status Information
 *
 * @author Andrew Duck
 * @version $Id$
 * @copyright Quiqcorp Limited, 27 March, 2009
 * @package com.quiqcorp.qcgears
 * @license GNU General Public License v 2.0
 **/

require_once( 'kernel/common/template.php' );

// Simple browser detection
$is_lynx = $is_gecko = $is_winIE = $is_macIE = $is_opera = $is_NS4 = $is_safari = $is_chrome = $is_iphone = false;

if (strpos($_SERVER['HTTP_USER_AGENT'], 'Lynx') !== false) {
	$is_lynx = true;
} elseif ( strpos(strtolower($_SERVER['HTTP_USER_AGENT']), 'chrome') !== false ) {
	$is_chrome = true;
} elseif ( strpos(strtolower($_SERVER['HTTP_USER_AGENT']), 'safari') !== false ) {
	$is_safari = true;
} elseif (strpos($_SERVER['HTTP_USER_AGENT'], 'Gecko') !== false) {
	$is_gecko = true;
} elseif (strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE') !== false && strpos($_SERVER['HTTP_USER_AGENT'], 'Win') !== false) {
	$is_winIE = true;
} elseif (strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE') !== false && strpos($_SERVER['HTTP_USER_AGENT'], 'Mac') !== false) {
	$is_macIE = true;
} elseif (strpos($_SERVER['HTTP_USER_AGENT'], 'Opera') !== false) {
	$is_opera = true;
} elseif (strpos($_SERVER['HTTP_USER_AGENT'], 'Nav') !== false && strpos($_SERVER['HTTP_USER_AGENT'], 'Mozilla/4.') !== false) {
	$is_NS4 = true;
}

if ( $is_safari && strpos(strtolower($_SERVER['HTTP_USER_AGENT']), 'mobile') !== false )
	$is_iphone = true;

$is_IE = ( $is_macIE || $is_winIE );

$tpl = templateInit();
$tpl->setVariable( 'is_lynx', $is_lynx );
$tpl->setVariable( 'is_chrome', $is_chrome );
$tpl->setVariable( 'is_safari', $is_safari );
$tpl->setVariable( 'is_gecko', $is_gecko );
$tpl->setVariable( 'is_winIE', $is_winIE );
$tpl->setVariable( 'is_macIE', $is_macIE );
$tpl->setVariable( 'is_opera', $is_opera );
$tpl->setVariable( 'is_NS4', $is_NS4 );
$tpl->setVariable( 'is_iphone', $is_iphone );
$tpl->setVariable( 'is_IE', $is_IE );

$Result = array();
$Result['content'] = $tpl->fetch( 'design:qcgears/status.tpl' );
$Result['path'] = array( array( 'url' => false,
								'text' => ezi18n( 'qcgears/status', 'Google Gears' ) ) );

?>