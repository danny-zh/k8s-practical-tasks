.PHONY: check-pods check-deploy check-state check-daemon check-svc check-ing delete-all

# Command to run tests
check-pods:
	./checker -course 'kubernetes' -course-version 'pods' -test-suite 'pod'

check-deploy:
	./checker -course 'kubernetes' -course-version 'deployments' -test-suite 'deployment'

check-state:
	./checker -course 'kubernetes' -course-version 'statefulsets' -test-suite 'statefulset'

check-daemon:
	./checker -course 'kubernetes' -course-version 'daemonsets' -test-suite 'daemonset'

check-svc:
	./checker -course 'kubernetes' -course-version 'services' -test-suite 'service'

check-ing:
	./checker -course 'kubernetes' -course-version 'ingresses' -test-suite 'ingress'

delete-all:
	for item in $(shell ls delete); \
	do \
		delete/$${item} || echo "Error deleting ${item}";\
	done 
	
