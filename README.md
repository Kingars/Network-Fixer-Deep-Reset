🌐 Network Fixer & Deep Reset

Este é um script de automação (`.bat`) para Windows projetado para diagnosticar e resolver problemas críticos de conectividade. Ele realiza uma restauração completa das pilhas de protocolos TCP/IP, limpa caches de resolução de nomes e redefine configurações de proxy e firewall para o padrão de fábrica.

👨‍💻 Desenvolvedor:

Este script foi desenvolvido por Alex Rodrigues, profissional da área técnica e criador de conteúdo focado em tecnologia.

🛠️ O que este script faz?

O script executa uma sequência de comandos avançados divididos em cinco categorias principais:

1.  Limpeza de Cache (L2/L3): Remove entradas obsoletas da tabela ARP e limpa o cache NetBIOS e DNS para eliminar endereços corrompidos.
2.  Redefinição de Winsock & IP: Restaura o catálogo do Windows Sockets e reinstala os protocolos IPv4 e IPv6, corrigindo falhas de comunicação de software.
3.  Reset de Túneis e Interfaces: Redefine interfaces específicas como Teredo, ISATAP e Portproxy, essenciais para conectividade moderna e jogos online.
4.  Segurança e Proxy: Restaura o Windows Firewall para as regras originais e desativa configurações de proxy que podem ter sido alteradas por malwares.
5.  Manutenção de Serviços: Reinicia os serviços de DHCP e Wi-Fi para garantir que as novas configurações sejam aplicadas imediatamente.

🚀 Como usar

1.  Faça o download do arquivo `NetworkFixer.bat`.
2.  Clique com o botão direito sobre o arquivo e selecione "Executar como Administrador".
3.  Aguarde a conclusão do processo.
4.  **Reinicie o seu computador** para que as alterações tenham efeito total.

⚠️ Importante
* IP Estático: Se você utiliza um IP fixo configurado manualmente, este script irá resetá-lo para o modo automático (DHCP).
* VPNs: Algumas configurações de adaptadores virtuais de VPN podem precisar ser reinstaladas após o reset.

---

🔗 Conecte-se comigo

* Website: [alexrodrigues.tec.br](https://alexrodrigues.tec.br/)
* LinkedIn: [in/kingars](https://www.linkedin.com/in/kingars/)
* YouTube: [@alexrodriguestecbr](https://www.youtube.com/@alexrodriguestecbr)
* Instagram: [@alexkingars](https://www.instagram.com/alexkingars)
* X (Twitter): [@kingars](https://www.twitter.com/kingars)

---
*Este projeto é distribuído gratuitamente para ajudar a comunidade técnica e usuários de Windows.*
