# Jekyll post Template

This is a simple ruby program for automatically create post template.
It can generate the below code template for default configuration.

        ---
        layout: your_layout
        title: "your_title"
        date: 2015-02-01 00:00:00
        ---

# Install

        gem install jklpost

# Usage

        $jklpost <filename> <layout> [options]

# Example

Default title is your filename.

        $jklpost hello mylayout

It will generate an markdown file *.md* in your current directory.

# License

MIT
