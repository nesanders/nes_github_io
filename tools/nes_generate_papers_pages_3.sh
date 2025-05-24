#!/bin/bash

# Create directories if they don't exist
mkdir -p _posts/research
mkdir -p assets/papers

# Markdown template string
read -r -d '' MARKDOWN_TEMPLATE << EOM
---
title: "{{TITLE}}"
date: {{DATE}}
pin: false
categories: [research, paper]
tags: [{{TAGS}}]
description: "{{DESCRIPTION}}"
authors: [{{AUTHORS}}]
---

*This paper was originally published in {{PUBLICATION_INFO}}.*

{{PDF_SECTION}}

**Full Citation (AAS Style):**
{{CITATION}}

**Links:**
- [Publisher's Version]({{PUB_URL}}){{PUB_DOI_LINK}}
{{ARXIV_LINK_SECTION}}
EOM

# Array of paper data
# Each element is a |-separated string:
# FILENAME_DATE|TITLE|PUB_DATE|TAGS_STR|DESCRIPTION|AUTHORS_STR|PUBLICATION_NAME|YEAR|PUB_URL|PUB_DOI|ARXIV_ID|ARXIV_URL|FULL_CITATION_TEXT|PDF_FILENAME
PAPERS_DATA=(
  "2024-09-10-ai-legislative-engagement|Applications Of Artificial Intelligence Tools To Enhance Legislative Engagement: Case Studies From Make.org And MAPLE|2024-09-10|\"ai\", \"democracy\", \"legislation\", \"legislative engagement\"|Case studies on using AI for legislative engagement from Make.org and MAPLE.| \"acombaz\", \"dmas\", \"nes\", \"etal\" |AI4Democracy, IE Center for the Governance of Change|2024|https://www.ie.edu/cgc/research/ai4democracy/| |2503.04769|https://arxiv.org/abs/2503.04769|Combaz, A., Mas, D., Sanders, N., & Victor, M. 2024, AI4Democracy, IE Center for the Governance of Change.|2024-ai_legislative_engagement.pdf"
  "2024-01-20-combopath|ComboPath: An ML system for predicting drug combination effects with superior model specification|2024-01-20|\"ai\", \"statistics\"|An ML system for predicting drug combination effects, presented at NeurIPS AI4Science and on bioRxiv.| \"dsranasinghe\", \"nes\", \"etal\" |bioRxiv / NeurIPS AI4Science|2024|https://www.biorxiv.org/content/10.1101/2024.01.16.575408v1|10.1101/2024.01.16.575408|bioRxiv:2024.01.16.575408|https://www.biorxiv.org/content/10.1101/2024.01.16.575408v1|Ranasinghe, D. S., Sanders, N., Tam, H. H., Liu, C., & Spitz, D. 2024, bioRxiv, doi:10.1101/2024.01.16.575408|2024-combopath.pdf"
  "2022-12-13-global-mass-shootings|Estimating the Global Prevalence of Mass Public Shootings|2022-12-13|\"mass public shootings\", \"statistics\", \"public safety\"|Estimates the global prevalence of mass public shootings using Bayesian modeling.| \"gduwe\", \"nes\", \"etal\" |International Journal of Offender Therapy and Comparative Criminology|2022|https://journals.sagepub.com/doi/10.1177/0306624X221139070|10.1177/0306624X221139070| | |Duwe, G., Sanders, N. E., Rocque, M., & Fox, J. A. 2022, Int J Offender Ther Comp Criminol, 67, 1642, doi:10.1177/0306624X221139070|2022-global_mass_shootings.pdf"
  "2022-01-25-media-contagion-significance|Does Media Coverage of Mass Public Shootings Create a Contagion Effect?|2022-01-25|\"mass public shootings\", \"statistics\", \"significance\"|Investigates whether media coverage of mass public shootings leads to a short-term increase in subsequent shootings.| \"jaf\", \"nes\", \"etal\" |Significance|2022|https://academic.oup.com/significance/article/19/1/24/6513153|10.1111/1740-9713.01610| | |Fox, J. A., Sanders, N. E., Fridel, E. E., Duwe, G., & Rocque, M. 2022, Significance, 19(1), 24-28, doi:10.1111/1740-9713.01610|2022-media_contagion_significance.pdf"
  "2021-06-14-contagion-spp|The Contagion of Mass Shootings: The Interdependence of Large-Scale Massacres and Mass Media Coverage|2021-06-14|\"mass public shootings\", \"statistics\", \"research\"|Examines the interdependence of large-scale massacres and mass media coverage.| \"jaf\", \"nes\", \"etal\" |Statistics & Public Policy|2021|https://www.tandfonline.com/doi/full/10.1080/2330443X.2021.1932645|10.1080/2330443X.2021.1932645| | |Fox, J. A., Sanders, N. E., Fridel, E. E., Duwe, G., & Rocque, M. 2021, Statistics & Public Policy, 8(1), 53-66, doi:10.1080/2330443X.2021.1932645|2021-contagion_spp.pdf"
  "2021-04-01-forecasting-severity|Forecasting the Severity of Mass Public Shootings in the United States|2021-04-01|\"mass public shootings\", \"statistics\", \"research\"|Forecasts the future severity of mass public shootings in the U.S. using statistical modeling.| \"gduwe\", \"nes\", \"etal\" |Journal of Quantitative Criminology|2021|https://link.springer.com/article/10.1007/s10940-021-09499-5|10.1007/s10940-021-09499-5| | |Duwe, G., Sanders, N. E., Rocque, M., & Fox, J. A. 2021, Journal of Quantitative Criminology, 38, 385-423, doi:10.1007/s10940-021-09499-5|2021-forecasting_severity.pdf"
  "2020-12-15-superraenn|SuperRAENN: A Semi-supervised Supernova Photometric Classification Pipeline Trained on Pan-STARRS1 Medium Deep Survey Supernovae|2020-12-15|\"astrophysics\", \"supernovae\", \"statistics\", \"ai\"|A semi-supervised SN photometric classification pipeline using Pan-STARRS1 data.| \"vavillar\", \"ghosseinzadeh\", \"nes\", \"etal\" |The Astrophysical Journal|2020|https://iopscience.iop.org/article/10.3847/1538-4357/abc8bd|10.3847/1538-4357/abc8bd|2008.04921|https://arxiv.org/abs/2008.04921|Villar, V. A., Hosseinzadeh, G., Sanders, N., et al. 2020, ApJ, 905, 94, doi:10.3847/1538-4357/abc8bd|2020-superraenn.pdf"
  "2019-10-10-sn-photometric-classification|Supernova Photometric Classification Pipelines Trained on Spectroscopically Classified Supernovae from the Pan-STARRS1 Medium-Deep Survey|2019-10-10|\"astrophysics\", \"supernovae\", \"statistics\", \"ai\"|SN photometric classification pipelines trained on Pan-STARRS1 MDS SNe.| \"vavillar\", \"ghosseinzadeh\", \"nes\", \"etal\" |The Astrophysical Journal|2019|https://iopscience.iop.org/article/10.3847/1538-4357/ab4032|10.3847/1538-4357/ab4032|1905.07422|https://arxiv.org/abs/1905.07422|Villar, V. A., Hosseinzadeh, G., Berger, E., ... Sanders, N. E., et al. 2019, ApJ, 884, 83, doi:10.3847/1538-4357/ab4032|2019-sn_photometric_classification.pdf"
  "2018-10-05-clust-lda|Clust-LDA: Joint Model for Text Mining and Author Group Inference|2018-10-05|\"ai\", \"statistics\", \"research\"|A joint model for text mining and inferring author groups.| \"sning\", \"nes\", \"etal\" |arXiv|2018|https://arxiv.org/abs/1810.02717| |1810.02717|https://arxiv.org/abs/1810.02717|Ning, S., Sanders, N. E., Ororbia, A. G., Yen, J., & Reitter, D. 2018, arXiv:1810.02717|2018-clust_lda.pdf"
  "2017-01-20-movie-attribution|Advertising Attribution Modeling in the Movie Industry|2017-01-20|\"statistics\", \"research\", \"finance\"|Models advertising attribution for the movie industry, presented at StanCon 2017.| \"vlei\", \"nes\", \"etal\" |StanCon 2017 Proceedings|2017|https://github.com/stan-dev/stancon_talks/blob/master/2017/Contributed-Talks/07_lei_sanders_dawson/paper.pdf| | | |Lei, V., Sanders, N., & Dawson, A. 2017, StanCon 2017 Proceedings.|2017-movie_attribution.pdf"
  "2017-08-31-iptf15eqv|iPTF15eqv: A Likely EOB Progenitor for a Type Ib Ca-rich Transient|2017-08-31|\"astrophysics\", \"supernovae\"|Multi-wavelength analysis of the Ca-rich transient iPTF15eqv.| \"dmilisav\", \"rmargutti\", \"jtparrent\", \"nes\", \"etal\" |The Astrophysical Journal|2017|https://iopscience.iop.org/article/10.3847/1538-4357/aa823d|10.3847/1538-4357/aa823d|1706.01887|https://arxiv.org/abs/1706.01887|Milisavljevic, D., Margutti, R., Parrent, J. T., Sanders, N. E., et al. 2017, ApJ, 846, 50, doi:10.3847/1538-4357/aa823d|2017-iptf15eqv.pdf"
  "2015-01-09-sn2012ap-nature|The Broad-lined SN Ic 2012ap and the Nature of Relativistic Supernovae Lacking a GRB Detection|2015-01-09|\"astrophysics\", \"supernovae\"|Analysis of SN 2012ap and the nature of relativistic SNe without GRB detections.| \"dmilisav\", \"rmargutti\", \"nes\", \"etal\" |The Astrophysical Journal|2015|https://iopscience.iop.org/article/10.1088/0004-637X/799/1/57|10.1088/0004-637X/799/1/57|1408.1606|https://arxiv.org/abs/1408.1606|Milisavljevic, D., Margutti, R., Sanders, N. E., et al. 2015, ApJ, 799, 57, doi:10.1088/0004-637X/799/1/57|2015-sn2012ap_nature.pdf"
  "2014-12-10-relativistic-sne-engines|Relativistic Supernovae Have Shorter-lived Central Engines Or More Extended Progenitors: The Case Of SN 2012ap|2014-12-10|\"astrophysics\", \"supernovae\"|Investigates central engines/progenitors of relativistic SNe, focusing on SN 2012ap.| \"rmargutti\", \"dmilisav\", \"ams\", \"etal\" |The Astrophysical Journal|2014|https://iopscience.iop.org/article/10.1088/0004-637X/797/2/107|10.1088/0004-637X/797/2/107|1402.6344|https://arxiv.org/abs/1402.6344|Margutti, R., Milisavljevic, D., Soderberg, A. M., ... Sanders, N. E., et al. 2014, ApJ, 797, 107, doi:10.1088/0004-637X/797/2/107|2014-relativistic_sne_engines.pdf"
  "2014-09-18-panstarrs1-transients|Rapidly Evolving And Luminous Transients From PAN-STARRS1|2014-09-18|\"astrophysics\", \"supernovae\"|Presents rapidly evolving and luminous transients discovered by Pan-STARRS1.| \"mdrout\", \"rchornock\", \"ams\", \"nes\", \"etal\" |The Astrophysical Journal|2014|https://iopscience.iop.org/article/10.1088/0004-637X/794/1/23|10.1088/0004-637X/794/1/23|1405.3668|https://arxiv.org/abs/1405.3668|Drout, M. R., Chornock, R., Soderberg, A. M., Sanders, N. E., et al. 2014, ApJ, 794, 23, doi:10.1088/0004-637X/794/1/23|2014-panstarrs1_transients.pdf"
  "2014-01-28-sn2012ap-dib|Interaction Between The Broad-lined Type Ic Supernova 2012ap And Carriers Of Diffuse Interstellar Bands|2014-01-28|\"astrophysics\", \"supernovae\"|Studies the interaction between SN 2012ap and DIB carriers.| \"dmilisav\", \"rmargutti\", \"nes\", \"rpk\", \"ams\", \"etal\" |The Astrophysical Journal Letters|2014|https://iopscience.iop.org/article/10.1088/2041-8205/782/1/L14|10.1088/2041-8205/782/1/L14|1401.2991|https://arxiv.org/abs/1401.2991|Milisavljevic, D., Margutti, R., Sanders, N. E., Kirshner, R. P., Soderberg, A. M., et al. 2014, ApJL, 782, L14, doi:10.1088/2041-8205/782/1/L14|2014-sn2012ap_dib.pdf"
  "2013-12-10-sn2009ip-panchromatic|A Panchromatic View Of The Restless SN 2009ip Reveals Explosive Ejection Of A Massive Star Envelope|2013-12-10|\"astrophysics\", \"supernovae\"|Panchromatic observations of SN 2009ip, revealing massive star envelope ejection.| \"rmargutti\", \"ams\", \"dmilisav\", \"nes\", \"etal\" |The Astrophysical Journal|2014|https://iopscience.iop.org/article/10.1088/0004-637X/780/1/21|10.1088/0004-637X/780/1/21|1306.0038|https://arxiv.org/abs/1306.0038|Margutti, R., Soderberg, A. M., Milisavljevic, D., Sanders, N. E., et al. 2014, ApJ, 780, 21, doi:10.1088/0004-637X/780/1/21|2014-sn2009ip_panchromatic.pdf"
  "2013-06-12-sn2012au-golden-link|SN 2012au: A Golden Link Between Superluminous Supernovae And Their Lower-luminosity Counterparts|2013-06-12|\"astrophysics\", \"supernovae\"|SN 2012au as a link between superluminous SNe and their fainter counterparts.| \"dmilisav\", \"rmargutti\", \"ams\", \"ghmarion\", \"jcwheeler\", \"nes\", \"etal\" |The Astrophysical Journal Letters|2013|https://iopscience.iop.org/article/10.1088/2041-8205/770/2/L37|10.1088/2041-8205/770/2/L37|1304.0095|https://arxiv.org/abs/1304.0095|Milisavljevic, D., Margutti, R., Soderberg, A. M., Marion, G. H., Wheeler, J. C., Sanders, N. E., et al. 2013, ApJL, 770, L37, doi:10.1088/2041-8205/770/2/L37|2013-sn2012au_golden_link.pdf"
  "2013-03-28-sn2011ei-multiwavelength|Multi-wavelength Observations Of Supernova 2011ei: A Radiatively Inefficient Shock Breakout In A Type IIb Supernova|2013-03-28|\"astrophysics\", \"supernovae\"|Multi-wavelength study of SN 2011ei, a Type IIb SN with inefficient shock breakout.| \"dmilisav\", \"rmargutti\", \"ams\", \"nes\", \"etal\" |The Astrophysical Journal|2013|https://iopscience.iop.org/article/10.1088/0004-637X/767/1/71|10.1088/0004-637X/767/1/71|1207.2152|https://arxiv.org/abs/1207.2152|Milisavljevic, D., Margutti, R., Soderberg, A. M., Sanders, N. E., et al. 2013, ApJ, 767, 71, doi:10.1088/0004-637X/767/1/71|2013-sn2011ei_multiwavelength.pdf"
  "2011-11-15-snia-velocity-color|Velocity Evolution And The Intrinsic Color Of Type Ia Supernovae|2011-11-15|\"astrophysics\", \"supernovae\", \"statistics\"|Examines velocity evolution and intrinsic colors of Type Ia supernovae.| \"rjfoley\", \"nes\", \"rpk\" |The Astrophysical Journal|2011|https://iopscience.iop.org/article/10.1088/0004-637X/742/2/89|10.1088/0004-637X/742/2/89|1107.3555|https://arxiv.org/abs/1107.3555|Foley, R. J., Sanders, N. E., & Kirshner, R. P. 2011, ApJ, 742, 89, doi:10.1088/0004-637X/742/2/89|2011-snia_velocity_color.pdf"
)

# Loop through paper data and generate files
for paper_entry in "${PAPERS_DATA[@]}"; do
  IFS='|' read -r FILENAME_DATE TITLE PUB_DATE TAGS_STR DESCRIPTION AUTHORS_STR PUBLICATION_NAME YEAR PUB_URL PUB_DOI ARXIV_ID ARXIV_URL FULL_CITATION_TEXT PDF_FILENAME <<< "$paper_entry"

  # Construct PDF download URL (assuming arXiv for those with ARXIV_ID)
  PDF_URL=""
  if [[ -n "$ARXIV_URL" ]]; then
    PDF_URL="${ARXIV_URL/abs/pdf}.pdf"
  elif [[ "$PUB_URL" == *"biorxiv"* ]]; then
    PDF_URL="${PUB_URL}.full.pdf"
  elif [[ "$TITLE" == "Advertising Attribution Modeling in the Movie Industry" ]]; then
    PDF_URL="https://raw.githubusercontent.com/stan-dev/stancon_talks/master/2017/Contributed-Talks/07_lei_sanders_dawson/paper.pdf"
  fi

  # Download PDF if URL is set
  if [[ -n "$PDF_URL" ]]; then
    echo "Downloading $PDF_FILENAME from $PDF_URL..."
    # Use curl to download, -L follows redirects, -o specifies output filename
    # Add --fail to make curl exit with an error if the download fails
    curl -L --fail "$PDF_URL" -o "assets/papers/$PDF_FILENAME"
    if [ $? -ne 0 ]; then
        echo "WARNING: Failed to download $PDF_FILENAME from $PDF_URL"
        PDF_SECTION="*A PDF of the paper could not be automatically downloaded. Please add it manually to /assets/papers/${PDF_FILENAME}*"
    else
        PDF_SECTION="A PDF of the paper is available [here]({{\"/assets/papers/${PDF_FILENAME}\" | relative_url }})."
    fi
  else
    echo "No direct PDF URL determined for $TITLE. Manual download may be needed."
    PDF_SECTION="*A PDF of this paper is not available for automatic download. If you have it, please place it at /assets/papers/${PDF_FILENAME} and update this link.*"
  fi


  # Construct publication info string
  PUBLICATION_INFO="in ${PUBLICATION_NAME} in ${YEAR}"
  if [[ -z "$PUBLICATION_NAME" && -n "$ARXIV_ID" ]]; then
    PUBLICATION_INFO="on arXiv in ${YEAR}"
  elif [[ -z "$PUBLICATION_NAME" ]]; then
    PUBLICATION_INFO="in ${YEAR}" # Fallback if no publisher name
  fi


  # DOI link for publisher
  PUB_DOI_LINK=""
  if [[ -n "$PUB_DOI" ]]; then
    PUB_DOI_LINK=" (DOI: [${PUB_DOI}](https://doi.org/${PUB_DOI}))"
  fi

  # arXiv link section
  ARXIV_LINK_SECTION=""
  if [[ -n "$ARXIV_URL" ]]; then
    ARXIV_LINK_SECTION="- [arXiv Version](${ARXIV_URL})"
  elif [[ "$PUB_URL" == *"biorxiv"* ]]; then # Special case for bioRxiv
     ARXIV_LINK_SECTION="- [bioRxiv Version](${PUB_URL})"
  fi


  # Replace placeholders in template
  current_markdown="$MARKDOWN_TEMPLATE"
  current_markdown="${current_markdown//\{\{TITLE\}\}/$TITLE}"
  current_markdown="${current_markdown//\{\{DATE\}\}/$PUB_DATE}"
  current_markdown="${current_markdown//\{\{TAGS\}\}/$TAGS_STR}"
  current_markdown="${current_markdown//\{\{DESCRIPTION\}\}/$DESCRIPTION}"
  current_markdown="${current_markdown//\{\{AUTHORS\}\}/$AUTHORS_STR}"
  current_markdown="${current_markdown//\{\{PUBLICATION_INFO\}\}/$PUBLICATION_INFO}"
  current_markdown="${current_markdown//\{\{PDF_SECTION\}\}/$PDF_SECTION}"
  current_markdown="${current_markdown//\{\{CITATION\}\}/$FULL_CITATION_TEXT}"
  current_markdown="${current_markdown//\{\{PUB_URL\}\}/$PUB_URL}"
  current_markdown="${current_markdown//\{\{PUB_DOI_LINK\}\}/$PUB_DOI_LINK}"
  current_markdown="${current_markdown//\{\{ARXIV_LINK_SECTION\}\}/$ARXIV_LINK_SECTION}"


  # Write to file
  # Crude slugification for filename (replace spaces with hyphens, lower case, remove special chars)
  TITLE_SLUG=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | tr -s ' ' '-' | sed 's/[^a-z0-9-]//g' | sed 's/-\{2,\}/-/g')
  OUTPUT_FILENAME="_posts/research/${FILENAME_DATE}-${TITLE_SLUG:0:50}.md" # Truncate slug for safety
  echo "$current_markdown" > "$OUTPUT_FILENAME"

  echo "Generated $OUTPUT_FILENAME"
done

echo "Bash script operations complete."
