<div class="context-block">
{* DESIGN: Header START *}<div class="box-header"><div class="box-tc"><div class="box-ml"><div class="box-mr"><div class="box-tl"><div class="box-tr">

<h1 class="context-title">{'Google Gears'|i18n( 'design/admin/qcgears/status' )}</h1>

{* DESIGN: Mainline *}<div class="header-mainline"></div>

{* DESIGN: Header END *}</div></div></div></div></div></div>

{* DESIGN: Content START *}<div class="box-ml"><div class="box-mr"><div class="box-content">

<div class="context-attributes">
<div class="block">

{if $is_opera|ne(true)}
	<div id="gears-msg1">
	<h3 class="title">{'Speed up eZ Publish'|i18n( 'design/admin/qcgears/status' )}</h3>
	<p>{'eZ Publish now has support for Gears, which adds new features to your web browser.'|i18n( 'design/admin/qcgears/status' )}<br />
	<a href="http://gears.google.com/" target="_blank" style="font-weight:normal;">{'More information...'|i18n( 'design/admin/qcgears/status' )}</a></p>
	<p>{'After you install and enable Gears, most of eZ Publishs&#8217; images, scripts, and CSS files will be stored locally on your computer. This speeds up page load time.'|i18n( 'design/admin/qcgears/status' )}</p>
	<p><strong>{'Don&#8217;t install on a public or shared computer.'|i18n( 'design/admin/qcgears/status' )}</strong></p>
	</div>

	<div id="gears-msg2" style="display:none;">
	<h3 class="title">{'Gears Status'|i18n( 'design/admin/qcgears/status' )}</h3>
	<p>{'Gears is installed on this computer, but is not enabled for use with eZ Publish.'|i18n( 'design/admin/qcgears/status' )}</p>
	<p>{'To enable it click the button below.'|i18n( 'design/admin/qcgears/status' )}</p>
	<p><strong>{'Note: Do not enable Gears if this is a public or shared computer!'|i18n( 'design/admin/qcgears/status' )}</strong></p>
	</div>

	<div id="gears-msg3" style="display:none;">
	<h3 class="title">{'Gears Status'|i18n( 'design/admin/qcgears/status' )}</h3>
	<p>
	{if $is_chrome|eq(true)}
		{'Gears is installed and enabled on this computer. You can disable it from your browser&#8217;s Options, Under the Hood menu.'|i18n( 'design/admin/qcgears/status' )}
	{elseif $is_safari|eq(true)}
		{'Gears is installed and enabled on this computer. You can disable it from the Safari menu.'|i18n( 'design/admin/qcgears/status' )}
	{else}
		{'Gears is installed and enabled on this computer. You can disable it from your browser&#8217;s Tools menu.'|i18n( 'design/admin/qcgears/status' )}
	{/if}
	</p>
	<p>{'If there are any errors try disabling Gears, reloading the page, and re-enabling Gears.'|i18n( 'design/admin/qcgears/status' )}</p>
	<p>{'Local storage status:'|i18n( 'design/admin/qcgears/status' )} <span id="gears-wait"><span style="color:#f00;">{'Updating files:'|i18n( 'design/admin/qcgears/status' )}</span> <span id="gears-upd-number"></span></span></p>
	</div>

	<div id="gears-msg4" style="display:none;">
	<h3 class="title">{'Gears Status'|i18n( 'design/admin/qcgears/status' )}</h3>
	<p>{'Your browser&#8217;s settings do not permit this website to use Google Gears.'|i18n( 'design/admin/qcgears/status' )}</p>
	<p>
	{if $is_chrome|eq(true)}
	 	{'To allow it, change the Gears settings in your browser&#8217;s Options, Under the Hood menu and reload this page.'|i18n( 'design/admin/qcgears/status' )}
	{elseif $is_safari|eq(true)}
	 	{'To allow it, change the Gears settings in the Safari menu and reload this page.'|i18n( 'design/admin/qcgears/status' )}
	{else}	
		{'To allow it, change the Gears settings in your browser&#8217;s Tools menu and reload this page.'|i18n( 'design/admin/qcgears/status' )}
	{/if}
	</p>
	<p><strong>{'Note: Do not enable Gears if this is a public or shared computer!'|i18n( 'design/admin/qcgears/status' )}</strong></p>
	</div>
{else}	
	{'Google Gears is not available for your browser.'|i18n( 'design/admin/qcgears/status' )}
{/if}

</div>
</div>

{* DESIGN: Content END *}</div></div></div>

<div class="controlbar">

{* DESIGN: Control bar START *}<div class="box-bc"><div class="box-ml"><div class="box-mr"><div class="box-tc"><div class="box-bl"><div class="box-br">

<div class="block">

    <input id="gears-install" class="button" type="submit" onclick="window.location = 'http://gears.google.com/?action=install&amp;return={'qcgears/status'|ezurl('no','full')}';" value="{'Install Now'|i18n( 'design/admin/qcgears/status' )}" />
	<input id="gears-enable" class="button" style="display:none;" type="submit" onclick="qcGears.getPermission();" value="{'Enable Gears'|i18n( 'design/admin/qcgears/status' )}" />
	<script type="text/javascript">qcGears.message();</script>

</div>

{* DESIGN: Control bar END *}</div></div></div></div></div></div>

</div>