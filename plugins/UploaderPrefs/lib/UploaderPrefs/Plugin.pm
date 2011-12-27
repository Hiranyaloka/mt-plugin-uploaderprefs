# ----------------------------------------------------------------------------
# Uploader Prefs
# A Movable Type plugin to alter default asset upload behaviour.
# http://hiranyaloka.com/website_design_encinitas/software/uploaderprefs-plugin-for-melody-and-mt4.html
#
# Release 0.2 — 2011/11/11
# ----------------------------------------------------------------------------
# This free software is provided as-is WITHOUT ANY KIND OF GUARANTEE.
# You may use it for commercial or personal use.
# You can distribute or modify it, provided you keep this notice intact.
#
# Copyright (C) François Nonnenmacher, Ubiquitic. http://ubiquitic.com/
#   thanks to François for AssetDuJour plugin Release 1.1 — 2010/12/15
#
# Copyright (C) Richard Bychowski, Hiranyaloka. http://hiranyaloka.com/
# ----------------------------------------------------------------------------

use MT 4.2;

package UploaderPrefs::Plugin;
use warnings;
use strict;

# transform file upload option
sub asset_options_src {
  my ($cb, $app, $tmpl) = @_;
  my $blog = $app->blog;
  my $blog_id = $blog->id;  
  my $plugin = MT->component("UploaderPrefs");
  
# new entry checkbox defaults
  my $create_entry_default = $plugin->get_config_value(
    'create_entry_with_file_default' , 'blog:' . $blog_id );
  if ($create_entry_default) {
      return;
  }

  $$tmpl =~ s/checked\s*=\s*['"]\s*\w*?\s*['"]//i;
  
}

# transform dropdown list
sub asset_upload_src {
  my ($cb, $app, $tmpl) = @_;
  my $blog = $app->blog;
  my $blog_id = $blog->id;  
  my $plugin = MT->component("UploaderPrefs");
# prepend upload folder base to middle path
  my $upload_folder_base = $plugin->get_config_value(
    'upload_folder_base' , 'blog:' . $blog_id );
  if ($upload_folder_base) {
    $$tmpl = '<mt:Var name="middle_path" value="' . $upload_folder_base . '" prepend="1">'.$$tmpl;
  } 
# move site root to the end of the options list
  my $date_based_default = $plugin->get_config_value(
    'date_based_default' , 'blog:' . $blog_id );
  if ($date_based_default) {
    $$tmpl = '<mt:loop name="extra_paths"><mt:var name="middle_path" value="$path" escape="html"></mt:loop>' . $$tmpl;
  	$$tmpl =~ s/name="selected"/name="__last__"/;
  } 
}

1;
