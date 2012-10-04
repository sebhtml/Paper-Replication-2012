#!/bin/bash
#$ -N SimulateSequences
#$ -P nne-790-ab
#$ -l h_rt=16:00:00
#$ -pe default 8
#$ -cwd

source Driver.colosse

PATH=.:$PATH

(
VirtualNextGenSequencer Bacteria-Genomes/Oligotropha_carboxidovorans_OM5_uid59155.fasta 0.0025 400 40 10651115 101 Reads/1_1.fasta Reads/1_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Wolbachia_endosymbiont_of_Drosophila_melanogaster_uid57851.fasta 0.0025 400 40 7531475 101 Reads/2_1.fasta Reads/2_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Klebsiella_variicola_At_22_uid42113.fasta 0.0025 400 40 6149424 101 Reads/3_1.fasta Reads/3_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Chlorobium_luteolum_DSM_273_uid58175.fasta 0.0025 400 40 5325557 101 Reads/4_1.fasta Reads/4_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Borrelia_afzelii_PKo_uid58653.fasta 0.0025 400 40 4763323 101 Reads/5_1.fasta Reads/5_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Francisella_tularensis_mediasiatica_FSC147_uid58939.fasta 0.0025 400 40 4348299 101 Reads/6_1.fasta Reads/6_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Aliivibrio_salmonicida_LFI1238_uid59251.fasta 0.0025 400 40 4025743 101 Reads/7_1.fasta Reads/7_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Salmonella_enterica_serovar_Typhi_CT18_uid57793.fasta 0.0025 400 40 3765738 101 Reads/8_1.fasta Reads/8_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Laribacter_hongkongensis_HLHK9_uid59265.fasta 0.0025 400 40 3550372 101 Reads/9_1.fasta Reads/9_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Sulfurimonas_autotrophica_DSM_16294_uid53043.fasta 0.0025 400 40 3368178 101 Reads/10_1.fasta Reads/10_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Odoribacter_splanchnicus_DSM_20712_uid63397.fasta 0.0025 400 40 3211432 101 Reads/11_1.fasta Reads/11_2.fasta
) &

(
VirtualNextGenSequencer Bacteria-Genomes/Sulfolobus_islandicus_Y_N_15_51_uid58825.fasta 0.0025 400 40 3074712 101 Reads/12_1.fasta Reads/12_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Roseobacter_denitrificans_OCh_114_uid58597.fasta 0.0025 400 40 2954088 101 Reads/13_1.fasta Reads/13_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Hyphomonas_neptunium_ATCC_15444_uid58433.fasta 0.0025 400 40 2846630 101 Reads/14_1.fasta Reads/14_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Clostridium_botulinum_Ba4_657_uid59173.fasta 0.0025 400 40 2750106 101 Reads/15_1.fasta Reads/15_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Nitrosopumilus_maritimus_SCM1_uid58903.fasta 0.0025 400 40 2662779 101 Reads/16_1.fasta Reads/16_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Yersinia_pestis_CO92_uid57621.fasta 0.0025 400 40 2583275 101 Reads/17_1.fasta Reads/17_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Haloarcula_hispanica_ATCC_33960_uid72475.fasta 0.0025 400 40 2510492 101 Reads/18_1.fasta Reads/18_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Thioalkalivibrio_K90mix_uid46181.fasta 0.0025 400 40 2443533 101 Reads/19_1.fasta Reads/19_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Thermoanaerobacter_italicus_Ab9_uid46241.fasta 0.0025 400 40 2381662 101 Reads/20_1.fasta Reads/20_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Yersinia_enterocolitica_palearctica_105_5R_r__uid63663.fasta 0.0025 400 40 2324264 101 Reads/21_1.fasta Reads/21_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Halorhabdus_utahensis_DSM_12940_uid59189.fasta 0.0025 400 40 2270825 101 Reads/22_1.fasta Reads/22_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Amycolicicoccus_subflavus_DQS3_9A1_uid67253.fasta 0.0025 400 40 2220911 101 Reads/23_1.fasta Reads/23_2.fasta
) &

