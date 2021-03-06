#! /bin/bash
#Desenvolvedor: João Alexandre Nossol Balbino
#github.com/joaonossolb
echo -e " \033[01;31m

 ____  _   _ ____    __  __    _    ____ _____ _____ ____  
|  _ \| \ | / ___|  |  \/  |  / \  / ___|_   _| ____|  _ \ 
| | | |  \| \___ \  | |\/| | / _ \ \___ \ | | |  _| | |_) |
| |_| | |\  |___) | | |  | |/ ___ \ ___) || | | |___|  _ < 
|____/|_| \_|____/  |_|  |_/_/   \_\____/ |_| |_____|_| \_\
                                                           

\033[00;37m"

if [ "$1" != "OPC" ] #INCIO COD_0
then
	echo ""
	echo -e "\033[01;32m DNS Master tem a funcionalidade de configurar servidor DNS no linux (/etc/resolv.conf), utilizando os melhores servidores DNS disponiveis gratuitamente.\033[01;37m"
	echo ""
	echo -e "\033[01;32m (A configuração para que o DNS seja o mesmo configurado pelo script ao reiniciar o linux, deverá ser feita manualmente em /etc/dhcp/dhclient.conf) \033[01;37m"
	echo ""
	echo -e "\033[01;31m Desenvolvedor: João Alexandre Nossol Balbino\033[01;37m"
	echo -e "\033[01;31m github.com/joaonossolb\033[01;37m"

	echo ""
	echo -e "$0 reiniciar  --> Reinicia o serviço networking \033[01;37m"
	echo ""
	echo -e "$0 OPC  --> Para ver os comandos de \033[01;31m DNS Master \033[01;37m"
	
fi #FIM DO COD_0


if [ "$1" == "OPC" ]
then
#COD_1
echo ""
	echo -e "\033[01;32m DNS Master tem a funcionalidade de configurar servidor DNS no linux (/etc/resolv.conf), utilizando os melhores servidores DNS disponiveis gratuitamente.\033[01;37m"
	echo ""
	echo -e "\033[01;32m (A configuração para que o DNS seja o mesmo configurado pelo script ao reiniciar o linux, deverá ser feita manualmente em /etc/dhcp/dhclient.conf) \033[01;37m"
	echo ""
	echo -e "\033[01;31m Desenvolvedor: João Alexandre Nossol Balbino\033[01;37m"
	echo -e "\033[01;31m github.com/joaonossolb\033[01;37m"
# FIM COD_1

echo "1 level3"
echo "2 verisign"
echo "3 google"
echo "4 quad9"
echo "5 dns-whatch"
echo "6 comodo-secure-dns"
echo "7 opendns-home"
echo "8 norton-connect-safe"
echo "9 green-team-dns"
echo "10 safe-dns"
echo "11 open-nic"
echo "12 smart-viper"
echo "13 dyn"
echo "14 free-dns"
echo "15 uncesored-DNS"
echo "16 hunrricane-electric"
echo "17 puntCat"
echo "18 alternate-dns"
echo "19 yandex-dns"
echo "20 neustar"

echo ""
echo "Deseja fazer backup do arquivo /etc/resolv.conf? [s][minusculo] --> sim [enter] para continuar"
read backup
		if [ "$backup" == "s" ]
		then
		echo -e "\033[01;32m REALIZANDO BACKUP DE resolv.conf \033[01;37m"
		echo ""
		echo -e "\033[01;32m Arquivo Gerado ---> resolv.conf.bkp \033[01;37m"
		echo ""
		cp /etc/resolv.conf resolv.conf.bkp
		fi
		
		
		if [ "$backup" != "s" ];then
		echo ""
		echo -e "\033[01;32m O backup  de resolv.conf \033[01;31m NÃO \033[01;37m será realizado \033[01;37m"
		fi

	echo "Digite o gateway do seu roteador"
	read gateway

	echo "Digite o numero do serviço DNS que você quer configurar"
	read opc


		if [ "$opc" == "1" ]
		then
		echo "# Generated by NetworkManager" > /etc/resolv.conf
		echo "nameserver 209.244.0.3" >> /etc/resolv.conf
		echo "nameserver 209.244.0.4" >> /etc/resolv.conf
		echo "nameserver $gateway" >> /etc/resolv.conf
		echo -e "\033[01;32m DNS level3 CONFIGURADO EM /etc/resolv.conf \033[01;37m"
		fi

		if [ "$opc" == "2" ]
		then
		echo "# Generated by NetworkManager" > /etc/resolv.conf
		echo "nameserver 64.6.64.6" >> /etc/resolv.conf
		echo "nameserver 64.6.65.6" >> /etc/resolv.conf
		echo "nameserver $gateway" >> /etc/resolv.conf
		echo -e "\033[01;32m DNS verisign CONFIGURADO EM /etc/resolv.conf \033[01;37m"
		fi

		if [ "$opc" == "3" ]
		then
		echo "# Generated by NetworkManager" > /etc/resolv.conf
		echo "nameserver 8.8.8.8" >> /etc/resolv.conf
		echo "nameserver 8.8.4.4" >> /etc/resolv.conf
		echo "nameserver $gateway" >> /etc/resolv.conf
		echo -e "\033[01;32m DNS google CONFIGURADO EM /etc/resolv.conf \033[01;37m"
		fi

		if [ "$opc" == "4" ]
		then
		echo "# Generated by NetworkManager" > /etc/resolv.conf
		echo "nameserver 9.9.9.9" >> /etc/resolv.conf
		echo "nameserver 149.112.112.112" >> /etc/resolv.conf
		echo "nameserver $gateway" >> /etc/resolv.conf
		echo -e "\033[01;32m DNS quad9 CONFIGURADO EM /etc/resolv.conf \033[01;37m"
		fi

		if [ "$opc" == "5" ]
		then
		echo "# Generated by NetworkManager" > /etc/resolv.conf
		echo "nameserver 84.200.69.80" >> /etc/resolv.conf
		echo "nameserver 84.200.70.40" >> /etc/resolv.conf
		echo "nameserver $gateway" >> /etc/resolv.conf
		echo -e "\033[01;32m DNS dns-whatch CONFIGURADO EM /etc/resolv.conf \033[01;37m"
		fi

		if [ "$opc" == "6" ]
		then
		echo "# Generated by NetworkManager" > /etc/resolv.conf
		echo "nameserver 8.26.56.26" >> /etc/resolv.conf
		echo "nameserver 8.20.247.20" >> /etc/resolv.conf
		echo "nameserver $gateway" >> /etc/resolv.conf
		echo -e "\033[01;32m DNS comodo-secure-dns CONFIGURADO EM /etc/resolv.conf \033[01;37m"
		fi

		if [ "$opc" == "7" ]
		then
		echo "# Generated by NetworkManager" > /etc/resolv.conf
		echo "nameserver 208.67.222.222" >> /etc/resolv.conf
		echo "nameserver 208.67.220.220" >> /etc/resolv.conf
		echo "nameserver $gateway" >> /etc/resolv.conf
		echo -e "\033[01;32m DNS opendns-home CONFIGURADO EM /etc/resolv.conf \033[01;37m"
		fi

		if [ "$opc" == "8" ]
		then
		echo "# Generated by NetworkManager" > /etc/resolv.conf
		echo "nameserver 199.85.126.10" >> /etc/resolv.conf
		echo "nameserver 199.85.127.10" >> /etc/resolv.conf
		echo "nameserver $gateway" >> /etc/resolv.conf
		echo -e "\033[01;32m DNS norton-connect-safe CONFIGURADO EM /etc/resolv.conf \033[01;37m"
		fi

		if [ "$opc" == "9" ]
		then
		echo "# Generated by NetworkManager" > /etc/resolv.conf
		echo "nameserver 81.218.119.11" >> /etc/resolv.conf
		echo "nameserver 209.88.198.133" >> /etc/resolv.conf
		echo "nameserver $gateway" >> /etc/resolv.conf
		echo -e "\033[01;32m DNS green-team-dns CONFIGURADO EM /etc/resolv.conf \033[01;37m"
		fi

		if [ "$opc" == "10" ]
		then
		echo "# Generated by NetworkManager" > /etc/resolv.conf
		echo "nameserver 195.46.39.39" >> /etc/resolv.conf
		echo "nameserver 195.46.39.40" >> /etc/resolv.conf
		echo "nameserver $gateway" >> /etc/resolv.conf
		echo -e "\033[01;32m DNS safe-dns CONFIGURADO EM /etc/resolv.conf \033[01;37m"
		fi

		if [ "$opc" == "11" ]
		then
		echo "# Generated by NetworkManager" > /etc/resolv.conf
		echo "nameserver 69.195.152.204" >> /etc/resolv.conf
		echo "nameserver 23.94.60.240" >> /etc/resolv.conf
		echo "nameserver $gateway" >> /etc/resolv.conf
		echo -e "\033[01;32m DNS open-nic CONFIGURADO EM /etc/resolv.conf \033[01;37m"
		fi

		if [ "$opc" == "12" ]
		then
		echo "# Generated by NetworkManager" > /etc/resolv.conf
		echo "nameserver 208.76.50.50" >> /etc/resolv.conf
		echo "nameserver 208.76.51.51" >> /etc/resolv.conf
		echo "nameserver $gateway" >> /etc/resolv.conf
		echo -e "\033[01;32m DNS smart-viper CONFIGURADO EM /etc/resolv.conf \033[01;37m"
		fi

		if [ "$opc" == "13" ]
		then
		echo "# Generated by NetworkManager" > /etc/resolv.conf
		echo "nameserver 216.146.35.35" >> /etc/resolv.conf
		echo "nameserver 216.146.36.36" >> /etc/resolv.conf
		echo "nameserver $gateway" >> /etc/resolv.conf
		echo -e "\033[01;32m DNS dyn CONFIGURADO EM /etc/resolv.conf \033[01;37m"
		fi

		if [ "$opc" == "14" ]
		then
		echo "# Generated by NetworkManager" > /etc/resolv.conf
		echo "nameserver 37.235.1.174" >> /etc/resolv.conf
		echo "nameserver 37.235.1.177" >> /etc/resolv.conf
		echo "nameserver $gateway" >> /etc/resolv.conf
		echo -e "\033[01;32m DNS free-dns CONFIGURADO EM /etc/resolv.conf \033[01;37m"
		fi

		if [ "$opc" == "15" ]
		then
		echo "# Generated by NetworkManager" > /etc/resolv.conf
		echo "nameserver 91.239.100.100" >> /etc/resolv.conf
		echo "nameserver 89.233.43.71" >> /etc/resolv.conf
		echo "nameserver $gateway" >> /etc/resolv.conf
		echo -e "\033[01;32m DNS uncesored-DNS CONFIGURADO EM /etc/resolv.conf \033[01;37m"
		fi

		if [ "$opc" == "16" ]
		then
		echo "# Generated by NetworkManager" > /etc/resolv.conf
		echo "nameserver 74.82.42.42" >> /etc/resolv.conf
		echo "nameserver $gateway" >> /etc/resolv.conf
		echo -e "\033[01;32m DNS hunrricane-electric CONFIGURADO EM /etc/resolv.conf \033[01;37m"
		fi

		if [ "$opc" == "17" ]
		then
		echo "# Generated by NetworkManager" > /etc/resolv.conf
		echo "nameserver 109.69.8.51" >> /etc/resolv.conf
		echo "nameserver $gateway" >> /etc/resolv.conf
		echo -e "\033[01;32m DNS puntCat CONFIGURADO EM /etc/resolv.conf \033[01;37m"
		fi

		if [ "$opc" == "18" ]
		then
		echo "# Generated by NetworkManager" > /etc/resolv.conf
		echo "nameserver 198.101.242.72" >> /etc/resolv.conf
		echo "nameserver 23.253.163.53" >> /etc/resolv.conf
		echo "nameserver $gateway" >> /etc/resolv.conf
		echo -e "\033[01;32m DNS alternate-dns CONFIGURADO EM /etc/resolv.conf \033[01;37m"
		fi

		if [ "$opc" == "19" ]
		then
		echo "# Generated by NetworkManager" > /etc/resolv.conf
		echo "nameserver 77.88.8.8" >> /etc/resolv.conf
		echo "nameserver 77.88.8.1" >> /etc/resolv.conf
		echo "nameserver $gateway" >> /etc/resolv.conf
		echo -e "\033[01;32m DNS yandex-dns CONFIGURADO EM /etc/resolv.conf \033[01;37m"
		fi

		if [ "$opc" == "20" ]
		then
		echo "# Generated by NetworkManager" > /etc/resolv.conf
		echo "nameserver 156.154.70.1" >> /etc/resolv.conf
		echo "nameserver 156.154.71.1" >> /etc/resolv.conf
		echo "nameserver $gateway" >> /etc/resolv.conf
		echo -e "\033[01;32m DNS neustar CONFIGURADO EM /etc/resolv.conf \033[01;37m"
		fi
		fi #FIM if OPC




		if [ "$1" == "reiniciar" ]
		then
		echo -e "\033[01;32m REINICIANDO NETWORK \033[01;37m"
		/etc/init.d/networking restart
		fi







