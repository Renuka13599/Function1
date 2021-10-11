
#!/bin/bash -x


echo -n "Enter the input Freezing Point is (0C / 32F) "
echo -n "Enter the Boiling Point of Water is (100C / 212F)"

function degreeCelsius()
        {
                if (( $degF >= 32 & $degF <= 212 ))
                then
                      degC= `awk "BEGIN { print( $degF - 32 )*(5/9)}"`
                        echo $degC
                else
                echo "Farehenheit Range should be 32F to 212F"
                fi
                return
        }

function degreeFarenheit()
        {
                if (( $degC >= 1 & $degC <= 100 ))
                then
                degF=`awk "BEGIN {print ($degC*(9/5) +32)}"`
                echo $degF
                else
                echo "Temperature range must be 0C to 100C"
                fi
return
        }

                read -p "Choose of anyone Options for conversion /n 1.Conversion of Farenheit to Celsius /n 2. Conversion of celsius to Farenheit " n
case $n in
                1)      echo "Conversion of Farenheit to Celsius"
                        read -p "Enter the Farenheit input" degF
                                degreeCelsius  ;;

                2)      echo "Conversion of Celsius to Farenheit"
                        read -p  "Enter the Celsius value" degC
                                degreeFarenheit ;;

                *)   echo "Default OPtion" ;;
        esac




