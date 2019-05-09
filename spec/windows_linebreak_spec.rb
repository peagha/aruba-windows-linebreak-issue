require 'spec_helper'

RSpec.describe "Windows Linebreak", type: :aruba do
  it "compares linebreaks in Windows" do
    run_command(%{bin/put_string})

    expect(last_command_stopped.output).to include(<<~STR)
      a
      b
    STR
  end
end
