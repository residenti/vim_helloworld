"
" autoloadディレクトリ
" 必要になったタイミングで読み込まれるスクリプトファイルを置く.
" 呼び出される関数を書く
"

" vimのスクリプトファイルが指定したエンコーディングで読み込まれることを保証.
scriptencoding utf-8

" 読み込み制御用の変数が未定義なら、
" plugin以下のスクリプトが読み込まれていないと判断できるため処理を抜ける.
if !exists('g:loaded_helloworld')
  finish
endif

let g:loaded_helloworld = 1

" ユーザー設定を一時退避.
let s:save_cpo = &cpo
set cpo&vim

function! helloworld#helloworld()
  echo "Hello World!"
endfunction

" 退避していたユーザ設定を戻す.
let &cpo = s:save_cpo
unlet s:save_cpo


