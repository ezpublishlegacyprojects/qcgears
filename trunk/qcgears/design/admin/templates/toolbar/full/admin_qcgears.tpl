<div id="qcgears-tool">

<div class="box-header"><div class="box-tc"><div class="box-ml"><div class="box-mr">{section show=$first}<div class="box-tl"><div class="box-tr">{/section}

{section show=ezpreference( 'admin_qcgears_menu' )}
    {section show=and( ne( $ui_context, 'edit' ), ne( $ui_context, 'browse' ) )}
     <h4><a href={'/qcgears/status/'|ezurl} title="{'Google gears status'|i18n( 'design/admin/qcgears' )}">{'Google Gears'|i18n( 'design/admin/qcgears' )}</a></h4>
    {section-else}
     {section show=eq( $ui_context, 'edit' )}
       <h4><span class="disabled">{'Google Gears'|i18n( 'design/admin/qcgears' )}</span></h4>
     {section-else}
       <h4>{'Google Gears'|i18n( 'design/admin/qcgears' )}</h4>
     {/section}
    {/section}
    
</div></div></div></div>{section show=$first}</div></div>{/section}

{section show=$last}
<div class="box-bc"><div class="box-ml"><div class="box-mr"><div class="box-bl"><div class="box-br"><div class="box-content">
{section-else}
<div class="box-ml"><div class="box-mr"><div class="box-content">
{/section}

{* content in the middle *}
</div></div></div>{section show=$last}</div></div></div>{/section}

{section-else}
    {section show=and( ne( $ui_context,'edit' ), ne( $ui_context, 'browse' ) )}
     <h4><a href={'/qcgears/status/'|ezurl} title="{'Google gears status'|i18n( 'design/admin/qcgears' )}">{'Google Gears'|i18n( 'design/admin/qcgears' )}</a></h4>
    {section-else}
     {section show=eq( $ui_context, 'edit' )}
      <h4><span class="disabled">{'Google Gears'|i18n( 'design/admin/qcgears' )}</span></h4>
     {section-else}
      <h4>{'Google Gears'|i18n( 'design/admin/qcgears' )}</h4>
     {/section}
    {/section}
    
</div></div></div></div>{section show=$first}</div></div>{/section}

{section show=$last}
<div class="box-bc"><div class="box-ml"><div class="box-mr"><div class="box-bl"><div class="box-br"><div class="box-content">
</div></div></div></div></div></div>
{/section}

{/section}
</div>
