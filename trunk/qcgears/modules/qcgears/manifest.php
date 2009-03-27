<?php 
/**
 * qcGears Manifest Builder
 *
 * @author Andrew Duck
 * @version $Id$
 * @copyright Quiqcorp Limited, 27 March, 2009
 * @package com.quiqcorp.qcgears
 * @license GNU General Public License v 2.0
 **/

$manifestFiles = ezcBaseFile::findRecursive( eZSys::rootDir(), array( '@(extension|design)/(.+)\.manifest$$@' ) );
$manifest = array( "betaManifestVersion" => 1, "version" => 1);

foreach( $manifestFiles as $file )
{
	$contents = file_get_contents( $file );
	if ( $contents === false ) continue;
	
	$json = json_decode( $contents, true );
	if ( !is_null($json) )
		$manifest = array_merge_recursive( $manifest, $json );
	
}

$version = md5(json_encode($manifest));

$manifest['version'] = $version;

print_r(json_encode($manifest));

eZExecution::cleanExit();
?>