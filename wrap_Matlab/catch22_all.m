function [featureValues, featureNames] = catch22_all(data, catch24)

	if nargin < 2
		catch24 = false;
	end

	featureNames = ...
	{ ...
	'DN_HistogramMode_5', ... 
	'DN_HistogramMode_10', ...
	'CO_f1ecac', ... 
	'CO_FirstMin_ac', ... 
	'CO_HistogramAMI_even_2_5', ...
	'CO_trev_1_num', ...
	'MD_hrv_classic_pnn40', ...
	'SB_BinaryStats_mean_longstretch1', ...
	'SB_TransitionMatrix_3ac_sumdiagcov', ... 
	'PD_PeriodicityWang_th0_01', ...
	'CO_Embed2_Dist_tau_d_expfit_meandiff', ...
	'IN_AutoMutualInfoStats_40_gaussian_fmmi', ...
	'FC_LocalSimple_mean1_tauresrat', ...
	'DN_OutlierInclude_p_001_mdrmd', ...
	'DN_OutlierInclude_n_001_mdrmd', ... 
	'SP_Summaries_welch_rect_area_5_1', ...
	'SB_BinaryStats_diff_longstretch0', ...
	'SB_MotifThree_quantile_hh', ... 
	'SC_FluctAnal_2_rsrangefit_50_1_logi_prop_r1', ...
	'SC_FluctAnal_2_dfa_50_1_2_logi_prop_r1', ...
	'SP_Summaries_welch_rect_centroid', ...
	'FC_LocalSimple_mean3_stderr'
	};

	if catch24
		additionals = {'DN_Mean' 'DN_Spread_Std'};
		featureNames = [featureNames, additionals];
	else
	end
	
	featureValues = zeros(length(featureNames),1);
	
	for featureInd = 1:length(featureNames)
		featureName = featureNames{featureInd};
		fh = str2func(['catch22_', featureName]);
		featureValues(featureInd) = fh(data');
	end 
end
