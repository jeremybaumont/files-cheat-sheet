cheatsheet do
    title 'files'
    docset_file_name 'files'
    keyword 'files'
    category do
        id 'filesystem'
        entry do
            name 'Check inodes'
            command 'df -ih /'
        end
        entry do 
            name 'Remove a directory with a lots of files'
            command 'mkdir empty_dir'
            command 'rsync -a --delete empty_dir/    yourdirectory/'
        end
        entry do
            name 'Find the directory with a lots of files'
            command 'find . -xdev -type f | cut -d "/" -f 2 | sort | uniq -c | sort -n'
        end

    end
end
