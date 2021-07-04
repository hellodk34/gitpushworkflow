# gitpushworkflow

feature description: `git add .` and `git commit -m` and `git push` workflow

一个不是那么复杂的 `git add .`、`git commit -m 'xxx'`、`git push` 的工作流脚本工具。

# Usage

## 1. in macOS or any Linux systems

cp `linux-gitpush.sh` to any folder you like, such as `/path/of/linux-gitpush.sh`

at current git repo's work dir, just run

```
bash /path/of/linux-gitpush.sh
```

## 2. in Windows

cp `windows-gitpush.bat` to any folder you like, such as `D:\`, after copying, this file's absolute path is should be `D:\windows-gitpush.bat`

at current git repo's work dir, and just run

```
d:\windows-gitpush.bat
```

----

## example

### in macOS or Linux

this output is like this

```
huadekaideMBP:notes-2021 huadekai$ bash linux-gitpush.sh 

this a git push workflow in macOS or Linux, using a shell file

current time is: 2021-07-04 15:22:30

current work dir is: /Users/huadekai/Downloads/personal-projects/github/notes-2021

first step: git add .

second step: git commit -m 'xxxx'
[master b15a526] 2021-07-04 15:22:30 update
 1 file changed, 1 insertion(+), 16 deletions(-)
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 12 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 293 bytes | 293.00 KiB/s, done.
Total 3 (delta 2), reused 0 (delta 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To github.com:hellodk34/notes-2021.git
   3c5905e..b15a526  master -> master

third step: git push. ending.

the end of the workflow.
```

---

### in Windows

the output is like this

```
D:\repo\github\notes-2021>windows-gitpush.bat

this a git push workflow in Windows, using a bat file

current time is: 07/04/2021 Sun 15:19:31.45

current work dir is: D:\repo\github\notes-2021       

first step: git add .

Waiting for 0 seconds, press CTRL+C to quit ...

second step: git commit -m 'xxx'
[master 9e9da30] 07/04/2021 Sun 15:19:33.16 update
 3 files changed, 42 insertions(+), 13 deletions(-)

Waiting for 0 seconds, press CTRL+C to quit ...

third step: git push
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 16 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 918 bytes | 918.00 KiB/s, done.
Total 5 (delta 4), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To github.com:hellodk34/notes-2021.git
   eddc27a..9e9da30  master -> master

the end of the workflow.
```

## 注意事项

1. 默认 git add 的是当前本地工作区的所有已改动文件
2. git commit -m，提交的 message 信息，默认是时间+update 字符串拼接出来的
3. 使用 vscode 时，快捷键 control + shift + \` 默认新建一个终端，此时所在工作目录就是 git 项目的根目录，直接执行 `bash /path/of/linux-gitpush.sh` 或 `d:\windows-gitpush.bat` 即可
4. Windows 下 `git.exe` 建议安装 `Git Bash`

end.
