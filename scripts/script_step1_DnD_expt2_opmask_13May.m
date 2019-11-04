%-----------------------------------------------------------------------
% Job saved on 31-Mar-2019 22:18:07 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7487)
% cfg_basicio BasicIO - v2.1
% prt PRoNTo - Unknown
%-----------------------------------------------------------------------

clear all;

%specify a job path (where the analysis and outcome files are created and
%safed)
job_path='D:/mvpa_trial/smoothing0/tva17a/tva_multigps_aal_cereb/3fwhsmooth';

%there are 4 conditions in the experiment (Food trials with accepted
%gamble; Food trials with rejected gamble; Trivia trials with accepted
%gamble; Trivia trials with rejected gamble)
conds = {'dFoodAcc','dFoodRej', 'dTrivAcc', 'dTrivRej'};

%these are the numbers of the corersponding beta images in my data folder for the 4
%experimental conditions
imgno=[07,13,25,31];
rt_vec = ones(1,30);

%setting up the batch-file structure using 'matlabbatch' function to
%prepare for analysis in pronto

for I= 1:length(conds)
    matlabbatch{1}.prt.data.dir_name = {job_path};
    matlabbatch{1}.prt.data.group(I).gr_name = char(conds(I));
    matlabbatch{1}.prt.data.group(I).select.modality.mod_name = 'condbetaimg';
    matlabbatch{1}.prt.data.group(I).select.modality.subjects = {
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f001/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f002/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f003/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f004/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f005/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f006/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f007/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f008/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f010/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f011/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f012/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f013/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f014/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f015/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f016/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f017/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f018/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f019/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f020/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f021/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f022/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f023/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f024/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f025/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f026/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f027/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f028/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f031/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f032/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        sprintf('D:/mvpa_trial/smoothing0/tva17a/inputs/f033/FirstLev_2by2_noDur_3fwhsmooth_06thresh/beta_0%03d.nii,1',imgno(I))
        };
    matlabbatch{1}.prt.data.group(I).select.modality.rt_subj = rt_vec;
    matlabbatch{1}.prt.data.group(I).select.modality.covar = {''};

end

matlabbatch{1}.prt.data.mask.mod_name = 'condbetaimg';

%this brain mask has been updated with the group mask of my dataset
matlabbatch{1}.prt.data.mask.fmask = {'D:\mvpa_trial\smoothing0\tva17a\inputs\mask\opmask_aal_cereb.nii,1'};
matlabbatch{1}.prt.data.mask.hrfover = 0;
matlabbatch{1}.prt.data.mask.hrfdel = 0;
matlabbatch{1}.prt.data.review = 0;


%%to save the script as a batch-file or perform the functions (the step 'Data & Design') directly
save('batch_step1_DnD_expt2_opmask.mat','matlabbatch')
spm_jobman('run',matlabbatch);

