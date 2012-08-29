{include file="`$jamroom_dir`/skins/Flex/header.tpl"}

<div class="container">

  <div class="row">
    <div class="col12 last">
      <div class="block center">
       This is the MAIN INDEX
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col4">
      <div class="block">
       Newest Profiles:<br>
       {jrCore_list module="jrProfile" order_by="_created desc" search1="profile_active = 1" template="index_list_profiles.tpl" limit="5" require_image="profile_image"}
      </div>
    </div>

    <div class="col8 last">
      <div class="block">
       {jrCore_list module="paYoutube" order_by="_created asc"}
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
       This is a 6 column grid
      </div>
    </div>
  </div>

</div>

{include file="`$jamroom_dir`/skins/Flex/footer.tpl"}
