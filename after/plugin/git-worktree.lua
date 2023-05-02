local Worktree = require("git-worktree")

Worktree.setup({})

require("telescope").load_extension("git_worktree")

vim.keymap.set('n', '<leader>=', function ()
  require('telescope').extensions.git_worktree.git_worktrees()
end)

vim.keymap.set('n', '<leader>+', function ()
  require('telescope').extensions.git_worktree.create_git_worktree()
end)


Worktree.on_tree_change(function(op, metadata)
  if op == Worktree.Operations.Switch then
    print("Switched from " .. metadata.prev_path .. " to " .. metadata.path)
  end
end)
