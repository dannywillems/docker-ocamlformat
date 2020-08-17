FROM ocaml/opam2:4.09

ARG OCAMLFORMAT_VERSION

RUN echo "Building and publishing docker image for ocamlformat ${OCAMLFORMAT_VERSION}"
RUN sudo apt-get install m4 -y
RUN eval $(opam env)
RUN opam repository set-url default https://opam.ocaml.org
RUN opam update
RUN opam install ocamlformat.${OCAMLFORMAT_VERSION} -y
