{if isset($_items)}
  {foreach from=$_items item="row"}
  {jrCore_module_function function="jrImage_display" module="jrProfile" type="profile_image" item_id=$row._profile_id size="small" crop="auto" alt=$row.profile_name class="ioutline"} {$row.list_rank}: {$row.profile_name}<br>
  {/foreach}
{/if}
