Vim�UnDo� �}�l�Ytн��푶UQ��Z:e���y]j                                     `���    _�                            ����                                                                                                                                                                                                                                                                                                                                                             `�w    �                   5��                        K                   K       �        K                  K                      �                       :   L               :       �       :                  �                      �                       ;   �               ;       �       ;                  �                      �                       :   �               :       �       :                  �                      �                       >   �               >       �       >                  <                     �                       4   =              4       �       4                  q                     �                       A   r              A       �       A                  �                     �                       C   �              C       �       C                  �                     �                       C   �              C       �       C                  ;                     �    	                      <                     �    
                      =                     �    
                     J                     �                       B   K              B       �       B                  �                     �                       C   �              C       �       C                  �                     �                       B   �              B       5�_�                      B    ����                                                                                                                                                                                                                                                                                                                                                             `���    �                 Bautocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)5��       B                                       �                                               5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             `���     �             :   -- Compe setup   require'compe'.setup {     enabled = true;     autocomplete = true;     debug = false;     min_length = 1;     preselect = 'enable';     throttle_time = 80;     source_timeout = 200;     incomplete_delay = 400;     max_abbr_width = 100;     max_kind_width = 100;     max_menu_width = 100;     documentation = true;         source = {       path = true;       nvim_lsp = true;     };   }       local t = function(str)   >  return vim.api.nvim_replace_termcodes(str, true, true, true)   end       #local check_back_space = function()   #    local col = vim.fn.col('.') - 1   E    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then           return true       else           return false       end   end       -- Use (s-)tab to:   0--- move to prev/next item in completion menuone   +--- jump to prev/next snippet's placeholder   _G.tab_complete = function()   "  if vim.fn.pumvisible() == 1 then       return t "<C-n>"      elseif check_back_space() then       return t "<Tab>"     else   %    return vim.fn['compe#complete']()     end   end   _G.s_tab_complete = function()   "  if vim.fn.pumvisible() == 1 then       return t "<C-p>"     else       return t "<S-Tab>"     end   end       Lvim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})   Lvim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})   Pvim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})   Pvim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})5��                                               �                         $                     �                          %                     �                         ;                     �                          <                     �                         M                     �                          N                     �                         d                     �                          e                     �                         u                     �                          v                     �                         �                     �                          �                     �                         �                     �                          �                     �                         �                     �                          �                     �                         �                     �                          �                     �                         �                     �                          �                     �                         �                     �                                                �                                              �                                               �                         /                     �                          0                     �                         G                     �                          H                     �                          I                     �                         U                     �                          V                     �                         f                     �                           g                     �                          {                     �    !                      |                     �    !                     �                     �    "                      �                     �    "                     �                     �    #                      �                     �    $                      �                     �    $                     �                     �    %                   >   �              >       �    %   >                  �                     �    &                      �                     �    &                     �                     �    '                      �                     �    (                   #   �              #       �    (   #                                       �    )                   #                 #       �    )   #                  '                     �    *                   E   (              E       �    *   E                  m                     �    +                      n                     �    +                     �                     �    ,                      �                     �    ,                     �                     �    -                      �                     �    -                     �                     �    .                      �                     �    .                     �                     �    /                      �                     �    /                     �                     �    0                      �                     �    1                      �                     �    1                     �                     �    2                   0   �              0       �    2   0                  �                     �    3                   +   �              +       �    3   +                                       �    4                                           �    4                     9                     �    5                   "   :              "       �    5   "                  \                     �    6                      ]                     �    6                     q                     �    7                       r                      �    7                      �                     �    8                      �                     �    8                     �                     �    9                      �                     �    9                     �                     �    :                   %   �              %       �    :   %                  �                     �    ;                      �                     �    ;                     �                     �    <                      �                     �    <                     �                     �    =                      �                     �    =                     �                     �    >                   "   �              "       �    >   "                                        �    ?                      !                     �    ?                     5                     �    @                      6                     �    @                     <                     �    A                      =                     �    A                     S                     �    B                      T                     �    B                     Y                     �    C                      Z                     �    C                     ]                     �    D                      ^                     �    E                   L   _              L       �    E   L                  �                     �    F                   L   �              L       �    F   L                  �                     �    G                   P   �              P       �    G   P                  I                     �    H                   P   J              P       5�_�                      B    ����                                                                                                                                                                                                                                                                                                                                                             `��     �                Bautocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)       -- Compe setup   require'compe'.setup {     }�                 �                   enabled = true;         autocomplete = true;           debug = false;             min_length = 1;   !            preselect = 'enable';   !              throttle_time = 80;   %                source_timeout = 200;   )                  incomplete_delay = 400;   )                    max_abbr_width = 100;   +                      max_kind_width = 100;   -                        max_menu_width = 100;   /                          documentation = true;       &                            source = {                                 }�                 $                          source = {�      !                                      }�          !                                  �      !   "      ,                                path = true;   4                                    nvim_lsp = true;   &                                      5��       B                                       �                                               �                                               �                         $                     �                          %                     �                         ;                     �                          <                     �                          <                     �                          <                     �                        O                     �                         T                     �                        j                     �                         q                     �                        �              	       �                         �                     �                     
   �                     �       
                  �                     �       !                 �                     �                         �                     �       !                 �                     �                         �                     �       %                                      �                                              �       )                 /                     �                         B                     �       )                 Y                     �                         n                     �       +                 �                     �                         �                     �       -                 �                     �                         �                     �       /                 �                     �                          �                     �                        �                     �                         �                     �       &                                      �                                             �                         �                    �                         
                    �                          
                     �                      ,   
             ,       �       ,                  6              !       �                           W                     �        4              $   k              %       �    !   $                  �                     5�_�                    #       ����                                                                                                                                                                                                                                                                                                                                                             `���     �   "   $   $                                  };                             5��    "                     �                     �    "                    �                     �    #                     �                    5�_�                     %       ����                                                                                                                                                                                                                                                                                                                                                             `���     �   $   &       '     }       local t = function(str)   >  return vim.api.nvim_replace_termcodes(str, true, true, true)   end       #local check_back_space = function()   #    local col = vim.fn.col('.') - 1   I        if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then                     return true                         else   ,                                return false   '                                    end   %                                  end       4                                  -- Use (s-)tab to:   R                                  --- move to prev/next item in completion menuone   M                                  --- jump to prev/next snippet's placeholder   >                                  _G.tab_complete = function()   D                                    if vim.fn.pumvisible() == 1 then   :                                          return t "<C-n>"   J                                            elseif check_back_space() then   B                                                  return t "<Tab>"   8                                                    else   [                                                          return vim.fn['compe#complete']()   ?                                                            end   =                                                          end   X                                                          _G.s_tab_complete = function()   \                                                            if vim.fn.pumvisible() == 1 then   R                                                                  return t "<C-p>"   H                                                                    else   \                                                                          return t "<S-Tab>"   O                                                                            end   M                                                                          end       �                                                                          vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})   �                                                                          vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})   �                                                                          vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})   �                                                                          vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})5��    $                    �                     �    %                      �                     �    %                      �                     �    &                      �                     �    &                     �                     �    '                   >   �              >       �    '   >                 (                     �    (                     )                    �    (                     ,                     �    )                      -                     �    *                   #   .              #       �    *   #                  Q                     �    +                   #   R              #       �    +   #                 u                     �    ,                  E   z              E       �    ,   I                 �              	       �    -                     �                    �    -                    �                     �    .                     �                     �    .                    �                     �    /                  ,   �             ,       �    /   ,                  %              !       �    0                      F                     �    0   '              $   M              %       �    1   $                  r                     �    1           $       "   N      $       "       �    1   %              "   s              #       �    3           "           u      "               �    2   "              "   �              #       �    3   "                  �                     �    3   4              "   �              #       �    4   "               0   �              0       �    4   R              "   �              #       �    5   "               +                 +       �    5   M              "   J              #       �    6   "                  m                     �    6   >              "   �              #       �    7   "               "   �              "       �    7   D              $   �              %       �    8           $       :   �      $       :       �    8   :              *   		              +       �    9   *                   4	                      �    9   J              ,   T	              -       �    :           ,       B   U	      ,       B       �    :   B              2   �	              3       �    ;   2                  �	                     �    ;   8              4   �	              5       �    <           4       [   �	      4       [       �    <   [              :   ,
              ;       �    =   :                  g
                     �    =   ?              <   l
              =       �    >   <                  �
                     �    >           <       :   m
      <       :       �    >   =              :   �
              ;       �    ?   :                  �
                     �    ?   X              :                 ;       �    @   :               "   >              "       �    @   \              <   `              =       �    A           <       R   a      <       R       �    A   R              B   �              C       �    B   B                  �                     �    B   H              D   �              E       �    C           D       \   �      D       \       �    C   \              J   Y              K       �    D   J                  �                     �    D   O              L   �              M       �    E   L                  �                     �    E           L       J   �      L       J       �    E   M              J   �              K       �    G           J           �      J               �    F   J              J   B              K       �    G   J               L   C              L       �    G   �              J   �              K       �    H   J               L   �              L       �    H   �              J   &              K       �    I   J               P   q              P       �    I   �              J   �              K       �    J   J               P                 P       5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             `�m     �              	   K" LSP config (the mappings used in the default file don't quite work right)   <" nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>   =" nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>   <" nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>   @" nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>   6" nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>   C" nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>   E" nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>   E" nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>5��                        K                   K       �        K                 K                      �                      :   N               :       �       <                 �                      �                      ;   �               ;       �       =                 �                      �                      :   �               :       �       <                                      �                      >                 >       �       @                 D                     �                      4   G              4       �       6                 {                     �                      A   ~              A       �       C                 �                     �                      C   �              C       �       E                                      �                      C                 C       5��