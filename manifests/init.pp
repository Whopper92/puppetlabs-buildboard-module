class buildboard {
  Class['Buildboard::Dependencies']->Class['Buildboard::Configuration']
  include apache
  include buildboard::dependencies
  include buildboard::configuration
}
