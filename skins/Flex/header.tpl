<!doctype html>
<html lang="{jrCore_lang module="_settings" id="lang" default="en"}" dir="{jrCore_lang module="_settings" id="direction" default="ltr"}">
<head>
<title>{$page_title|default:'Welcome'} | {$_conf.jrCore_system_name}</title>
<meta http-equiv="Content-Type" content="text/html; charset={jrCore_lang module="_settings" id="charset" default="utf-8"}" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
{if isset($meta)}
{foreach from=$meta key="mname" item="mvalue"}
<meta name="{$mname}" content="{$mvalue}" />
{/foreach}
{/if}
<link rel="stylesheet" href="{jrCore_css_src}" media="screen" />
{if isset($css_href)}
{foreach from=$css_href item="_css"}
<link rel="stylesheet" href="{$_css.source}" media="{$_css.media|default:"screen"}" />
{/foreach}
{/if}
{if isset($css_embed)}
<style type="text/css">
{$css_embed}</style>
{/if}
{if isset($javascript_embed)}
<script type="text/javascript">
{$javascript_embed}</script>
{/if}
<script type="text/javascript" src="{jrCore_javascript_src}"></script>
{if isset($javascript_href)}
{foreach from=$javascript_href item="_js"}
<script type="{$_js.type|default:"text/javascript"}" src="{$_js.source}"></script>
{/foreach}
{/if}
{if isset($javascript_ready_function)}
<script type="text/javascript">
$(document).ready(function(){ldelim}
{$javascript_ready_function}return true;
{rdelim});
</script>
{/if}
</head>

<body>

<div id="header">
  <div id="header_content">

    <table>
      <tr>

        {* logo *}
        <td id="main_logo_holder" style="width:30%">
          <a href="{$jamroom_url}">{jrCore_image image="logo.png" width="300" height="75" alt=$_conf.jrCore_system_name}</a>
        </td>

        {* menu *}
        <td id="main_menu" style="width:70%">
          {if jrUser_is_logged_in()}

            <a href="{$jamroom_url}/{jrCore_module_url module="jrProfile"}/settings">Profile Settings</a> &bull;
            <a href="{$jamroom_url}/{jrCore_module_url module="jrUser"}/account">Account</a> &bull;
            <a href="{$jamroom_url}/{$_user.profile_url}">View Profile</a> &bull;
            <a href="{$jamroom_url}/{jrCore_module_url module="jrUser"}/logout">Logout</a>

          {else}

            {* If we are in maintenance mode we don't want to show the signup link *}
            {if $_conf.jrCore_maintenance_mode != 'on'}
            <a href="{$jamroom_url}/{jrCore_module_url module="jrUser"}/signup">Create Account</a> &bull;
            {/if}

            <a href="{$jamroom_url}/{jrCore_module_url module="jrUser"}/login">Login</a>

          {/if}
        </td>

      </tr>
    </table>

  </div>
</div>

<div id="wrapper">
  <div id="content">

  <!-- end header.tpl -->
