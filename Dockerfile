FROM ellismg/coreclr-demo:runtime-only

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
RUN apt-get -y update
RUN apt-get -y install mono-devel
RUN apt-get -y install curl

WORKDIR /root/coreclr-demo

RUN curl -L -O https://nuget.org/nuget.exe

RUN mono nuget.exe install Clojure -Version 1.6.0.1
RUN cp Clojure.1.6.0.1/lib/net40/* .
RUN cp Clojure.1.6.0.1/tools/net40/* .
# https://groups.google.com/forum/#!msg/clojure-clr/HroMZmqJ-gM/vGu5sY9B0Z0J
RUN ln -s Clojure.dll clojure.clr.io.clj.dll
RUN ln -s Clojure.dll clojure.core.clj.dll
RUN ln -s Clojure.dll clojure.core_clr.clj.dll
RUN ln -s Clojure.dll clojure.core_deftype.clj.dll
RUN ln -s Clojure.dll clojure.core_print.clj.dll
RUN ln -s Clojure.dll clojure.core.protocols.clj.dll
RUN ln -s Clojure.dll clojure.core_proxy.clj.dll
RUN ln -s Clojure.dll clojure.genclass.clj.dll
RUN ln -s Clojure.dll clojure.gvec.clj.dll
RUN ln -s Clojure.dll clojure.instant.clj.dll
RUN ln -s Clojure.dll clojure.main.clj.dll
RUN ln -s Clojure.dll clojure.pprint.cl_format.clj.dll
RUN ln -s Clojure.dll clojure.pprint.clj.dll
RUN ln -s Clojure.dll clojure.pprint.column_writer.clj.dll
RUN ln -s Clojure.dll clojure.pprint.dispatch.clj.dll
RUN ln -s Clojure.dll clojure.pprint.pprint_base.clj.dll
RUN ln -s Clojure.dll clojure.pprint.pretty_writer.clj.dll
RUN ln -s Clojure.dll clojure.pprint.print_table.clj.dll
RUN ln -s Clojure.dll clojure.pprint.utilities.clj.dll
RUN ln -s Clojure.dll clojure.repl.clj.dll
RUN ln -s Clojure.dll clojure.uuid.clj.dll
RUN ln -s Clojure.dll clojure.walk.clj.dll
RUN ln -s Clojure.dll clojure.test.clj.dll
RUN ln -s Clojure.dll clojure.template.clj.dll
RUN ln -s Clojure.dll clojure.stacktrace.clj.dll
