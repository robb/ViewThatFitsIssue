# ViewThatFitsIssue

When using e.g. [`Double(bitPattern: 0x403f555555555555)`](https://float.exposed/0x403f555555555555) as the width or height of a view inside a ViewThatFits that is influenced by safe area padding inside a scroll view, the View doesn't render yet is still used for lay outing purposes.

<img width="478" alt="Screenshot 2025-04-09 at 20 00 27" src="https://github.com/user-attachments/assets/47aab985-bf25-442b-be9a-aaec05ba9569" />

FB17176852 (Specific View dimensions cause Views to be dropped from ViewThatFits inside ScrollViews)
