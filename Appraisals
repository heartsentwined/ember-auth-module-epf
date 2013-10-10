EMBER_VERSIONS = %w(
1.0.0
)

EPF_VERSIONS = %w(
0.1.4 0.1.3 0.1.2 0.1.1 0.1.0
)

EMBER_AUTH_VERSIONS = %w(
9.0.0
)

EMBER_VERSIONS.each do |ember|
  EPF_VERSIONS.each do |epf|
    EMBER_AUTH_VERSIONS.each do |ember_auth|
      appraise "ember-#{ember}-epf-#{epf}-ember-auth-#{ember_auth}" do
        gem 'ember-source', ember
        gem 'epf-source', epf
        gem 'ember-auth-source', ember_auth
      end
    end
  end
end
