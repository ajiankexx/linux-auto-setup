require('lazy').setup({
    spec={
        {
            'glepnir/template.nvim',
            cmd = {'Template','TemProject'},
            config = function()
                require('template').setup({
                    temp_dir='/mnt/e/00-C++/template',
                    author='ajianke',
                    email='ajianke2@gmail.com',
                })
            end
        },

    }
})
