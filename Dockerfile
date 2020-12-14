FROM dknoern/opticstudio:ZOS21.1_2020-12-04_HPC_alpha

SHELL ["powershell"]

RUN mkdir HPC
RUN mkdir HPC/Programs

COPY ZOSHPCApp ./HPC/Programs
COPY Inputs ./HPC/Inputs

WORKDIR /HPC/Programs

ENTRYPOINT ".\ZOSHPCApp.exe f0a6ae1d-875f-48be-b34a-a623224b580d g0d5p234.y1c out.out"
