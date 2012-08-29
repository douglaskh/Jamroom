<?php
/**
 * Jamroom 5 SuperNova skin
 * @copyright 2003 - 2012 by The Jamroom Network - All Rights Reserved
 * @author Brian Johnson - brian@jamroom.net
 */

// We are never called directly
if (!defined('APP_DIR')) { exit; }

/**
 * Flex_meta
 */
function Flex_meta()
{
    $_tmp = array(
        'name'        => 'Flex',
        'version'     => '1.0.0a',
        'developer'   => 'The Jamroom Network, &copy;'. strftime('%Y'),
        'description' => 'The Default Jamroom 5 Skin - clean and easy to expand',
        'support'     => 'http://www.jamroom.net/phpBB2'
    );
    return $_tmp;
}

/**
 * Flex_init
 * NOTE: unlike with a module, init() is NOT called on each page load, but is
 * called when the core needs to rebuild CSS or Javascript for the skin
 */
function Flex_init()
{
    // Register our CSS files with the core
    jrCore_register_skin_css('Flex','core.css');
    jrCore_register_skin_css('Flex','form.css');
    jrCore_register_skin_css('Flex','list.css');
    jrCore_register_skin_css('Flex','page.css');
    jrCore_register_skin_css('Flex','grid.css');
    jrCore_register_skin_css('Flex','skin.css');
    return true;
}
