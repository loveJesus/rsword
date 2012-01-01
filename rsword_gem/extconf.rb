require('mkmf')

dir_config('sword');

['clucene','curl','z','sword'].each do |lb|
  a=[];
  ['/usr/','/opt/','/usr/local/','/opt/local/'].each do |d|
    a<< d+'lib';
    a<< d+lb+'/lib';
  end
  find_library(lb,nil,*a);
end

a=[];
['/usr/','/opt','/usr/local/','/opt/local/'].each do |d|
  a<< d+'include';
  a<< d+'sword/include';
  a<< d+'include/sword';
  a<< d+'sword/include/sword';
end
find_header('treekey.h',*a);
 
create_makefile('rsword')
