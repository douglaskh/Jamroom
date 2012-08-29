  </div>

</div>

  <div id="footer">
    <div id="footer_content">
      <table>
        <tr>
          <td>
            {jrCore_image image="logo.png" width="150" height="38" alt="SuperNova Skin"} &copy;2012 The Jamroom Network
          </td>
          <td style="text-align:right">
            {if jrUser_is_master()} 
            {jrCore_get_module_index module="jrCore" assign="url"}
            <a href="{$jamroom_url}/{jrCore_module_url module="jrCore"}/{$url}">Admin Control Panel</a>
            {/if}
          </td>
        </tr>
      </table>
    </div>
  </div>

{if isset($javascript_footer_href)}
{foreach from=$javascript_footer_href item="_js"}
<script type="{$_js.type|default:"text/javascript"}" src="{$_js.source}"></script>
{/foreach}
{/if}
{if isset($javascript_footer_function)}
<script type="text/javascript">
{$javascript_ready_function}return true;
</script>
{/if}

{* do not remove this hidden div *}
<div id="jr_temp_work_div" style="display:none"></div>

</body>
</html>
