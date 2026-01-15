" K8s log viewer plugin

" Read logs from k8s pod
function! K8sReadLogs(pod, namespace)
    execute '0read! kubectl logs ' . a:pod . ' -n ' . a:namespace
endfunction

" Filter logs with grep -e (include patterns)
function! K8sGrep(...)
    let patterns = []
    
    for pattern in a:000
        call add(patterns, '-e "' . escape(pattern, '"') . '"')
    endfor
    
    execute '%!grep ' . join(patterns, ' ')
endfunction

" Filter logs with grep -v (exclude patterns)
function! K8sGrepV(...)
    let patterns = []
    
    for pattern in a:000
        call add(patterns, '-e "' . escape(pattern, '"') . '"')
    endfor
    
    execute '%!grep -v ' . join(patterns, ' ')
endfunction

" Commands
command! -nargs=+ KLogs call K8sReadLogs(<f-args>)
command! -nargs=+ KGrep call K8sGrep(<f-args>)
command! -nargs=+ KGrepv call K8sGrepV(<f-args>)
