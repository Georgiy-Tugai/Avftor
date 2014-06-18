Features List
=============

Prio: High
----------


* FAST!
   * Loading time minimised as much as feasibly possible
* Good Syntax Highlighting (Lexer based!!)
   * This will be a problem for large files. Consider auto-disabling, caching, etc. magic.
* Configuration:
   * Themes
   * Reload system
   * Language-in-Project, Project, Language, User, Global, Default settings
      * Maybe no global because almost all machines are single-user nowadays?
      * It’s good for distro defaults
         * Maybe have a more flexible inheritance thing, toggleable config files?
         * "Distro Settings" and "Themes" etc. by the same mechanism
* Good file update handling
   * VCS integration (don't ask about file updates without user changes upon vcs actions)
      * Offer to stash unsaved changes?
* Large file support
* Find/Replace with regex, escape & plaintext modes
   * HTML/XML tags mode?
   * All in selection, session, project modes too
* Snippet support
   * No dialogue boxes. Have the replaceable areas "tagged" so that a key can go to the next/previous area, automatically selecting it.
* Refactoring utils
* Large project support
   * What problems exist here?
   * Massive projects that cause searches etc to lag out
   * Shouldn’t be too much of a problem I would have thought, but we should make sure we test it at some point
* Linux, Mac, Windows support
* Unicode support
* Tabs
* Fullscreen mode
* Everything can be assigned a keyboard shortcut
   * Make sure to show keyboard shortcuts on mouseover or something, for easy learning.
* Plugins
* Multiple simultaneous project support (if it works in separate instances, that’s fine with me)
   * Saves open-file-state with project file?
* Code intelligence
   * Library-specific syntax highlighting?
      * Might be trickier to do since lexers, but possible
      * Inheritance. Lexers just pick up on the syntactical elements; config files specify which ones are keywords (typeof, foreach…)
   * ctagslike?
   * Code prompting (preferably proper code prompting with clang support)
* Internationalization
   * Even if it isn’t exactly a high priority, it should be pretty easy to add and it’s one of those things that’s probably better to do from the start


Prio: Med
---------

* Android, Solaris, *BSD support
* Language-specific useful stuff
* VCS integration
* Symbol search etc
* Multiple views, single buffer
* Code tidying
   * Tie this into the syntax highlight? Lexers are picking apart the syntax in any case; they could specify which syntax elements should open/close indentation, etc etc
      * for code assistance, sure
      * that'll cause "fun" if the code assistance doesn't have the same idea about what code should look like as astyle/perltidy, so use the same mechanism.
      * not really, astyle/perltidy would be a ‘F5 to tidy’ thing
      * but f5 to tidy should be a no-op if you've been doing The Right Thing, pretty much. Also, astyle and perltidy break some things that they shouldn't break, like data structures with "custom" indentation.
      * and perltidy is pretty slow
         * what do you expect of PPI? It's not exactly blazing fast… we'll have to use something else for large files, or some splitting trick.
         * PPI's goal is perfect round-trip parsing, including comments and POD — astyle afaik doesn't really care about the details much, it just looks at { } etc.
         * True; could be fun writing a lexer/parser etc anyway
         * clang works for some things, not all cases though (not by a *long* shot  It’s more that it has to be configured properly and it is compiling stuff 
            * okay, so it's not the PPI of C. Damn. 
            * I haven't seen any projects in that vein, actually.
   * Astyle, perl tidy are really really good already though
      * Not so sure about astyle. I know that perltidy uses a lexer (PPI), but it could use more options anyways.
* Minimal mode?
   * Clears screen of extra toolbars etc, would probably only keep tab bar or document list side pane (and the main editor) visible, hides everything else
* Rich-text copy?
   * Copies formatted code to clipboard
   * Maybe a HTML export to create nicely formatted code for webpages
* Spellcheck
   * Comment-only
   * Include keywords & symbols as being correctly spelt




Prio: Low
---------
Not entirely sure about whether I’ve got stuff in right prio


* Split-window
* Remote editing
   * This is quite a "competitive" feature (if we care about that kind of stuff), i.e it's mostly the domain of $100 IDEs (and emacs).
* Collaborative editing
* Cursor multiplexing
   * Both this and collab editing => we have to use a custom widget, if we aren't already.
   * We’ll need a custom widget *for sure*
   * e.g Scintilla (an existing widget which might be reusable with custom highlighting).
