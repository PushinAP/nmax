[![Build Status](https://travis-ci.org/PushinAP/nmax.svg?branch=master)](https://travis-ci.org/PushinAP/nmax)

# Nmax
Взято из тестового задания компании Funbox на позицию Ruby разработчика.<br>
### Cкрипт nmax, делает следующее:<br> 

читает из входящего потока текстовые данные<br>

по завершении ввода выводит n самых больших целых ч
исел, встретившихся в 
полученных текстовых данных.<br>

Пример : 
cat sample_data_40GB.txt | nmax 10000

## Usage

git clone <br>
bundle install <br>
cat sample_data_40GB.txt | nmax 10000

## Test 
bundle exec rake <br>
rake

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

