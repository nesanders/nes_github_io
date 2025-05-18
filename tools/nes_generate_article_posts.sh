#!/bin/bash

# Output directory for Jekyll posts
OUTPUT_DIR="jekyll_posts"
mkdir -p "$OUTPUT_DIR"

# Jekyll post template
# Using 'EOF' (with quotes) prevents variable expansion in the here-document itself
read -r -d '' TEMPLATE <<'EOF'
---
title: "__title__"
date: __publication_date__
pin: false
categories: [writing, article]
tags: [__tags__]
description:
image:
  path:
  alt:
---

*This article was written with [Bruce Schneier](https://www.schneier.com) and originally published at *[__outlet__](__link__)* on __publication_date__.
EOF

# Function to generate a Jekyll post file
# Arguments: title, publication_date, outlet, link, tags_string
generate_post_file() {
  local title="$1"
  local pub_date="$2"
  local outlet="$3"
  local link="$4"
  local tags_string="$5"

  # Slugify the title for the filename
  # 1. Transliterate to ASCII (e.g., café -> cafe)
  # 2. Replace non-alphanumeric characters with a hyphen
  # 3. Remove leading/trailing hyphens
  # 4. Convert to lowercase
  local slug
  slug=$(echo "$title" | iconv -t ascii//TRANSLIT | sed -E 's/[^a-zA-Z0-9]+/-/g' | sed -E 's/^-+|-+$//g' | tr '[:upper:]' '[:lower:]')

  # Fallback if slug is empty (e.g., title was all special characters)
  if [[ -z "$slug" ]]; then
    slug="article-$(date +%s%N | sha256sum | base64 | head -c 8)" # Unique fallback slug
  fi

  # Limit slug length to prevent overly long filenames (e.g., max 60 chars for slug part)
  slug="${slug:0:60}"
  # Remove trailing hyphen again if cut off
  slug=$(echo "$slug" | sed -E 's/-+$//g')


  local filename="${pub_date}-${slug}.md"
  local filepath="$OUTPUT_DIR/$filename"

  # Replace placeholders in the template
  # Using parameter expansion for safety and efficiency
  local content="$TEMPLATE"
  content="${content//__title__/$title}" # Titles with quotes should be handled by Jekyll
  content="${content//__publication_date__/$pub_date}"
  content="${content//__outlet__/$outlet}"
  content="${content//__link__/$link}"
  content="${content//__tags__/$tags_string}"

  echo "$content" > "$filepath"
  echo "Generated: $filepath"
}

# --- Call generate_post_file for each article with extracted data ---

generate_post_file "Why US States Are the Best Labs for Public AI" "2025-01-01" "Tech Policy Press" "https://www.techpolicy.press/why-us-states-are-the-best-labs-for-public-ai/" "democracy, ai, policy, public ai"
generate_post_file "It’s Time to Worry About DOGE’s AI Plans" "2025-02-01" "The Atlantic" "https://www.theatlantic.com/technology/archive/2025/02/doge-ai-plans/681635/" "ai, llms, ethics"
generate_post_file "AI Will Write Complex Laws" "2025-01-01" "Lawfare" "https://www.lawfaremedia.org/article/ai-will-write-complex-laws" "democracy, ai, law, regulation"
generate_post_file "AI Mistakes Are Very Different Than Human Mistakes" "2025-01-01" "IEEE Spectrum" "https://spectrum.ieee.org/ai-mistakes-schneier" "ai, ethics, safety"
generate_post_file "The apocalypse that wasn’t (AI in 2024 elections)" "2024-01-01" "The Conversation" "https://theconversation.com/the-apocalypse-that-wasnt-ai-was-everywhere-in-2024s-elections-but-deepfakes-and-misinformation-were-only-part-of-the-picture-244225" "democracy, ai, elections, misinformation"
generate_post_file "The apocalypse that wasn’t (AI in 2024 elections)" "2024-01-01" "The Seattle Post Intelligencer" "https://www.seattlepi.com/news/article/the-apocalypse-that-wasn-t-ai-was-everywhere-19953208.php" "democracy, ai, elections, misinformation"
generate_post_file "AI Was Everywhere in 2024 Elections, but the Sky Didn’t Fall" "2024-01-01" "CommonWealth Beacon" "https://commonwealthbeacon.org/opinion/ai-was-everywhere-in-2024-elections-but-the-sky-didnt-fall/" "democracy, ai, elections"
generate_post_file "The apocalypse that wasn’t (AI in 2024 elections)" "2024-01-01" "Yahoo! News" "https://www.yahoo.com/news/apocalypse-wasn-t-ai-everywhere-133736834.html" "democracy, ai, elections, misinformation"
generate_post_file "AI Futures / \"The AI We Deserve\"" "2024-09-01" "Boston Review" "https://www.bostonreview.net/issue/fall-2024/" "democracy, ai, futures, ethics"
generate_post_file "The Wired World in 2025: Algorithms are Coming for Democracy--But It's Not All Bad" "2024-01-01" "WIRED" "https://www.wired.com/story/algorithms-are-coming-for-democracy-but-its-not-all-bad/" "democracy, ai, algorithms"
generate_post_file "The SEC Whistleblower Program Is Dominating Regulatory Enforcementa" "2024-10-18" "American Prospect" "https://prospect.org/power/2024-10-18-sec-whistleblower-payouts-ai/" "ai, regulation, finance, sec"
generate_post_file "America Needs Better Laws for AI in Political Advertising" "2024-09-01" "The Atlantic" "https://www.theatlantic.com/technology/archive/2024/09/ai-election-ads-regulation/680010/" "democracy, ai, elections, regulation"
generate_post_file "Using AI for Political Polling" "2024-01-01" "Harvard Ash Center" "https://ash.harvard.edu/articles/using-ai-for-political-polling/" "democracy, ai, elections, polling"
generate_post_file "Let’s Not Make the Same Mistakes with AI That We Made With Social Media." "2024-03-13" "Technology Review" "https://www.technologyreview.com/2024/03/13/1089729/lets-not-make-the-same-mistakes-with-ai-that-we-made-with-social-media/" "ai, social media, ethics, policy"
generate_post_file "How public AI can strengthen democracy." "2024-01-01" "Brookings" "https://www.brookings.edu/articles/how-public-ai-can-strengthen-democracy/" "democracy, ai, public ai"
generate_post_file "How the “Frontier” Became the Slogan of Uncontrolled AI." "2024-02-01" "Jacobin" "https://jacobin.com/2024/02/artificial-intelligence-frontier-colonialism" "ai, ethics, policy, critique"
generate_post_file "Who's accountable for AI usage in digital campaign ads? Right now, no one." "2023-01-01" "Harvard Ash Center" "https://ash.harvard.edu/who%E2%80%99s-accountable-ai-usage-digital-campaign-ads-right-now-no-one" "democracy, ai, elections, accountability"
generate_post_file "The A.I. Wars Have Three Factions, and They All Crave Power" "2023-09-28" "New York Times" "https://www.nytimes.com/2023/09/28/opinion/ai-safety-ethics-effective.html" "ai, ethics, safety, power"
generate_post_file "AI Could Reshape Climate Communication" "2023-01-01" "Eos Magazine (AGU)" "https://eos.org/opinions/ai-could-reshape-climate-communication" "ai, climate, communication"
generate_post_file "Nervous About ChatGPT? Try ChatGPT With a Hammer" "2023-01-01" "Wired" "https://www.wired.com/story/does-chatgpt-make-you-nervous-try-chatgpt-with-a-hammer/" "ai, llms, chatgpt, ethics"
generate_post_file "Six ways that AI could change politics" "2023-07-28" "Technology Review" "https://www.technologyreview.com/2023/07/28/1076756/six-ways-that-ai-could-change-politics/" "democracy, ai, politics"
generate_post_file "Can you trust AI? Here's why you shouldn't" "2023-01-01" "The Conversation" "https://theconversation.com/can-you-trust-ai-heres-why-you-shouldnt-209283" "ai, ethics, trust"
generate_post_file "Can you trust AI? Here's why you shouldn't" "2023-07-01" "The MinnPost" "https://www.minnpost.com/community-voices/2023/07/can-you-trust-ai-heres-why-you-shouldnt/" "ai, ethics, trust"
generate_post_file "Can you trust AI? Here's why you shouldn't" "2023-07-24" "Rhode Island Current" "https://rhodeislandcurrent.com/2023/07/24/can-you-trust-ai-heres-why-you-shouldnt/" "ai, ethics, trust"
generate_post_file "Can you trust AI? Here's why you shouldn't" "2023-01-01" "Yahoo! News" "https://www.yahoo.com/news/trust-ai-why-shouldn-t-160310492.html" "ai, ethics, trust"
generate_post_file "AI could shore up democracy – here’s one way" "2023-01-01" "The Conversation" "https://theconversation.com/ai-could-shore-up-democracy-heres-one-way-207278" "democracy, ai"
generate_post_file "Actually, AI Could Be Good For Democracy" "2023-06-01" "Asia Times" "https://asiatimes.com/2023/06/actually-ai-could-be-good-for-democracy/" "democracy, ai"
generate_post_file "Could AI shore up democracy by raising up constituent voices?" "2023-06-01" "The MinnPost" "https://www.minnpost.com/community-voices/2023/06/could-ai-shore-up-democracy-by-raising-up-constituent-voices/" "democracy, ai"
generate_post_file "Build AI by the People, for the People" "2023-06-12" "Foreign Policy" "https://foreignpolicy.com/2023/06/12/ai-regulation-technology-us-china-eu-governance/?tpcc=recirc_latest062921" "democracy, ai, regulation, governance"
generate_post_file "Can We Build Trustworthy AI?" "2023-05-04" "Gizmodo" "https://gizmodo.com/ai-chatgpt-can-we-build-trustworthy-ai-1850405280?rev=1683225902283" "ai, ethics, trust, chatgpt"
generate_post_file "Just Wait Until Trump Is a Chatbot" "2023-04-01" "The Atlantic" "https://www.theatlantic.com/technology/archive/2023/04/ai-generated-political-ads-election-candidate-voter-interaction-transparency/673893/" "democracy, ai, elections, llms"
generate_post_file "How Artificial Intelligence Can Aid Democracy" "2023-04-01" "Slate" "https://slate.com/technology/2023/04/ai-public-option.html" "democracy, ai, public ai"
generate_post_file "How AI could write our laws" "2023-03-14" "Technology Review" "https://www.technologyreview.com/2023/03/14/1069717/how-ai-could-write-our-laws/" "democracy, ai, law, regulation"
generate_post_file "We Don’t Need to Reinvent our Democracy to Save it from AI" "2023-01-01" "Belfer Center for Science and International Affairs" "https://www.belfercenter.org/publication/we-dont-need-reinvent-our-democracy-save-it-ai" "democracy, ai"
generate_post_file "How ChatGPT Hijacks Democracy" "2023-01-15" "New York Times" "https://www.nytimes.com/2023/01/15/opinion/ai-chatgpt-lobbying-democracy.html" "democracy, ai, llms, chatgpt"
generate_post_file "Does Media Coverage of Mass Public Shootings Create a Contagion Effect?" "2021-01-01" "Significance Magazine" "https://doi.org/10.1111/1740-9713.01610" "media, public safety, research"
generate_post_file "Sewage: An Environmental Justice Tragedy" "2021-02-05" "MyRWA News" "https://mysticriver.org/news/2021/2/5/sewage-an-environmental-justice-tragedy" "environment, justice"
generate_post_file "Communicating Your Science With Help From ComSciCon" "2018-07-01" "addgene blog" "https://blog.addgene.org/communicating-your-science-with-help-from-comscicon" "science communication"
generate_post_file "Astrobites Communicating Science 2013 Workshop" "2013-03-01" "Inside Higher Ed / GradHacker" "https://www.insidehighered.com/blog/9441" "science communication, workshop"
generate_post_file "Astrobites: Students Making Astrophysics Accessible" "2013-01-01" "Scientific American / Incubator" "https://blogs.scientificamerican.com/incubator/astrobites-students-making-astrophysics-accessible/" "science communication, astrophysics, education"
generate_post_file "The Unique Universe of Astronomy Grads" "2011-07-01" "GradHacker" "http://www.gradhacker.org/2011/07/01/the-unique-universe-of-astronomy-grads/" "science communication, academia, astronomy"
generate_post_file "How to succeed at engaging the public" "2011-05-01" "Physics Today" "http://www.physicstoday.org/daily_edition/points_of_view/1.2541078" "science communication, public engagement"

echo "All Jekyll posts generated in $OUTPUT_DIR directory."
