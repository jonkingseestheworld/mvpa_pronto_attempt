%-----------------------------------------------------------------------
% Job saved on 04-Nov-2019 16:24:39 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7487)
% cfg_basicio BasicIO - v2.1
% prt PRoNTo - Unknown
%-----------------------------------------------------------------------


job_path='D:/mvpa_trial/smoothing0/tva17a/tva_multigps_aal_cereb/3fwhsmooth';

%%STEPS 3 & 4: Specify Model & Run Model
matlabbatch{1}.prt.model.infile = {sprintf('%s/PRT.mat', job_path)};

%the following line is just for giving a name to this model specified
matlabbatch{1}.prt.model.model_name = 'DBothCategDecode_expt2_mkl_aal2_KernPerReg_10k';
matlabbatch{1}.prt.model.use_kernel = 1;

%the following name must be the same as the feature set name you specified in step 2 (Feature Selection)
matlabbatch{1}.prt.model.fsets = 'fs_betaimg__kernPerAAL';

%%
matlabbatch{1}.prt.model.model_type.classification.class(1).class_name = 'DBothFood';
%these condition names must be the same as those you specified in step 1 (Data & Design)
matlabbatch{1}.prt.model.model_type.classification.class(1).group(1).gr_name = 'dFoodAcc';
%%here, I choose data from all 30 subjects I have in my dataset
matlabbatch{1}.prt.model.model_type.classification.class(1).group(1).subj_nums = [1:30];
matlabbatch{1}.prt.model.model_type.classification.class(1).group(1).conditions.all_scans = 1;
%%
matlabbatch{1}.prt.model.model_type.classification.class(1).group(2).gr_name = 'dFoodRej';
matlabbatch{1}.prt.model.model_type.classification.class(1).group(2).subj_nums = [1:30];
matlabbatch{1}.prt.model.model_type.classification.class(1).group(2).conditions.all_scans = 1;
%%
matlabbatch{1}.prt.model.model_type.classification.class(2).class_name = 'dBothTriv';
matlabbatch{1}.prt.model.model_type.classification.class(2).group(1).gr_name = 'dTrivAcc';
matlabbatch{1}.prt.model.model_type.classification.class(2).group(1).subj_nums = [1:30];
matlabbatch{1}.prt.model.model_type.classification.class(2).group(1).conditions.all_scans = 1;
%%
matlabbatch{1}.prt.model.model_type.classification.class(2).group(2).gr_name = 'dTrivRej';
matlabbatch{1}.prt.model.model_type.classification.class(2).group(2).subj_nums = [1:30];
matlabbatch{1}.prt.model.model_type.classification.class(2).group(2).conditions.all_scans = 1;
%%
matlabbatch{1}.prt.model.model_type.classification.machine_cl.sMKL_cla.sMKL_cla_opt = 0;
matlabbatch{1}.prt.model.model_type.classification.machine_cl.sMKL_cla.sMKL_cla_args = 1;
matlabbatch{1}.prt.model.model_type.classification.machine_cl.sMKL_cla.cv_type_nested.cv_loso = 1;

%Here, I include a customised Cross-Validation model (CV) file (10 folds) that is most
%suitable for my analysis. Or, you can use the options available in GUI
%(or modified from those options)...
matlabbatch{1}.prt.model.cv_type.cv_custom = {'%s\CV_DBothCategDecodeChoices_expt2_mkl_10k_4condout.mat'};
matlabbatch{1}.prt.model.include_allscans = 0;
matlabbatch{1}.prt.model.sel_ops.data_op_mc = 1;
matlabbatch{1}.prt.model.sel_ops.use_other_ops.no_op = 1;
matlabbatch{2}.prt.cv_model.infile(1) = cfg_dep('Specify model: PRT.mat file', substruct('.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{2}.prt.cv_model.model_name(1) = cfg_dep('Specify model: Model name', substruct('.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','mname'));
matlabbatch{2}.prt.cv_model.perm_test.no_perm = 1;


%%again, to save the script as a batch-file or perform the functions (this step 'Specify & Run Model') directly
save('batch_step3_4_SpecifyRunModel_expt2_opmask.mat','matlabbatch')
spm_jobman('run',matlabbatch);

