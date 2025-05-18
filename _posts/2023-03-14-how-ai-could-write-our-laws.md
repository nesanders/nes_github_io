---
title: "How AI could write our laws"
date: 2023-03-14
pin: false
categories: [writing, article]
tags: [democracy, ai, law, regulation, technology review]
description: An article for the Tech Review about how AI could be used to write legislation.
authors: [nes, bruce]
---

*This article was written with [Bruce Schneier](https://www.schneier.com) and originally published at [Technology Review](https://www.technologyreview.com/2023/03/14/1069717/how-ai-could-write-our-laws/) on 2023-03-14.*

<p>
  Nearly
  <a href="https://www.opensecrets.org/federal-lobbying/business-labor-ideological">
      90%
  </a>
    of the multibillion-dollar federal lobbying apparatus in the United States serves corporate interests. In some cases, the objective of that money is obvious. Google
  <a href="https://www.opensecrets.org/news/2023/01/google-continued-to-ramp-up-federal-lobbying-spending-before-doj-filed-second-antitrust-lawsuit">
      pour
  </a>
    s millions into lobbying on bills related to antitrust regulation. Big energy companies expect
  <a href="https://www.citizen.org/article/big-oils-capitol-hill-allies/">
      action
  </a>
    whenever there is a move to end drilling leases for federal lands, in exchange for the tens of millions they contribute to congressional reelection campaigns.
</p>
<p>
  But lobbying strategies are not always so blunt, and the interests involved are not always so obvious.
  <a href="https://www.forrester.com/blogs/10-06-14-office_2010_will_continue_to_succeed_with_consumers/">
      Consider, for example, a 2013
  </a>
  <a href="https://malegislature.gov/Bills/188/H331">
      Massachusetts bill
  </a>
    that tried to restrict the commercial use of data collected from K-12 students using services accessed via the internet. The bill
  <a href="https://www.lowellsun.com/2013/06/27/privacy-bill-seeks-to-protect-students-as-data-shifts-to-the-cloud-2/">
      appealed
  </a>
    to many privacy-conscious education advocates, and appropriately so. But behind the justification of protecting students lay a market-altering policy: the bill was introduced at the
  <a href="https://www.theverge.com/2013/3/7/4074136/microsoft-backs-privacy-bill-tries-to-keep-google-apps-out-of-classroom">
      behest
  </a>
    of Microsoft lobbyists, in an effort to exclude Google Docs from classrooms.
</p>
	
<p>
  What would happen if such legal-but-sneaky strategies for tilting the rules in favor of one group over another become more widespread and effective? We can see hints of an answer in the remarkable pace at which artificial-intelligence tools for everything from
  <a href="https://arstechnica.com/information-technology/2023/01/pivot-to-chatgpt-buzzfeed-preps-for-ai-written-content-while-cnet-fumbles/">
      writing
  </a>
    to
  <a href="https://www.engadget.com/microsoft-designer-dall-e-2-annouced-140007501.html">
      graphic design
  </a>
    are being developed and improved. And the unavoidable conclusion is that AI will make lobbying more guileful, and perhaps more successful.&nbsp;
</p>
<p>
  It turns out there is a natural opening for this technology: microlegislation.
</p>
	



<p>
  &ldquo;Microlegislation&rdquo; is a term for small pieces of proposed law that cater&mdash;sometimes unexpectedly&mdash;to narrow interests. Political scientist Amy McKay coined the term. She
  <a href="https://onlinelibrary.wiley.com/doi/full/10.1111/lsq.12266">
      studied
  </a>
    the 564 amendments to the Affordable Care Act (&ldquo;Obamacare&rdquo;) considered by the Senate Finance Committee in 2009, as well as the positions of 866 lobbying groups and their campaign contributions. She documented instances where lobbyist comments&mdash;on health-care research, vaccine services, and other provisions&mdash;were translated directly into microlegislation in the form of amendments. And she found that those groups&rsquo; financial contributions to specific senators on the committee increased the amendments&rsquo; chances of passing.
</p>
<p>
  Her finding that lobbying works was no surprise. More important, McKay&rsquo;s work demonstrated that computer models can predict the likely fate of proposed legislative amendments, as well as the paths by which lobbyists can most effectively secure their desired outcomes. And that turns out to be a critical piece of creating an AI lobbyist.
</p>
<p>
  Lobbying has long been part of the give-and-take among human policymakers and advocates working to balance their competing interests. The danger of microlegislation&mdash;a danger greatly exacerbated by AI&mdash;is that it can be used in a way that makes it difficult to figure out who the legislation truly benefits.
</p>
<p>
  Another word for a strategy like this is a &ldquo;hack.&rdquo;
  <a href="https://www.schneier.com/books/a-hackers-mind/">
      Hacks
  </a>
    follow the rules of a system but subvert their intent. Hacking is often associated with computer systems, but the concept is also applicable to social systems like financial markets, tax codes, and legislative processes.&nbsp;
</p>
<p>
  While
  <a href="https://www.nytimes.com/2023/01/15/opinion/ai-chatgpt-lobbying-democracy.html">
      the
  </a>
  <a href="https://www.belfercenter.org/publication/we-dont-need-reinvent-our-democracy-save-it-ai">
      idea
  </a>
    of monied interests incorporating AI assistive technologies into their lobbying remains hypothetical,
  <a href="https://arxiv.org/abs/2110.09231">
      specific
  </a>
    machine-learning technologies exist today that would enable them to do so. We should expect these techniques to get better and their utilization to grow, just as we&rsquo;ve seen in so many other domains.
</p>
<p>
  Here&rsquo;s how it might work.
</p>




## Crafting an AI microlegislator
<p>
  To make microlegislation, machine-learning systems must be able to uncover the smallest modification that could be made to a bill or existing law that would make the biggest impact on a narrow interest.&nbsp;
</p>
<p>
  There are three basic challenges involved. First, you must create a
  <em>
      policy proposal&mdash;
  </em>
    small suggested changes to legal text&mdash;and anticipate whether or not a human reader would recognize the alteration as substantive. This is important; a change that isn&rsquo;t detectable is more likely to pass without controversy. Second, you need to do an
  <em>
      impact assessment
  </em>
    to project the implications of that change for the short- or long-range financial interests of companies. Third, you need a
  <em>
      lobbying strategizer
  </em>
    to identify what levers of power to pull to get the best proposal into law.&nbsp;
</p>
<p>
  Existing AI tools can tackle all three of these.
</p>
<p>
  The first step, the
  <em>
      policy proposal
  </em>
    , leverages the core function of
  <a href="https://hbr.org/2022/11/how-generative-ai-is-changing-creative-work">
      generative AI
  </a>
    . Large language models, the sort that have been used for general-purpose chatbots such as ChatGPT, can easily be adapted to write like a native in different specialized domains after seeing a relatively small number of examples. This process is called
  <a href="https://towardsdatascience.com/fine-tuning-for-domain-adaptation-in-nlp-c47def356fd6">
      fine-tuning
  </a>
    . For example, a model &ldquo;pre-trained&rdquo; on a large library of generic text samples from books and the internet can be &ldquo;fine-tuned&rdquo; to work
  <a href="https://arxiv.org/pdf/2109.07460.pdf">
      effectively
  </a>
    on medical literature, computer science papers, and product reviews.&nbsp;
</p>




<p>
  Given this flexibility and capacity for adaptation, a large language model could be fine-tuned to produce draft legislative texts, given a data set of previously offered amendments and the bills they were associated with. Training data is available. At the federal level, it&rsquo;s provided by the
  <a href="https://github.com/usgpo/bill-status">
      US Government Publishing Office
  </a>
    , and there are already
  <a href="https://github.com/unitedstates/congress">
      tools
  </a>
    for downloading and interacting with it. Most other jurisdictions provide similar data feeds, and there are even convenient
  <a href="https://openstates.org/">
      assemblages
  </a>
    of that data.
</p>
<p>
  Meanwhile, large language models like the one underlying ChatGPT are routinely used for
  <a href="https://openai.com/blog/learning-to-summarize-with-human-feedback/">
      summarizing
  </a>
    long, complex documents (even
  <a href="https://ieeexplore.ieee.org/abstract/document/9667640?casa_token=HAr8zwuj334AAAAA:PDG455U0p11bdlUTIaK4CB8_Te3YDO6vmFJIRce6TZ5beNj9GDvACkFxZhbiRoev46Fm8Kx-">
      law
  </a>
    s and
  <a href="https://www.mdpi.com/1517308">
      computer code
  </a>
    ) to capture the essential points, and they are optimized to
  <a href="https://pdf.sciencedirectassets.com/271647/1-s2.0-S0306457319X00047/1-s2.0-S0306457318306241/am.pdf?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEFIaCXVzLWVhc3QtMSJHMEUCIEHIz8m9PfcHuurD2B%2Bv%2F%2FE73giJSMSpNphJVd8ZMbXVAiEA5ePVTkSLkkYmucOK2AhuqC%2F6%2FmgUKGNXepMBO7WBM0kq1QQI2%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FARAFGgwwNTkwMDM1NDY4NjUiDCApXzfpNe6G7i34ZiqpBEcA7UrC%2BTD7Rbag4cxECmSovkANyKyMHC3ppgtp2N0dN1uVOVaASp0rdg%2FGcUo6jOPb8jU57xDNBF2NhlH59%2B0Srhu%2BTd1jqCdaxeMW5iUsvWqzDoAH%2BgXS1uoXQUaOlZKQ9s5aPiJNA3a0XT8KttHeIg2lM0DCaw6E6MFFEM3JGMjZslg%2BI5sBVaz1SRFbyq8LyHdetFfFyFC67jV9quy1MwpZjrb%2FfAya7j%2B7DJpbocsh7ZVe4ZUCjMm6H3twRp3k5JMVFeUrEpZ%2B7ubFcFD39%2BW93vyo%2Fp4Ni13NrEsL9zlGJovRjccoZa37nQTS3QMYALEnwCD1nLle3DQh5hiELWhWKEeasD4u1nQNGEMhaqFHwdfvzoOUnTVWiopIQfx1Ws%2Fh%2FR26yubjm2hJuFRo0OTK4X097URtCui6xd%2B4s6xF%2BRxCuIjPd%2Bapgit%2FzZdS%2F7tRLvKfFprZ9eXD7LobOGvxkH3qffzIsJQ559FvhvQMJUd1Q4cOXRF5kljDdtayV3VxPPbuRV%2FK6jLjaG9yfDPB2Qck8E8S10Phfyp1kxwDcX5WYirjkrVHX0JZbTcywLR68NlowCqCSDlXPPxZBZ0SU1anMIWQm%2B5WHZMZb4ouBMtEEtuGXWybl%2BBQXhdpy4wbIkog%2BUzGQC%2Fs%2Bi85xUn0GDdqXYD4b5HuiLHLB2COFNQQsbGf2aB1b9H6hRPQYDr4h155BZi4amyks%2FKVlb%2B97EiJhe4wh8iknwY6qQEfp2VwKXGgi4aKpLQX2X%2BvS48hNo5uSPLr5FDAl4lwpwQzphA4v73UYUi1PbUbwuGstjE6%2FJFNaGaRR9dGz6RW70bRwDdiKuPdlEu9o1OYz8rWItyFMZgYNPcLConaFQKYUdHms9ir0T%2FA2RCk%2BOa6gt9987dHApcDven0ZVocicCdZdIErwxXxFOmcDLckYhcRwRlt1o2hYLq%2FdCTiXBbDPwhMsFESnqK&amp;X-Amz-Algorithm=AWS4-HMAC-SHA256&amp;X-Amz-Date=20230212T174927Z&amp;X-Amz-SignedHeaders=host&amp;X-Amz-Expires=300&amp;X-Amz-Credential=ASIAQ3PHCVTYXWKOOSUN%2F20230212%2Fus-east-1%2Fs3%2Faws4_request&amp;X-Amz-Signature=273176dbe7b442fca882ac6d4ceeab8586bc8efe39759a446dc5041a16088f09&amp;hash=cfe413234e25dcfae6eb190a8ff22b86981aa94612f841312e4e5f16f9790661&amp;host=68042c943591013ac2b2430a89b270f6af2c76d8dfd086a07176afe7c76c2c61&amp;pii=S0306457318306241&amp;tid=pdf-ded3ca85-6453-4775-a711-090aa298fb4b&amp;sid=253bf41259b7994f58-9b8b-5d07266287a3gxrqa&amp;type=client">
      match
  </a>
    human expectations. This capability could allow an AI assistant to automatically predict
  <a href="https://law.stanford.edu/2023/01/06/large-language-models-as-lobbyists/">
      how detectable
  </a>
    the true effect of a policy insertion may be to a human reader.
</p>
<p>
  Today, it can take a highly paid team of human lobbyists days or weeks to generate and analyze alternative pieces of microlegislation on behalf of a client. With AI assistance, that could be done instantaneously and cheaply. This opens the door to dramatic increases in the scope of this kind of microlegislating, with a potential to scale across any number of bills in any jurisdiction.
</p>
## Teaching machines to assess impact
<p>
  <em>
      Impact assessment
  </em>
    is more complicated. There is a rich series of methods for quantifying the predicted outcome of a decision or policy, and then also optimizing the return under that model. This kind of approach goes by different names in different circles&mdash;
  <a href="https://www.britannica.com/science/mathematical-programming">
      mathematical programming
  </a>
    in management science,
  <a href="https://open.lib.umn.edu/principleseconomics/chapter/7-2-utility-maximization-and-demand/">
      utility maximization
  </a>
    in economics, and
  <a href="https://www.chemistryworld.com/features/rational-or-random/3004752.article">
      rational design
  </a>
    in the life sciences.
</p>




<p>
  To train an AI to do this, we would need to specify some way to calculate the benefit to different parties as a result of a policy choice. That could mean estimating the financial return to different companies under a few different scenarios of taxation or regulation. Economists are skilled at building
  <a href="https://www2.deloitte.com/us/en/insights/industry/financial-services/regulatory-and-compliance-risk-investment-management-firms.html">
      risk models
  </a>
    like this, and companies are already required to formulate and
  <a href="https://deloitte.wsj.com/articles/companies-have-work-to-do-on-risk-disclosures-01616007730">
      disclose
  </a>
    regulatory compliance risk factors to investors. Such a mathematical model could translate directly into a reward function, a grading system that could provide feedback for the model used to create policy proposals and direct the process of training it.
</p>
<p>
  The real challenge in impact assessment for generative AI models would be to parse the textual output of a model like ChatGPT in terms that an economic model could readily use. Automating this would require extracting structured financial information from the draft amendment or any legalese surrounding it. This kind of
  <a href="https://arxiv.org/pdf/2206.10498.pdf">
      information extraction
  </a>
    , too, is an area where AI has a long history; for example, AI systems have been trained to recognize
  <a href="https://arxiv.org/pdf/2205.12689.pdf">
      clinical details
  </a>
    in doctors&rsquo; notes. Early indications are that large language models are
  <a href="https://onlinelibrary.wiley.com/doi/full/10.1111/1911-3846.12832?casa_token=sU4-egfArQMAAAAA%3A7QgTYu1KSSvnFHl7_tT3_hH7zK1TGuz4vD5sXLKV_EWJQhfEonbFdOSBP3QK6LLOqYSkGIxYwrFY9GU">
      fairly good
  </a>
    at recognizing financial information in texts such as investor call transcripts. While it remains an open
  <a href="https://arxiv.org/pdf/2206.10498.pdf">
      challenge
  </a>
    in the field, they may even be
  <a href="https://arxiv.org/pdf/2106.07131.pdf">
      capable
  </a>
    of writing out multi-step plans based on descriptions in free text.
</p>
## Machines as strategists
<p>
  The last piece of the puzzle is a
  <em>
      lobbying strategizer
  </em>
    to figure out what actions to take to convince lawmakers to adopt the amendment.
</p>
<p>
  Passing legislation requires a keen understanding of the complex interrelated networks of legislative offices, outside groups, executive agencies, and other stakeholders vying to serve their own interests. Each actor in this network has a baseline perspective and different factors that influence that point of view. For example, a legislator may be moved by seeing an allied stakeholder take a firm position, or by a negative news story, or by a campaign contribution.
</p>
<p>
  It turns out that AI developers are very experienced at modeling these kinds of networks. Machine-learning models for network graphs have been built, refined, improved, and iterated by hundreds of researchers working on incredibly
  <a href="https://ieeexplore.ieee.org/abstract/document/9046288?casa_token=Wpc3xYo0S-8AAAAA:6xoh4X4oGIhejkv8Z3jz5gScKW-sZjQh_YmPorb23YrmiRiZSOCiIt7nRQBcaYwwQqN-nANv">
      diverse
  </a>
    problems: lidar scans used to guide self-driving cars, the chemical functions of molecular structures, the capture of motion in actors&rsquo; joints for computer graphics, behaviors in social networks, and more.
</p>
<p>
  In the
  <a href="https://arxiv.org/abs/2110.09231">
      context
  </a>
    of AI-assisted lobbying, political actors like legislators and lobbyists are nodes on a graph, just like users in a social network. Relations between them are graph edges, like social connections. Information can be passed along those edges, like messages sent to a friend or campaign contributions made to a member. AI models can use past examples to learn to estimate how that information changes the network. Calculating the likelihood that a campaign contribution of a given size will flip a legislator&rsquo;s vote on an amendment is one application.
</p>




<p>
  McKay&rsquo;s work has already shown us that there are significant, predictable relationships between these actions and the outcomes of legislation, and that the work of discovering those can be automated. Others have
  <a href="https://arxiv.org/pdf/2210.08362.pdf">
      shown
  </a>
    that graphs of neural network models like those described above can be applied to political systems. The full-scale use of these technologies to guide lobbying strategy is theoretical, but plausible.
</p>
<p>
  Put together, these three components could create an automatic system for generating profitable microlegislation. The policy proposal system would create millions, even billions, of possible amendments. The impact assessor would identify the few that promise to be most profitable to the client. And the lobbying strategy tool would produce a blueprint for getting them passed.
</p>




<p>
  What remains is for human lobbyists to walk the floors of the Capitol or state house, and perhaps supply some cash to grease the wheels. These final two aspects of lobbying&mdash;access and financing&mdash;cannot be supplied by the AI tools we envision. This suggests that lobbying will continue to primarily benefit those who are already influential and wealthy, and AI assistance will amplify their existing advantages.&nbsp;
</p>
<p>
  The transformative benefit that AI offers to lobbyists and their clients is scale. While individual lobbyists
  <a href="https://www.opensecrets.org/news/reports/layers-of-lobbying/state-and-federal-lobbying">
      tend
  </a>
    to focus on the federal level or a single state, with AI assistance they could more easily infiltrate a large number of state-level (or even local-level) law-making bodies and elections. At that level, where the
  <a href="https://ballotpedia.org/Comparing_campaign_finance_data_in_state_elections,_2018-2020">
      average
  </a>
    cost of a seat is measured in the tens of thousands of dollars instead of millions, a single donor can wield a lot of influence&mdash;if automation makes it possible to coordinate lobbying across districts.
</p>
## How to stop them
<p>
  When it comes to combating the potentially adverse effects of assistive AI, the first response always seems to be to try to
  <a href="https://www.theguardian.com/technology/2023/feb/01/chatgpt-maker-openai-releases-ai-generated-content-detection-tool">
      detect
  </a>
    whether or not content was AI-generated. We could imagine a defensive AI that detects anomalous lobbyist spending associated with amendments that benefit the contributing group. But by then, the damage might already be done.
</p>
<p>
  In general,
  <a href="https://arxiv.org/abs/2210.07321">
      methods
  </a>
    for detecting the work of AI tend not to keep pace with its ability to generate convincing content. And these strategies won&rsquo;t be implemented by AIs alone. The lobbyists will still be humans who take the results of an AI microlegislator and further refine the computer&rsquo;s strategies. These hybrid human-AI systems will not be detectable from their output.
</p>
<p>
  But the good news is: the same strategies that have long been used to combat misbehavior by human lobbyists can still be effective when those lobbyists get an AI assist. We don&rsquo;t need to
  <a href="https://www.belfercenter.org/publication/we-dont-need-reinvent-our-democracy-save-it-ai">
      reinvent
  </a>
    our democracy to stave off the worst risks of AI; we just need to more fully implement long-standing ideals.
</p>
<p>
  First, we should reduce the dependence of legislatures on monolithic, multi-thousand-page omnibus bills voted on under deadline. This style of legislating
  <a href="https://link.springer.com/chapter/10.1007/978-3-030-72748-2_2">
      exploded
  </a>
    in the 1980s and 1990s and continues through to the most recent federal
  <a href="https://thehill.com/finance/3781895-what-made-the-cut-in-congress-4155-page-1-7-trillion-funding-bill-and-what-didnt/">
      budget bill
  </a>
    . Notwithstanding their legitimate
  <a href="https://www.brookings.edu/blog/fixgov/2021/03/17/earmarks-are-back-and-americans-should-be-glad/">
      benefits
  </a>
    to the political system, omnibus bills present an obvious and
  <a href="https://advance.sagepub.com/articles/preprint/Earmarks_Motivation_for_the_U_S_Congress_Continued_Use_of_Omnibus_Appropriations_Bills_in_the_Budget_Process/7361252/1">
      proven
  </a>
    vehicle for inserting unnoticed provisions that may later surprise the same legislators who approved them.
</p>




<p>
  The issue is not that individual legislators need more time to read and understand each bill (that isn&rsquo;t realistic or even
  <a href="https://www.pennstatelawreview.org/penn-statim/dont-be-silly-lawmakers-rarely-read-legislation-and-oftentimes-dont-understand-it-but-thats-okay/">
      necessary
  </a>
    ). It&rsquo;s that omnibus bills
  <em>
      must pass
  </em>
    . There is an imperative to pass a federal budget bill, and so the capacity to push back on individual provisions that may seem
  <a href="https://slate.com/news-and-politics/2018/03/the-winners-and-losers-in-congress-giant-spending-bill.html">
      deleterious
  </a>
    (or just
  <a href="https://www.marketplace.org/2014/01/14/surprise-6-items-still-omnibus-budget-bill/">
      impertinent
  </a>
    ) to any particular group is small. Bills that are too big to fail are ripe for hacking by microlegislation.
</p>
<p>
  Moreover, the
  <em>
      incentive
  </em>
    for legislators to introduce microlegislation catering to a narrow interest is greater if the threat of exposure is lower. To strengthen the threat of exposure for misbehaving legislative sponsors, bills should focus more tightly on individual substantive areas and, after the introduction of amendments, allow more time before the committee and floor votes. During this time, we should encourage public review and testimony to provide greater oversight.&nbsp;
</p>




<p>
  Second, we should strengthen disclosure requirements on lobbyists, whether they&rsquo;re entirely human or AI-assisted. State laws regarding lobbying disclosure are a hodgepodge. North Dakota, for example, only
  <a href="https://www.ndlegis.gov/cencode/T54C05-1.pdf?20141006070144">
      requires
  </a>
    lobbying reports to be filed annually, so that by the time a disclosure is made, the policy is likely already decided. A lobbying disclosure
  <a href="https://www.opensecrets.org/news/reports/layers-of-lobbying/lobbying-scorecard">
      scorecard
  </a>
    created by Open Secrets, a group researching the influence of money in US politics, tracks nine states that do not even require lobbyists to report their compensation.
</p>
<p>
  Ideally, it would be great for the public to see all communication between lobbyists and legislators, whether it takes the form of a proposed amendment or not. Absent that, let&rsquo;s give the public the benefit of reviewing whatlobbyists are lobbying for&mdash;and why. Lobbying is traditionally an activity that happens behind closed doors. Right now, many states reinforce that: they actually
  <a href="https://www.ncsl.org/ethics/how-states-define-lobbying-and-lobbyist">
      exempt
  </a>
    testimony delivered publicly to a legislature from being reported as lobbying.&nbsp;
</p>
<p>
  In those jurisdictions, if you reveal your position to the public, you&rsquo;re no longer lobbying. Let&rsquo;s do the inverse: require lobbyists to reveal their positions on issues. Some jurisdictions already
  <a href="https://leg.mt.gov/bills/mca/title_0050/chapter_0070/part_0020/section_0080/0050-0070-0020-0080.html">
      require
  </a>
    a statement of position (a &lsquo;yea&rsquo; or &lsquo;nay&rsquo;) from registered lobbyists. And in most (but
  <a href="https://www.wgbh.org/news/commentary/2020/07/16/let-the-sun-shine-in-its-time-to-end-the-legislative-exemption-to-the-states-public-records-law">
      not all
  </a>
    ) states, you could make a public records request regarding meetings held with a state legislator and
  <a href="https://journals.flvc.org/civic/article/view/129756/132010">
      hope
  </a>
    to get something substantive back. But we can expect more&mdash;lobbyists could be required to proactively publish, within a few days, a brief summary of what they demanded of policymakers during meetings and why they believe it&rsquo;s in the general interest.
</p>
<p>
  We can&rsquo;t rely on corporations to be forthcoming and wholly honest about the reasons behind their lobbying positions. But having them on the record about their intentions would at least provide a baseline for accountability.
</p>
<p>
  Finally, consider the role AI assistive technologies may have on lobbying firms themselves and the labor market for lobbyists. Many observers are rightfully
  <a href="https://www.forbes.com/sites/jackkelly/2021/06/18/artificial-intelligence-has-caused--50-to-70-decrease-in-wages-creating-income-inequality-and-threatening-millions-of-jobs/?sh=24afe2131009">
      concerned
  </a>
    about the possibility of AI replacing or devaluing the human labor it automates. If the automating potential of AI ends up commodifying the work of political strategizing and message development, it may indeed put some professionals on K Street out of work.&nbsp;
</p>
<p>
  But don&rsquo;t expect that to disrupt the careers of the most
  <a href="https://www.citizen.org/article/revolving-congress/">
      astronomical
  </a>
    ly compensated lobbyists: former members Congress and other insiders who have passed through the
  <a href="https://www.vox.com/2019/6/19/18683550/capitol-hill-revolving-door-in-one-chart">
      revolving door
  </a>
    . There is no shortage of
  <a href="https://www.brookings.edu/blog/techtank/2021/11/04/should-congress-close-the-revolving-door-in-the-technology-industry/">
      reform ideas
  </a>
    for limiting the ability of government officials turned lobbyists to sell access to their colleagues still in government, and they should be adopted and&mdash;equally
  <a href="https://www.opensecrets.org/news/2021/01/biden-ethics-rules-aim-to-curtail-revolvingdoor/">
      important&mdash;maintained and enforced in successive Congresses and administrations.
  </a>
</p>
<p>
  None of these solutions are really original, specific to the threats posed by AI, or even predominantly focused on microlegislation&mdash;and that&rsquo;s the point. Good governance should and can be robust to threats from a variety of techniques and actors.
</p>
<p>
  But what makes the risks posed by AI especially pressing now is how fast the field is developing. We expect the scale, strategies, and effectiveness of humans engaged in lobbying to evolve over years and decades. Advancements in AI, meanwhile, seem to be making impressive breakthroughs at a much faster pace&mdash;and it&rsquo;s still accelerating.
</p>
<p>
  The legislative process is a constant struggle between parties trying to control the rules of our society as they are updated, rewritten, and expanded at the federal, state, and local levels. Lobbying is an important tool for balancing various interests through our system. If it&rsquo;s well-regulated,
  <a href="https://www.oecd-ilibrary.org/sites/8b6ec100-en/index.html?itemId=/content/component/8b6ec100-en">
      perhaps
  </a>
    lobbying can support policymakers in making equitable decisions on behalf of us all.
</p>


