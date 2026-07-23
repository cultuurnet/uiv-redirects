require 'tmpdir'
require 'net/http'
require 'faker'
require 'cucumber/http'

CONFIG  = YAML.load_file(File.expand_path('config.yaml', File.dirname(__FILE__)))
TMPDIR  = "#{Dir.tmpdir}/#{[*?a..?z].sample(20).join}"

at_exit do
  FileUtils.rm_r(TMPDIR, :force => true)
end
