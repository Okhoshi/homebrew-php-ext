require_relative "../lib/php_extension_formula"

class PhpAT74Snmp < PhpExtensionFormula
  extension_dsl "SNMP Extension"

  disable! date: "2022-11-28", because: :versioned_formula

  depends_on "net-snmp"
  depends_on "openssl@1.1"

  configure_arg "--with-snmp=#{Formula["net-snmp"].opt_prefix}"
end
