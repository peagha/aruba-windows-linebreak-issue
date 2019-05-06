require 'spec_helper'

RSpec.describe "Windows Linebreak", type: :aruba do
  it "compares linebreaks in Windows" do
    if Gem.win_platform?
      run_command(%{put_string.bat})
    else
      run_command(%{put_string})
    end

    expect(last_command_stopped.output).to include("a\nb")
  end
end
