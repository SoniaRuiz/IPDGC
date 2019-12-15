FROM soniaruiz/coexp:r-lite
WORKDIR /app

COPY AdiposeSub.resids.rds /app
COPY netAdiposeSub.17.it.50.rds /app
COPY netAdiposeSub.17.it.50.rds.celltype.csv /app
COPY netAdiposeVisceral.13.it.50.rds_gprof.csv /app

RUN R -e "library(CoExpNets); \
library(CoExpROSMAP); \
library(WGCNA); \
CoExpROSMAP::initDb(mandatory=T); \
CoExpNets::addNet(which.one='earlygtex',tissue='adipose',netfile='/app/netAdiposeSub.17.it.50.rds',ctfile='/app/netAdiposeSub.17.it.50.rds.celltype.csv',$

EXPOSE 8800
ENTRYPOINT ["R", "-e", "r <- plumber::plumb('/app/coexp_api.R'); r$run(host='0.0.0.0',port=8800)"]
