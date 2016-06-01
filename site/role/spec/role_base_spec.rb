require 'spec_helper_acceptance'




describe "role::base" , :if => fact('puppet_role').match(/base/) do
  let(:pp) do
    <<-EOS
        class { 'role::base':
        }
    EOS
  end

  it_behaves_like "a idempotent resource"

  end
end