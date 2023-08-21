### Code Review

1. Should focus on UI part, use scaffold widget cause directly using contaier gives a black screen.

2. Declear list variable for proper data type to avoid typos in future.

3. List Should be show in center for better visiuals.

### Issues
The issue here is life cycle of ListViewBuilder widget, ListViewBuilder build widgets as they visible to end user, so any thing thats not visible to end user is destroyed and when it's visible ListViewBuilder rebuilds the widget with its initial state that is `count` = 0 in ListItemWidget.

### Changes
1. I pass the initial `count` value to widget i.e `0`
2. for making every widget unique, I used `Key` parameter to increase reliability of code
3. Update the `count` variable which is initially passed to ListItemWidget.