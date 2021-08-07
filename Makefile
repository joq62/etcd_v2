all:
#	service
	rm -rf ebin/*;
#	interfaces
	erlc -I ../../interfaces -o ebin ../../interfaces/*.erl;
#	etcd
	erlc -I ../../interfaces -o ebin ../../etcd/src/*.erl;
#	application
	cp src/*.app ebin;
	erlc -o ebin src/*.erl;
	rm -rf src/*.beam *.beam  test_src/*.beam test_ebin;
	rm -rf  *~ */*~  erl_cra*;
	echo Done
