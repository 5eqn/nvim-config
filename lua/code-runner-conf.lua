require('code_runner').setup({
  -- put here the commands by filetype
  filetype = {
    haskell = "ghc -dynamic $fileName && $dir/$fileNameWithoutExt",
    java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
    kotlin =
    "cd $dir && kotlinc $fileName -include-runtime -d $fileNameWithoutExt.jar && java -jar $fileNameWithoutExt.jar",
    python = "python3 -u",
    typescript = "deno run",
    rust = "cargo run",
    cpp = "cd $dir && g++ $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
    go = "cd $dir && go run $fileName",
    typst = "typst compile $fileName && zathura $fileNameWithoutExt.pdf & typst watch $fileName",
  },
})
