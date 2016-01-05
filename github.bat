@echo off
setlocal enabledelayedexpansion
for /l %%i in (1,1,10) do (
    for /l %%j in (1,1,26) do (
        set s=!random!
        set /a  s=s%%24
        set m=!random!
        set /a  m=m%%60
        @date 2016-%%i-%%j
        @time !s!:!m!
        set num=!random!
        set /a  num=num%%7-1
        for /l %%c in (1,1,!num!) do (
            echo tccpc>>update
            git add -A
            git commit -m "update"
        )
    )
)
pause
