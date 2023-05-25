include(InstallRequiredSystemLibraries)
set(CPACK_PACKAGE_CONTACT ${GITHUB_EMAIL})

set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Printing library")

set(CPACK_PACKAGE_NAME "libprint")

option(GENERATOR "")

if(${GENERATOR} MATCHES BIN)
        set(CPACK_DEBIAN_PACKAGE_MAINTAINER "George")
        install(TARGETS libprint DESTINATION bin)
endif()

if(${GENERATOR} MATCHES ARC)
	install(FILES print.cpp
		DESTINATION code)
endif()


install(TARGETS libprint DESTINATION bin)

include(CPack)
