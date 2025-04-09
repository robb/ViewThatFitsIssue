# ViewThatFitsIssue

When using `Double(bitPattern: 0x403f555555555555)` as the width or height of a view inside a ViewThatFits that is influenced by safe area padding inside a scroll view, the View doesn't render yet is still used for lay outing purposes.

FB17176852 (Specific View dimensions cause Views to be dropped from ViewThatFits inside ScrollViews)