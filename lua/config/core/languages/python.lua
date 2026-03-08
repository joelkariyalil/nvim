vim.api.nvim_create_user_command("PyBootStrap", function()
	os.execute([[
        python3 -m venv venv 
        mkdir src
        touch src/hello.py
        echo 'venv/' > .gitignore
        source venv/activate
    ]])
end, {})

vim.api.nvim_create_user_command("PyActivateEnv", function()
	os.execute([[
        source venv/activate
    ]])
end, {})

vim.api.nvim_create_user_command("PySyncRequirements", function()
	os.execute([[
        pip freeze > requirements.txt
    ]])
end, {})

vim.api.nvim_create_user_command("PipInstall", function(opts)
	os.execute("pip install " + opts.args)
end, {})
