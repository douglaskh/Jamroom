{include file="`$jamroom_dir`/skins/Flex/header.tpl"}

<div class="container">

  <div class="row">
    <div class="col12 last">
      <div class="block">
       <h1>{$profile_name}</h1>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col6">
      <div class="block">
        {jrCore_module_function function="jrImage_display" module="jrProfile" type="profile_image" item_id=$_profile_id size="xxlarge" class="img_scale" alt=$profile_name width=false height=false}
      </div>
    </div>

    <div class="col6 last">
      <div class="block">
       This is a 6 column grid
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col6">
      <div class="block">
       This is a 6 column grid
      </div>
    </div>

    <div class="col6 last">
      <div class="block">
       Profile Views: {jrCore_get_count module="jrProfile" item_id=$_profile_id name="profile_view"}
      </div>
    </div>
  </div>

</div>

{include file="`$jamroom_dir`/skins/Flex/footer.tpl"}

{* setup counter for page view *}
{jrCore_counter module="jrProfile" item_id=$_profile_id name="profile_view"}
