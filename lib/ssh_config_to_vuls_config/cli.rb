require 'thor'
require 'sconb'
require 'toml'
require 'timeout'

module SshConfigToVulsConfig
  class CLI < Thor
    default_command :convert

    desc 'convert', 'ssh_config to vuls config.toml'
    def convert
      begin
        stdin = timeout(1) { $stdin.read }
      rescue Timeout::Error
      end
      parsed = Sconb::SSHConfig.parse(stdin)
      config = { servers: {} }
      parsed.each do |host, detail|
        next if host =~ /\*/
        next if detail.key?('Match')
        next unless detail.key?('Host')
        next unless detail.key?('IdentityFile')
        key_path = File.expand_path(detail['IdentityFile'].first)
        config[:servers][detail['Host']] = {
          host: detail['Hostname'],
          user: detail['User'] || 'root',
          port: detail['Port'] || '22',
          keyPath: key_path
        }
      end
      puts TOML.dump(config)
    end
  end
end
