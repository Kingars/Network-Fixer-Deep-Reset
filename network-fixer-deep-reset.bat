@echo off
title Network Fixer & Deep Reset
:: Verifica privilegios de Administrador
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo [ERRO] Este script precisa ser executado como Administrador.
    echo Clique com o botao direito e selecione "Executar como administrador".
    pause
    exit
)

echo ======================================================
echo           REDEFINICAO PROFUNDA DE REDE
echo ======================================================
echo Iniciando limpeza de caches e protocolos...

:: Limpeza de Cache e DNS 
arp -d * 
nbtstat -R 
nbtstat -RR 
ipconfig /flushdns 
ipconfig /registerdns 
ipconfig /release 
ipconfig /renew 

:: Redefinição de Sockets e Proxy 
netsh winsock reset 
netsh winhttp reset proxy 
netsh winsock reset catalog 
netsh winsock reset all 
netsh interface ip delete arpcache 

:: Redefinição de Firewall e Protocolos IP 
netsh advfirewall reset 
netsh branchcache reset 
netsh int ip reset all 
netsh int ip reset c:\Temp\resetlog.txt 
netsh int ipv4 reset all 
netsh int ipv6 reset all 

:: Redefinição de Túneis e Interfaces 
netsh int httpstunnel reset all 
netsh int isatap reset all 
netsh int portproxy reset all 
netsh int tcp reset all 
netsh int teredo reset all 

:: Reinicialização de Serviços Críticos
echo Reiniciando servicos de rede...
net stop dhcp /y && net start dhcp
net stop dnscache /y && net start dnscache
net stop wlansvc /y && net start wlansvc
net stop dot3svc /y && net start dot3svc

:: Ajustes de Registro e Permissões 
net localgroup administradores localservice /add 
fsutil resource setautoreset true C:\ 
netsh winhttp import proxy source=ie 
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0 /f 

echo ======================================================
echo    PROCEDIMENTO CONCLUIDO COM SUCESSO!
echo ======================================================
echo E altamente recomendado reiniciar o computador agora.
pause