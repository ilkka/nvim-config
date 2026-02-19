local mc = require("multicursor-nvim")
mc.setup()
local set = vim.keymap.set

set({'n', 'x'}, '<up>', function() mc.lineAddCursor(-1) end, { desc = 'Add cursor on previous line' })
set({'n', 'x'}, '<down>', function() mc.lineAddCursor(1) end, { desc = 'Add cursor on next line' })
set({'n', 'x'}, '<leader><up>', function() mc.lineSkipCursor(-1) end, { desc = 'Skip cursor on previous line' })
set({'n', 'x'}, '<leader><down>', function() mc.lineSkipCursor(1) end, { desc = 'Skip cursor on next line' })

set({'n', 'x'}, '<leader>n', function() mc.matchAddCursor(1) end, { desc = 'Add cursor on next match' })
set({'n', 'x'}, '<leader>N', function() mc.matchAddCursor(-1) end, { desc = 'Add cursor on previous match' })
set({'n', 'x'}, '<leader>s', function() mc.matchSkipCursor(1) end, { desc = 'Skip cursor on next match' })
set({'n', 'x'}, '<leader>S', function() mc.matchSkipCursor(-1) end, { desc = 'Skip cursor on previous match' })

set('n', '<c-leftmouse>', mc.handleMouse)
set('n', '<c-leftdrag>', mc.handleMouseDrag)
set('n', '<c-leftrelease>', mc.handleMouseRelease)

set({'n', 'x'}, '<c-q>', function() mc.toggleCursor() end, { desc = 'Disable or enable cursors' })

-- set mappings that are enabled only when there are multiple cursor
mc.addKeymapLayer(function(layerSet)
    layerSet({'n', 'x'}, '<left>', mc.prevCursor, { desc = 'Set previous cursor as main' })
    layerSet({'n', 'x'}, '<right>', mc.nextCursor, { desc = 'Set next cursor as main' })
    layerSet({'n', 'x'}, '<leader>x', mc.deleteCursor, { desc = 'Delete main cursor' })
    
    -- enable and clear cursor with esc
    layerSet('n', '<esc>', function()
        if not mc.cursorsEnabled() then
            mc.enableCursors()
        else
            mc.clearCursors()
        end
    end, { desc = 'Enable or clear cursors' })
end)
