[ https://i3wm.org/docs/layout-saving.html]: #
[ You can save the layout of either a single workspace or an entire output (e.g. LVDS1). Of course, you can repeat this step multiple times if you want to save/restore multiple workspaces/outputs.]: #

[i3-save-tree(1) is a tool to save the layout. It will print a JSON representation of i3’s internal layout data structures to stdout. Typically, you may want to take a quick look at the output, then save it to a file and tweak it a little bit:]: #

[ open apps in workspaces that need to run and in i3/config init to open apps and run i3-save-tree command to save the layout ]:#

[i3-save-tree --workspace 1 > ~/.config/i3/layouts/1.json]: #

