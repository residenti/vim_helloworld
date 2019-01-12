"
" pluginディレクトリ
" vim起動時に呼ばれるスクリプトファイルを置く.
" 関数呼び出し処理を書く.
"

" vimのスクリプトファイルが指定したエンコーディングで読み込まれることを保証.
scriptencoding utf-8

" 読み込み制御用の変数が定義済みなら処理を抜ける.
if exists('g:loaded_helloworld')
  finish
endif

let g:loaded_helloworld = 1

" ユーザー設定を一時退避.
let s:save_cpo = &cpo
set cpo&vim

nnoremap z :call helloworld#helloworld()<CR>

" 退避していたユーザ設定を戻す.
let &cpo = s:save_cpo
unlet s:save_cpo


