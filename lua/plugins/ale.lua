vim.g.ale_fixers = { 
  ['*'] = { 'prettier', 'eslint' }, 
  ['json'] = { 'prettier', 'eslint' }
} 
vim.g.ale_fix_on_save = true