(
VirtualNextGenSequencer Bacteria-Genomes/Salmonella_enterica_serovar_Paratyphi_C_RKS4594_uid59063.fasta 0.0025 400 40 2174150 101 Reads/24_1.fasta Reads/24_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Streptomyces_violaceusniger_Tu_4113_uid52609.fasta 0.0025 400 40 2130223 101 Reads/25_1.fasta Reads/25_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Pseudomonas_fluorescens_Pf_5_uid57937.fasta 0.0025 400 40 2088855 101 Reads/26_1.fasta Reads/26_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Amycolatopsis_mediterranei_U32_uid50565.fasta 0.0025 400 40 2049808 101 Reads/27_1.fasta Reads/27_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Chlorobium_phaeobacteroides_DSM_266_uid58133.fasta 0.0025 400 40 2012871 101 Reads/28_1.fasta Reads/28_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Leifsonia_xyli_CTCB07_uid57759.fasta 0.0025 400 40 1977862 101 Reads/29_1.fasta Reads/29_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Sinorhizobium_medicae_WSM419_uid58549.fasta 0.0025 400 40 1944619 101 Reads/30_1.fasta Reads/30_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Escherichia_coli_ATCC_8739_uid58783.fasta 0.0025 400 40 1912997 101 Reads/31_1.fasta Reads/31_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Burkholderia_phymatum_STM815_uid58699.fasta 0.0025 400 40 1882869 101 Reads/32_1.fasta Reads/32_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Haloferax_volcanii_DS2_uid46845.fasta 0.0025 400 40 1854121 101 Reads/33_1.fasta Reads/33_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Variovorax_paradoxus_EPS_uid62107.fasta 0.0025 400 40 1826651 101 Reads/34_1.fasta Reads/34_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Helicobacter_hepaticus_ATCC_51449_uid57737.fasta 0.0025 400 40 1800367 101 Reads/35_1.fasta Reads/35_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Delftia_acidovorans_SPH_1_uid58703.fasta 0.0025 400 40 1775186 101 Reads/36_1.fasta Reads/36_2.fasta
) &

(
VirtualNextGenSequencer Bacteria-Genomes/Coxiella_burnetii_RSA_493_uid57631.fasta 0.0025 400 40 1751032 101 Reads/37_1.fasta Reads/37_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Pseudomonas_mendocina_ymp_uid58723.fasta 0.0025 400 40 1727839 101 Reads/38_1.fasta Reads/38_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Rhodopseudomonas_palustris_HaA2_uid58439.fasta 0.0025 400 40 1705543 101 Reads/39_1.fasta Reads/39_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Candidatus_Moranella_endobia_PCIT_uid68739.fasta 0.0025 400 40 1684089 101 Reads/40_1.fasta Reads/40_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Archaeoglobus_profundus_DSM_5631_uid43493.fasta 0.0025 400 40 1663425 101 Reads/41_1.fasta Reads/41_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Megasphaera_elsdenii_DSM_20460_uid71135.fasta 0.0025 400 40 1643503 101 Reads/42_1.fasta Reads/42_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Candidatus_Vesicomyosocius_okutanii_HA_uid59427.fasta 0.0025 400 40 1624280 101 Reads/43_1.fasta Reads/43_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Yersinia_pestis_Pestoides_F_uid58619.fasta 0.0025 400 40 1605716 101 Reads/44_1.fasta Reads/44_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Chlorobium_chlorochromatii_CaD3_uid58375.fasta 0.0025 400 40 1587774 101 Reads/45_1.fasta Reads/45_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Burkholderia_glumae_BGR1_uid59397.fasta 0.0025 400 40 1570421 101 Reads/46_1.fasta Reads/46_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Xylella_fastidiosa_M12_uid58763.fasta 0.0025 400 40 1553625 101 Reads/47_1.fasta Reads/47_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Synechococcus_elongatus_PCC_6301_uid58235.fasta 0.0025 400 40 1537356 101 Reads/48_1.fasta Reads/48_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Acinetobacter_ADP1_uid61597.fasta 0.0025 400 40 1521588 101 Reads/49_1.fasta Reads/49_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Halanaerobium_hydrogeniformans_uid60191.fasta 0.0025 400 40 1506295 101 Reads/50_1.fasta Reads/50_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Leptospira_interrogans_serovar_Lai_56601_uid57881.fasta 0.0025 400 40 1491454 101 Reads/51_1.fasta Reads/51_2.fasta
) &

