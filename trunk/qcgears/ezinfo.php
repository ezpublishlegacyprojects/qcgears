<?php
/**
 * qcGears 
 *
 * @author Andrew Duck
 * @version $Id$
 * @copyright Quiqcorp Limited, 27 March, 2009
 * @package com.quiqcorp.qcgears
 * @license GNU General Public License v 2.0
 **/

class qcGearsInfo
{
	static function info()
	{
		return array( 'Name'	=> 'Quiqcorp Google Gears',
					  'Version' => '1.0.0',
					  'Copyright' => 'Copyright (C) 2009 Quiqcorp Limited',
					  'License' => 'GNU General Public License v 2.0',
					  'Includes the following library' => array( 'Name' => 'Google Gears Init',
																 'Version' => 'betaManifest 1',
																 'License' => 'Unknown' )
					);
	}
}

?>