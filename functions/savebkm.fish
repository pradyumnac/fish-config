# Defined in - @ line 1
function savebkm
    echo  "Generated at" (date +%s) > ~/Research/bookmarks.md
    set pdf_files (find | grep \.pdf)
    for f in  $pdf_files;
        set output (gio info --attributes=metadata::xreader::bookmarks $f|grep metadata) 
        if test -n (string trim "$output");
            echo "$f ==> :$output:" >> ~/Research/bookmarks.md;
        end
    end;
end