(
VirtualNextGenSequencer Bacteria-Genomes/Serratia_AS9_uid67313.fasta 0.0025 400 40 1477044 101 Reads/52_1.fasta Reads/52_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Riemerella_anatipestifer_DSM_15868_uid60727.fasta 0.0025 400 40 1463043 101 Reads/53_1.fasta Reads/53_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Lacinutrix_5H_3_7_4_uid68067.fasta 0.0025 400 40 1449433 101 Reads/54_1.fasta Reads/54_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Paenibacillus_JDR_2_uid59021.fasta 0.0025 400 40 1436196 101 Reads/55_1.fasta Reads/55_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Geobacillus_Y412MC61_uid41171.fasta 0.0025 400 40 1423315 101 Reads/56_1.fasta Reads/56_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Rhodobacter_sphaeroides_ATCC_17025_uid58451.fasta 0.0025 400 40 1410775 101 Reads/57_1.fasta Reads/57_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Dehalococcoides_BAV1_uid58477.fasta 0.0025 400 40 1398560 101 Reads/58_1.fasta Reads/58_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Acinetobacter_DR1_uid50119.fasta 0.0025 400 40 1386657 101 Reads/59_1.fasta Reads/59_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Halomicrobium_mukohataei_DSM_12286_uid59107.fasta 0.0025 400 40 1375053 101 Reads/60_1.fasta Reads/60_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Prevotella_ruminicola_23_uid47507.fasta 0.0025 400 40 1363735 101 Reads/61_1.fasta Reads/61_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Desulfovibrio_vulgaris_Hildenborough_uid57645.fasta 0.0025 400 40 1352693 101 Reads/62_1.fasta Reads/62_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Idiomarina_loihiensis_L2TR_uid58087.fasta 0.0025 400 40 1341914 101 Reads/63_1.fasta Reads/63_2.fasta
) &

(
VirtualNextGenSequencer Bacteria-Genomes/Desulfatibacillum_alkenivorans_AK_01_uid58913.fasta 0.0025 400 40 1331389 101 Reads/64_1.fasta Reads/64_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Teredinibacter_turnerae_T7901_uid59267.fasta 0.0025 400 40 1321108 101 Reads/65_1.fasta Reads/65_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Haemophilus_influenzae_PittGG_uid58593.fasta 0.0025 400 40 1311062 101 Reads/66_1.fasta Reads/66_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Candidatus_Amoebophilus_asiaticus_5a2_uid58963.fasta 0.0025 400 40 1301241 101 Reads/67_1.fasta Reads/67_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Psychrobacter_cryohalolentis_K5_uid58373.fasta 0.0025 400 40 1291637 101 Reads/68_1.fasta Reads/68_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Clostridium_SY8519_uid68705.fasta 0.0025 400 40 1282244 101 Reads/69_1.fasta Reads/69_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Parvibaculum_lavamentivorans_DS_1_uid58739.fasta 0.0025 400 40 1273052 101 Reads/70_1.fasta Reads/70_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Synechococcus_CC9605_uid58319.fasta 0.0025 400 40 1264055 101 Reads/71_1.fasta Reads/71_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Prochlorococcus_marinus_MIT_9211_uid58309.fasta 0.0025 400 40 1255246 101 Reads/72_1.fasta Reads/72_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Rhodoferax_ferrireducens_T118_uid58353.fasta 0.0025 400 40 1246619 101 Reads/73_1.fasta Reads/73_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Salmonella_enterica_serovar_Heidelberg_SL476_uid58973.fasta 0.0025 400 40 1238167 101 Reads/74_1.fasta Reads/74_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Clostridium_difficile_R20291_uid40921.fasta 0.0025 400 40 1229885 101 Reads/75_1.fasta Reads/75_2.fasta
) &

