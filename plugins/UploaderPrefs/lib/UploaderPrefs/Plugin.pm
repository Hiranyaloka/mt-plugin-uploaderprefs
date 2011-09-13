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

1;
