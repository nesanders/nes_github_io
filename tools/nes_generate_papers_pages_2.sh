#!/bin/bash

# Create a directory for the papers if it doesn't exist
# Jekyll typically uses _posts for blog-like entries.
# For a collection named "papers", files would go into a "_papers" directory.
# If you intend these as regular posts, "_posts/research/papers" is fine.
# For this script, I'll assume you might want them in a specific collection path later,
# but will use the requested path for now.
output_dir="_posts/research/papers"
mkdir -p "$output_dir"

# Read the JSON data (optionally, load from a file e.g., papers_data.json)
json_data=$(cat <<'EOF'
[
  {
    "title": "Demonstrations of the Potential of AI-based Political Issue Polling",
    "date": "2023-10-27",
    "tags": ["ai", "statistics"],
    "description": "This paper explores the capabilities of artificial intelligence in conducting political issue polling, using LLMs to simulate responses and comparing them to human polling data. [3, 12, 45, 46]",
    "authors": ["nes", "etal"],
    "journal_short": "HDSR",
    "journal_full": "Harvard Data Science Review",
    "volume": "5",
    "issue": "4",
    "pages": null,
    "year": "2023",
    "paper_short_name": "ai_political_polling",
    "doi": "10.1162/99608f92.1d3cf75d",
    "publisher_url": "https://hdsr.mitpress.mit.edu/pub/pnp0k96h/release/1",
    "arxiv_url": null,
    "aas_citation": "Sanders, N. E., Ulinich, A., & Schneier, B. 2023, Harvard Data Science Review, 5(4), doi:10.1162/99608f92.1d3cf75d"
  },
  {
    "title": "Machine Learning Featurizations for AI Hacking of Political Systems",
    "date": "2021-10-08",
    "tags": ["ai", "statistics"],
    "description": "Investigates graph and sequence data representations for applying deep learning to predict outcomes in political and legislative systems, advancing the concept of AI hacking. [11, 17, 41]",
    "authors": ["nes", "etal"],
    "journal_short": "arXiv",
    "journal_full": "arXiv e-prints",
    "volume": null,
    "issue": null,
    "pages": "arXiv:2110.09231",
    "year": "2021",
    "paper_short_name": "ml_featurizations_ai_hacking",
    "doi": "10.48550/arXiv.2110.09231",
    "publisher_url": "https://arxiv.org/abs/2110.09231",
    "arxiv_url": "https://arxiv.org/abs/2110.09231",
    "aas_citation": "Sanders, N. E., & Schneier, B. 2021, arXiv e-prints, arXiv:2110.09231, doi:10.48550/arXiv.2110.09231"
  },
  {
    "title": "Can the Coronavirus Prompt a Global Outbreak of ``Distributional Thinking'' in Organizations?",
    "date": "2020-04-30",
    "tags": ["statistics", "education"],
    "description": "Discusses the potential for the COVID-19 pandemic to foster 'distributional thinking' within organizations, drawing parallels with social justice movements. [7, 43]",
    "authors": ["nes"],
    "journal_short": "HDSR",
    "journal_full": "Harvard Data Science Review",
    "volume": "2",
    "issue": "2",
    "pages": null,
    "year": "2020",
    "paper_short_name": "coronavirus_distributional_thinking",
    "doi": "10.1162/99608f92.a577296b",
    "publisher_url": "https://hdsr.mitpress.mit.edu/pub/org3f89g/release/1",
    "arxiv_url": null,
    "aas_citation": "Sanders, N. E. 2020, Harvard Data Science Review, 2(2), doi:10.1162/99608f92.a577296b"
  },
  {
    "title": "A Balanced Perspective on Prediction and Inference for Data Science in Industry",
    "date": "2019-07-01",
    "tags": ["statistics", "ai"],
    "description": "Offers a balanced view on the roles of prediction and inference in data science within industrial applications, emphasizing their interconnectedness. [2, 25, 47]",
    "authors": ["nes"],
    "journal_short": "HDSR",
    "journal_full": "Harvard Data Science Review",
    "volume": "1",
    "issue": "1",
    "pages": null,
    "year": "2019",
    "paper_short_name": "prediction_inference_data_science",
    "doi": "10.1162/99608f92.644ef4a4",
    "publisher_url": "https://hdsr.mitpress.mit.edu/pub/D0WYV24N/release/1",
    "arxiv_url": null,
    "aas_citation": "Sanders, N. E. 2019, Harvard Data Science Review, 1(1), doi:10.1162/99608f92.644ef4a4"
  },
  {
    "title": "AMEND: Open source, data-driven oversight of water quality in New England",
    "date": "2019-08-06",
    "tags": ["environment", "statistics"],
    "description": "Details the AMEND project, an open-source initiative for data-driven monitoring and oversight of water quality in New England.",
    "authors": ["nes"],
    "journal_short": "MaC",
    "journal_full": "Media and Communication",
    "volume": "7",
    "issue": "3",
    "pages": "29-41",
    "year": "2019",
    "paper_short_name": "amend_water_quality",
    "doi": "10.17645/mac.v7i3.1950",
    "publisher_url": "https://www.cogitatiopress.com/mediaandcommunication/article/view/1950",
    "arxiv_url": null,
    "aas_citation": "Sanders, N. E. 2019, Media and Communication, 7(3), 29, doi:10.17645/mac.v7i3.1950"
  },
  {
    "title": "The Role of Prior Information in Inference on the Annualized Rates of Mass Shootings in the US",
    "date": "2018-12-27",
    "tags": ["mass public shootings", "statistics"],
    "description": "Examines how prior information affects statistical inferences regarding the yearly rates of mass shootings in the United States.",
    "authors": ["nes", "etal"],
    "journal_short": "SPP",
    "journal_full": "Statistics and Public Policy",
    "volume": "5",
    "issue": "1",
    "pages": "1-8",
    "year": "2018",
    "paper_short_name": "prior_info_mass_shootings",
    "doi": "10.1080/2330443X.2018.1508421",
    "publisher_url": "https://www.tandfonline.com/doi/full/10.1080/2330443X.2018.1508421",
    "arxiv_url": "https://arxiv.org/abs/1801.08039",
    "aas_citation": "Sanders, N. E., & Lei, V. 2018, Statistics and Public Policy, 5(1), 1, doi:10.1080/2330443X.2018.1508421"
  },
  {
    "title": "Incorporating Current Research into Formal Higher Education Settings using Astrobites",
    "date": "2017-10-01",
    "tags": ["astronomy", "education"],
    "description": "Presents methods for integrating current astrophysical research into higher education curricula using the Astrobites resource, with lesson plans and examples. [6, 8, 10, 14, 15, 23, 24, 27, 30, 44]",
    "authors": ["nes", "etal"],
    "journal_short": "AJP",
    "journal_full": "American Journal of Physics",
    "volume": "85",
    "issue": "10",
    "pages": "741-749",
    "year": "2017",
    "paper_short_name": "astrobites_higher_education",
    "doi": "10.1119/1.4991506",
    "publisher_url": "https://pubs.aip.org/aapt/ajp/article/85/10/741/1058191",
    "arxiv_url": "https://arxiv.org/abs/1706.01165",
    "aas_citation": "Sanders, N. E., Kohler, S., Faesi, C., Villar, A., & Zevin, M. 2017, Am. J. Phys., 85, 741, doi:10.1119/1.4991506"
  },
  {
    "title": "Modeling the Time Evolution of the Annualized Rate of Public Mass Shootings with Gaussian Processes",
    "date": "2017-01-01",
    "tags": ["mass public shootings", "statistics"],
    "description": "Describes a statistical model using Gaussian Processes to understand the changing annual rate of public mass shootings, presented at StanCon.",
    "authors": ["nes", "etal"],
    "journal_short": "StanCon Proc.",
    "journal_full": "StanCon Proceedings",
    "volume": null,
    "issue": null,
    "pages": null,
    "year": "2017",
    "paper_short_name": "modeling_mass_shootings_gaussian",
    "doi": null,
    "publisher_url": "https://github.com/stan-dev/stancon_talks/blob/master/2017/Contributed-Talks/05_sanders/sanders_slides.pdf",
    "arxiv_url": "https://arxiv.org/abs/1701.04081",
    "aas_citation": "Sanders, N. E., & Lei, V. 2017, StanCon 2017 Proceedings (arXiv:1701.04081)"
  },
  {
    "title": "Unsupervised Transient Light Curve Analysis Via Hierarchical Bayesian Inference",
    "date": "2015-01-29",
    "tags": ["astronomy", "statistics", "ai"],
    "description": "Details an unsupervised method for analyzing transient light curves in astronomy using hierarchical Bayesian inference to classify and characterize them.",
    "authors": ["nes", "etal"],
    "journal_short": "ApJ",
    "journal_full": "The Astrophysical Journal",
    "volume": "800",
    "issue": "1",
    "pages": "36",
    "year": "2015",
    "paper_short_name": "unsupervised_transient_light_curve",
    "doi": "10.1088/0004-637X/800/1/36",
    "publisher_url": "https://iopscience.iop.org/article/10.1088/0004-637X/800/1/36",
    "arxiv_url": "https://arxiv.org/abs/1406.2693",
    "aas_citation": "Sanders, N. E., Betancourt, M., Soderberg, A., et al. 2015, ApJ, 800, 36, doi:10.1088/0004-637X/800/1/36"
  },
  {
    "title": "Towards Characterization of the Type IIP Supernova Progenitor Population: a Statistical Sample of Light Curves from Pan-STARRS1",
    "date": "2015-02-10",
    "tags": ["astronomy", "statistics"],
    "description": "Aims to characterize Type IIP supernova progenitors by analyzing a statistical sample of light curves obtained from the Pan-STARRS1 survey.",
    "authors": ["nes", "etal"],
    "journal_short": "ApJ",
    "journal_full": "The Astrophysical Journal",
    "volume": "799",
    "issue": "2",
    "pages": "208",
    "year": "2015",
    "paper_short_name": "type_iip_supernova_progenitors",
    "doi": "10.1088/0004-637X/799/2/208",
    "publisher_url": "https://iopscience.iop.org/article/10.1088/0004-637X/799/2/208",
    "arxiv_url": "https://arxiv.org/abs/1408.6522",
    "aas_citation": "Sanders, N. E., Soderberg, A. M., Gezari, S., et al. 2015, ApJ, 799, 208, doi:10.1088/0004-637X/799/2/208"
  },
  {
    "title": "A New Approach to Developing Interactive Software Modules through Graduate Education",
    "date": "2013-10-01",
    "tags": ["education", "astronomy"],
    "description": "Proposes a novel method for creating interactive software modules as part of graduate-level education, focusing on astronomy examples.",
    "authors": ["nes", "etal"],
    "journal_short": "JOST",
    "journal_full": "Journal of Science Education and Technology",
    "volume": "22",
    "issue": "5",
    "pages": "749-760",
    "year": "2013",
    "paper_short_name": "interactive_software_modules_education",
    "doi": "10.1007/s10956-012-9424-9",
    "publisher_url": "https://link.springer.com/article/10.1007/s10956-012-9424-9",
    "arxiv_url": "https://arxiv.org/abs/1206.0740",
    "aas_citation": "Sanders, N. E., Faesi, C. M., & Goodman, A. A. 2013, J Sci Educ Technol, 22, 749, doi:10.1007/s10956-012-9424-9"
  },
  {
    "title": "PS1-12sk is a Peculiar Supernova From a He-rich Progenitor System in a Cluster Environment",
    "date": "2013-05-01",
    "tags": ["astronomy"],
    "description": "Reports the discovery and analysis of PS1-12sk, a peculiar Type Ibn supernova, originating from a helium-rich progenitor in a brightest cluster galaxy environment. [5, 13, 32, 33, 37]",
    "authors": ["nes", "etal"],
    "journal_short": "ApJ",
    "journal_full": "The Astrophysical Journal",
    "volume": "769",
    "issue": "1",
    "pages": "39",
    "year": "2013",
    "paper_short_name": "ps1_12sk_supernova",
    "doi": "10.1088/0004-637X/769/1/39",
    "publisher_url": "https://iopscience.iop.org/article/10.1088/0004-637X/769/1/39",
    "arxiv_url": "https://arxiv.org/abs/1303.1818",
    "aas_citation": "Sanders, N. E., Soderberg, A. M., Foley, R. J., et al. 2013, ApJ, 769, 39, doi:10.1088/0004-637X/769/1/39"
  },
  {
    "title": "Using Colors to Improve Photometric Metallicity Estimates for Galaxies",
    "date": "2013-09-20",
    "tags": ["astronomy", "statistics"],
    "description": "Investigates the use of galaxy colors, particularly UV and optical, to enhance the accuracy of photometric metallicity estimations for star-forming galaxies. [9, 28, 39, 42]",
    "authors": ["nes", "etal"],
    "journal_short": "ApJ",
    "journal_full": "The Astrophysical Journal",
    "volume": "775",
    "issue": "2",
    "pages": "125",
    "year": "2013",
    "paper_short_name": "colors_photometric_metallicity",
    "doi": "10.1088/0004-637X/775/2/125",
    "publisher_url": "https://iopscience.iop.org/article/10.1088/0004-637X/775/2/125",
    "arxiv_url": "https://arxiv.org/abs/1211.3402",
    "aas_citation": "Sanders, N. E., Levesque, E. M., & Soderberg, A. M. 2013, ApJ, 775, 125, doi:10.1088/0004-637X/775/2/125"
  },
  {
    "title": "The metallicity profile of M31 from spectroscopy of hundreds of HII regions and PNe",
    "date": "2012-10-10",
    "tags": ["astronomy"],
    "description": "Presents the metallicity profile of the Andromeda galaxy (M31) derived from spectroscopic analysis of a large sample of HII regions and planetary nebulae.",
    "authors": ["nes", "etal"],
    "journal_short": "ApJ",
    "journal_full": "The Astrophysical Journal",
    "volume": "758",
    "issue": "2",
    "pages": "133",
    "year": "2012",
    "paper_short_name": "m31_metallicity_profile",
    "doi": "10.1088/0004-637X/758/2/133",
    "publisher_url": "https://iopscience.iop.org/article/10.1088/0004-637X/758/2/133",
    "arxiv_url": "https://arxiv.org/abs/1208.0851",
    "aas_citation": "Sanders, N. E., Caldwell, N., McDowell, J., et al. 2012, ApJ, 758, 133, doi:10.1088/0004-637X/758/2/133"
  },
  {
    "title": "SN 2010ay Is a Luminous and Broad-Lined Type Ic Supernova Within a Low-Metallicity Host Galaxy",
    "date": "2012-09-01",
    "tags": ["astronomy"],
    "description": "Describes SN 2010ay, a bright Type Ic supernova with broad spectral lines, found in a host galaxy with low metallicity, and discusses its implications for GRB progenitors.",
    "authors": ["nes", "etal"],
    "journal_short": "ApJ",
    "journal_full": "The Astrophysical Journal",
    "volume": "756",
    "issue": "2",
    "pages": "184",
    "year": "2012",
    "paper_short_name": "sn2010ay_type_ic_supernova",
    "doi": "10.1088/0004-637X/756/2/184",
    "publisher_url": "https://iopscience.iop.org/article/10.1088/0004-637X/756/2/184",
    "arxiv_url": "https://arxiv.org/abs/1108.0642",
    "aas_citation": "Sanders, N. E., Soderberg, A. M., Levesque, E. M., et al. 2012, ApJ, 756, 184, doi:10.1088/0004-637X/756/2/184"
  },
  {
    "title": "Preparing Undergraduates for Research Careers: Using Astrobites in the Classroom",
    "date": "2012-08-23",
    "tags": ["astronomy", "education"],
    "description": "Discusses strategies for preparing undergraduate students for research careers, highlighting the use of the Astrobites resource for integrating current research into educational settings. [6, 18, 29, 31]",
    "authors": ["nes", "etal"],
    "journal_short": "AER",
    "journal_full": "Astronomy Education Review",
    "volume": "11",
    "issue": "1",
    "pages": "010201",
    "year": "2012",
    "paper_short_name": "astrobites_undergraduate_research",
    "doi": "10.3847/AER2012030",
    "publisher_url": "https://iopscience.iop.org/article/10.3847/AER2012030",
    "arxiv_url": "https://arxiv.org/abs/1208.4791",
    "aas_citation": "Sanders, N. E., Kohler, S., & Newton, E. 2012, Astron. Educ. Rev., 11, 010201, doi:10.3847/AER2012030"
  },
  {
    "title": "The size distributions of nanoscale Fe-Ni-S droplets in Stardust melted grains from comet 81P/Wild 2",
    "date": "2012-04-01",
    "tags": ["astronomy", "environment", "geoscience"],
    "description": "Analyzes the size distributions of iron-nickel-sulfur droplets at the nanoscale found in Stardust mission samples from comet 81P/Wild 2, providing insights into cometary formation.",
    "authors": ["nes", "etal"],
    "journal_short": "MaPS",
    "journal_full": "Meteoritics & Planetary Science",
    "volume": "47",
    "issue": "4",
    "pages": "594-612",
    "year": "2012",
    "paper_short_name": "nanoscale_droplets_stardust_comet",
    "doi": "10.1111/j.1945-5100.2012.01347.x",
    "publisher_url": "https://onlinelibrary.wiley.com/doi/10.1111/j.1945-5100.2012.01347.x",
    "arxiv_url": null,
    "aas_citation": "Sanders, N. E., & Velbel, M. A. 2012, Meteorit. Planet. Sci., 47, 594, doi:10.1111/j.1945-5100.2012.01347.x"
  }
]
EOF
)