(
VirtualNextGenSequencer Bacteria-Genomes/Helicobacter_pylori_P12_uid59327.fasta 0.0025 400 40 1221767 101 Reads/76_1.fasta Reads/76_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Escherichia_coli_S88_uid62979.fasta 0.0025 400 40 1213807 101 Reads/77_1.fasta Reads/77_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Thermococcus_sibiricus_MM_739_uid59399.fasta 0.0025 400 40 1206001 101 Reads/78_1.fasta Reads/78_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Bacillus_amyloliquefaciens_FZB42_uid58271.fasta 0.0025 400 40 1198344 101 Reads/79_1.fasta Reads/79_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Aquifex_aeolicus_VF5_uid57765.fasta 0.0025 400 40 1190831 101 Reads/80_1.fasta Reads/80_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Streptococcus_gallolyticus_UCN34_uid46061.fasta 0.0025 400 40 1183457 101 Reads/81_1.fasta Reads/81_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Prochlorococcus_marinus_MIT_9215_uid58819.fasta 0.0025 400 40 1176219 101 Reads/82_1.fasta Reads/82_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Pyrococcus_horikoshii_OT3_uid57753.fasta 0.0025 400 40 1169112 101 Reads/83_1.fasta Reads/83_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Methanocaldococcus_vulcanius_M7_uid41131.fasta 0.0025 400 40 1162132 101 Reads/84_1.fasta Reads/84_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Escherichia_coli_K_12_substr__MG1655_uid57779.fasta 0.0025 400 40 1155276 101 Reads/85_1.fasta Reads/85_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Methanococcus_maripaludis_X1_uid70729.fasta 0.0025 400 40 1148539 101 Reads/86_1.fasta Reads/86_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Dickeya_zeae_Ech1591_uid59297.fasta 0.0025 400 40 1141919 101 Reads/87_1.fasta Reads/87_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Pseudomonas_syringae_B728a_uid57931.fasta 0.0025 400 40 1135413 101 Reads/88_1.fasta Reads/88_2.fasta
) &

(
VirtualNextGenSequencer Bacteria-Genomes/Rhodopseudomonas_palustris_BisA53_uid58445.fasta 0.0025 400 40 1129016 101 Reads/89_1.fasta Reads/89_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Cellulophaga_lytica_DSM_7489_uid63401.fasta 0.0025 400 40 1122726 101 Reads/90_1.fasta Reads/90_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Neisseria_gonorrhoeae_NCCP11945_uid59191.fasta 0.0025 400 40 1116540 101 Reads/91_1.fasta Reads/91_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Rothia_dentocariosa_ATCC_17931_uid49331.fasta 0.0025 400 40 1110455 101 Reads/92_1.fasta Reads/92_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Acidimicrobium_ferrooxidans_DSM_10331_uid59215.fasta 0.0025 400 40 1104469 101 Reads/93_1.fasta Reads/93_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Shewanella_ANA_3_uid58347.fasta 0.0025 400 40 1098579 101 Reads/94_1.fasta Reads/94_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Neisseria_gonorrhoeae_FA_1090_uid57611.fasta 0.0025 400 40 1092781 101 Reads/95_1.fasta Reads/95_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Brucella_suis_ATCC_23445_uid59015.fasta 0.0025 400 40 1087075 101 Reads/96_1.fasta Reads/96_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Mobiluncus_curtisii_ATCC_43063_uid49695.fasta 0.0025 400 40 1081457 101 Reads/97_1.fasta Reads/97_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Methylomicrobium_alcaliphilum_uid77119.fasta 0.0025 400 40 1075925 101 Reads/98_1.fasta Reads/98_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Staphylothermus_hellenicus_DSM_12710_uid45893.fasta 0.0025 400 40 1070477 101 Reads/99_1.fasta Reads/99_2.fasta
VirtualNextGenSequencer Bacteria-Genomes/Olsenella_uli_DSM_7084_uid51367.fasta 0.0025 400 40 1065111 101 Reads/100_1.fasta Reads/100_2.fasta
) &

wait


