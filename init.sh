!/usr/bin/fish
cat ./fish_config.fish>>~/.config/fish/config.fish

set config_to_add ('
{'glepnir/template.nvim', cmd = {'Template','TemProject'}, 
            config = function()
                require('template').setup({
                    temp_dir='/mnt/e/00-C++/template',
                    author='ajianke',
                    email='ajianke2@gmail.com',
                    -- config in there
                })
            end},
')
if $status -ne 0
    # 在文件末尾添加配置
    echo -n $'\n' >> $config_file # 添加一个空行，保持格式美观
    echo -n $config_to_add >> $config_file
    echo "Configuration added to $config_file"
else
    echo "Configuration already exists in $config_file"
end