# Loop through each JSON object and create a markdown file
echo "$json_data" | jq -c '.[]' | while IFS= read -r item; do
  title=$(echo "$item" | jq -r '.title')
  date=$(echo "$item" | jq -r '.date')
  tags_jq=$(echo "$item" | jq -r '.tags | map("\"" + . + "\"") | join(", ")')
  description=$(echo "$item" | jq -r '.description')
  authors_yaml=$(echo "$item" | jq -r '.authors | map("\"" + . + "\"") | join(", ")') # For YAML list
  journal_full=$(echo "$item" | jq -r '.journal_full')
  journal_short=$(echo "$item" | jq -r '.journal_short')
  year=$(echo "$item" | jq -r '.year')
  paper_short_name=$(echo "$item" | jq -r '.paper_short_name')
  doi=$(echo "$item" | jq -r '.doi')
  publisher_url=$(echo "$item" | jq -r '.publisher_url')
  arxiv_url=$(echo "$item" | jq -r '.arxiv_url')
  aas_citation=$(echo "$item" | jq -r '.aas_citation')

  # Sanitize title for filename (basic sanitization)
  filename_slug=$(echo "$paper_short_name" | tr -cs 'a-zA-Z0-9' '_' | tr '_' '-' | iconv -f UTF-8 -t ASCII//TRANSLIT | tr '[:upper:]' '[:lower:]')
  md_filename="${output_dir}/${date}-${filename_slug}.md"

  # ---- Build Markdown Content ----
  read -r -d '' markdown_content_template << EOM || true
---
title: "${title}"
date: ${date}
pin: false
categories: [research, paper]
tags: [${tags_jq}]
description: "${description}"
authors: [${authors_yaml}]
---

*This paper was originally published in ${journal_full} in ${year}.*

A PDF of the paper is available [here]({{"/assets/papers/${year}-${paper_short_name}.pdf" | relative_url }}).

**Full Citation (AAS Style):**
${aas_citation}

**Links:**
- [Publisher's Version](${publisher_url}) (DOI: [${doi}](https://doi.org/${doi}))
EOM

  # Conditionally add arXiv link if it exists and is not "null"
  arxiv_link_markdown=""
  if [[ "$arxiv_url" != "null" && -n "$arxiv_url" ]]; then
    # If DOI for arXiv is the same as main DOI, just link arXiv. Otherwise, could add arXiv's DOI if different.
    # For simplicity, just the link here.
    arxiv_link_markdown=$'\n'"- [arXiv Version](${arxiv_url})"
  fi

  # Combine template parts
  markdown_content="${markdown_content_template}${arxiv_link_markdown}"


  # Write the content to the markdown file
  echo "$markdown_content" > "$md_filename"
  echo "Created: $md_filename"
done

echo "All markdown files generated in $output_dir"
