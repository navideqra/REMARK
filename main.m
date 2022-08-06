clc, clear
rng('shuffle')
format long
options.nDim = 2;
options.nDemander = 50;
options.nSupplier = ceil(options.nDemander/4);
options.maxFrnd = ceil(options.nDemander/5);
options.constrPer = 10;
options.KsigmaD = 0.5;
options.KsigmaS = 0.5;
options.KnumS = 0.4;
options.domain = [zeros(options.nDim, 1)-65.536, zeros(options.nDim, 1)+65.536];
options.nFeval = 50000;
options.objFun = 'Foxholes';
[sol, val, m] = remark(options);
sol
val
