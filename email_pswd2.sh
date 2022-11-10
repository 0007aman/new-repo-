echo "PLEASE ENTER YOUR DETAILS CORRECTLY TO GET YOUR USER ID AND PASSWORD"
while test $ans=='y'
do
	echo " "
	echo "Enter your full name (Surname Name Middle name : "
	read nm
	echo "Enter your Roll no : "
	read rn
	echo "Enter your Phone no : "
	read num
	p_nm=`echo $nm | cut -d " " -f2 | tr "[a-z]" "[A-Z]"`
	s_nm=`echo $nm | cut -d " " -f1 | tr "[a-z]" "[A-Z]" `
	p_num=`echo $num | cut -c1,2,3,4,5 `
	usrnm=$p_nm"."$s_nm"."$p_num"@VES.AC.IN"
	pswd=$p_nm"."$rn"@"$p_num
	echo " "
	echo "Your userid is : "$usrnm
	echo "Your password is : "$pswd
	echo " "
	echo "Do you want to create more user id and passwors ?(y/n) "
	read ans
done

