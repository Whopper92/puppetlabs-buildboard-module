class buildboard {
  Class['Buildboard::Dependencies']->Class['Buildboard::Configuration']
  include buildboard::dependencies
  include buildboard::configuration
}
