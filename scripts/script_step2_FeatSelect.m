%-----------------------------------------------------------------------
% Job saved on 04-Nov-2019 16:27:02 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7487)
% cfg_basicio BasicIO - v2.1
% prt PRoNTo - Unknown
%-----------------------------------------------------------------------

job_path='D:/mvpa_trial/smoothing0/tva17a/tva_multigps_aal_cereb/3fwhsmooth';

%%STEP 2: Feature Selection
matlabbatch{1}.prt.fs.infile = {sprintf('%s/PRT.mat',job_path)};

%the following line is just for giving a name to this feature set derived
matlabbatch{1}.prt.fs.k_file = 'fs_betaimg__kernPerAAL';

%the following name must be the same as the modality name you specify in step 1 (Data & Design)
matlabbatch{1}.prt.fs.modality.mod_name = 'condbetaimg';
matlabbatch{1}.prt.fs.modality.conditions.all_scans = 1;
matlabbatch{1}.prt.fs.modality.voxels.all_voxels = 1;
matlabbatch{1}.prt.fs.modality.detrend.no_dt = 1;
matlabbatch{1}.prt.fs.modality.normalise.no_gms = 1;

%you can include a brain atlas here (for multiple-kernel learning)
matlabbatch{1}.prt.fs.modality.atlasroi = {sprintf('%s/aal_cerebrumatlas.nii,1', job_path)};
matlabbatch{1}.prt.fs.flag_mm = 0;


%%again, to save the script as a batch-file or perform the functions (this step 'Feature Selection') directly
save('batch_step2_FeatSel_expt2_opmask.mat','matlabbatch')
spm_jobman('run',matlabbatch);


