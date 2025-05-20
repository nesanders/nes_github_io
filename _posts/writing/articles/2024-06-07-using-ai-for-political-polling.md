---
title: "Using AI for Political Polling"
date: 2024-06-07
pin: false
categories: [writing, article]
tags: [democracy, ai, elections, polling, ash center]
description: A blog post for the Ash Center about how AI will change political polling.
authors: [nes, bruce, egong, aberger]
---

*This article was written with [Bruce Schneier](https://www.schneier.com) and originally published at [Harvard Ash Center](https://ash.harvard.edu/articles/using-ai-for-political-polling/) on 2024-06-07.*

<p>
  Public polling is a critical function of modern political campaigns and movements, but it isn&rsquo;t what it once was. Recent US election cycles have&nbsp;
  <a href="https://www.theatlantic.com/ideas/archive/2020/11/polling-catastrophe/616986/">
    produced
  </a>
  &nbsp;
  <a href="https://www.pewresearch.org/short-reads/2016/11/09/why-2016-election-polls-missed-their-mark/">
    copious
  </a>
  &nbsp;
  <a href="https://www.pewresearch.org/methods/2021/03/02/what-2020s-election-poll-errors-tell-us-about-the-accuracy-of-issue-polling/#:~:text=Most%20preelection%20polls%20in%202020,close%20when%20it%20was%20not.">
    postmortems
  </a>
  &nbsp;explaining both the successes and the flaws of public polling. There are two main reasons polling fails.
</p>
<p>
  First, nonresponse has skyrocketed. It&rsquo;s radically harder to reach people than it used to be. Few people fill out surveys that come in the mail anymore. Few people answer their phone when a stranger calls. Pew Research&nbsp;
  <a href="https://www.pewresearch.org/short-reads/2019/02/27/response-rates-in-telephone-surveys-have-resumed-their-decline/">
    reported
  </a>
  &nbsp;that 36% of the people they called in 1997 would talk to them, but only 6% by 2018. Pollsters worldwide have faced similar challenges.
</p>
<p>
  Second, people don&rsquo;t always tell pollsters what they really think. Some hide their true thoughts because they are embarrassed about them. Others behave as a partisan, telling the pollster what they think their&nbsp;
  <a href="https://ed.stanford.edu/sites/default/files/party_over_policy_0.pdf">
    party
  </a>
  &nbsp;wants them to say &ndash; or what they know the other party doesn&rsquo;t want to hear.
</p>
<p>
  Despite these frailties, obsessive interest in polling nonetheless consumes our politics. Headlines more likely tout the latest changes in polling numbers than the policy issues at stake in the campaign. This is a tragedy for a democracy. We should treat elections like choices that have consequences for our lives and well-being, not contests to decide who gets which cushy job.
</p>

##  Polling Machines?

<p>
  AI could change polling. AI can offer the ability to instantaneously survey and summarize the expressed opinions of individuals and groups across the web, understand trends by demographic, and offer extrapolations to new circumstances and policy issues on par with human experts. The politicians of the (near) future won&rsquo;t anxiously pester their pollsters for information about the results of a survey fielded last week: they&rsquo;ll just ask a chatbot what people think. This will supercharge our access to realtime, granular information about public opinion, but at the same time it might also exacerbate concerns about the quality of this information.
</p>
<p>
  I know it sounds impossible, but stick with us.
</p>
<p>
  Large language models, the AI foundations behind tools like ChatGPT, are built on top of huge corpuses of data culled from the Internet. These are models trained to recapitulate what millions of real people have written in response to endless topics, contexts, and scenarios. For a decade or more, campaigns have trawled social media, looking for hints and glimmers of how people are reacting to the latest political news. This makes asking questions of an AI chatbot similar in spirit to doing analytics on social media, except that they are generative: you can ask them new questions that no one has ever posted about before, you can generate more data from populations too small to measure robustly, and you can immediately ask clarifying questions of your simulated constituents to better understand their reasoning
</p>
<p>
  <a href="https://news.byu.edu/intellect/can-ai-predict-how-youll-vote-in-the-next-election-byu-study-says-yes">
    Researchers
  </a>
  &nbsp;and&nbsp;
  <a href="https://www.research-live.com/article/news/signoi-develops-ai-persona-research-offer/id/5119963">
    firms
  </a>
  &nbsp;are already using LLMs to simulate polling results. Current techniques are based on the ideas of AI agents. An AI agent is an instance of an AI model that has been conditioned to behave in a certain way. For example, it may be primed to respond as if it is a person with certain demographic characteristics and can access news articles from certain outlets. Researchers have set up populations of thousands of AI agents that respond as if they are individual members of a survey population, like humans on a panel that get called periodically to answer questions.
</p>
<p>
  The big difference between humans and AI agents is that the AI agents always pick up the phone, so to speak, no matter how many times you contact them. A political candidate or strategist can ask an AI agent whether voters will support them if they take position A versus B, or tweaks of those options, like policy A-1 versus A-2. They can ask that question of male voters versus female voters. They can further limit the query to married male voters of retirement age in rural districts of Illinois without college degrees who lost a job during the last recession; the AI will integrate as much context as you ask.
</p>
<p>
  What&rsquo;s so powerful about this system is that it can generalize to new scenarios and survey topics, and spit out a plausible answer, even if its accuracy is not guaranteed. In many cases, it will anticipate those responses at least as well as a human political expert. And if the results don&rsquo;t make sense, the human can immediately prompt the AI with a dozen follow-up questions.
</p>

##  Making AI agents better polling subjects

<p>
  When we ran our&nbsp;
  <a href="https://hdsr.mitpress.mit.edu/pub/dm2hrtx0/release/1">
    own experiments
  </a>
  &nbsp;in this kind of AI use case with the earliest versions of the model behind ChatGPT (GPT-3.5), we found that it did a fairly good job at replicating human survey responses. The ChatGPT agents tended to match the responses of their human counterparts fairly well across a variety of survey questions, such as support for abortion and approval of the US Supreme Court. The AI polling results had average responses, and distributions across demographic properties such as age and gender, similar to real human survey panels.
</p>
<p>
  Our major systemic failure happened on a question about US intervention in the Ukraine war. In our experiments, the AI agents conditioned to be liberal were predominantly opposed to US intervention in Ukraine and likened it to the Iraq war. Conservative AI agents gave hawkish responses supportive of US intervention. This is pretty much what most political experts would have expected of the political equilibrium in US foreign policy at the start of the decade but was exactly wrong in the politics of today.
</p>
<p>
  This mistake has everything to do with timing. The humans were asked the question after Russia&rsquo;s full-scale invasion in 2022, whereas the AI model was trained using data that only covered events through September 2021. The AI got it wrong because it didn&rsquo;t know how the politics had changed. The model lacked sufficient context on crucially relevant recent events.
</p>
<p>
  We believe AI agents can overcome these shortcomings. While AI models are dependent on the data they are trained with, and all the limitations inherent in that, what makes AI agents special is that they can automatically source and incorporate new data at the time they are asked a question. AI models can update the context in which they generate opinions by learning from the same sources that humans do. Each AI agent in a simulated panel can be exposed to the same social and media news sources as humans from that same demographic before they respond to a survey question. This works because AI agents can follow multi-step processes, such as reading a question, querying a defined database of information (such as Google, or the&nbsp;
  <em>
    New York Times,
  </em>
  &nbsp;or Fox News, or Reddit), and then answering a question.
</p>
<p>
  In this way, AI polling tools can simulate exposing their synthetic survey panel to whatever news is most relevant to a topic and likely to emerge in each AI agent&rsquo;s own echo chamber. And they can query for other relevant contextual information, such as demographic trends and historical data. Like human pollsters, they can try to refine their expectations on the basis of factors like how expensive homes are in a respondent&rsquo;s neighborhood, or how many people in that district turned out to vote last cycle.
</p>

##  Likely use cases for AI polling

<p>
  AI polling will be irresistible to campaigns, and to the media. But research is already revealing when and where this tool will fail. While AI polling will always have limitations in accuracy, that makes them similar to, not different from, traditional polling. Today&rsquo;s pollsters are challenged to reach sample sizes large enough to measure statistically significant differences between similar populations, and the issues of nonresponse and inauthentic response can make them systematically wrong. Yet for all those shortcomings, both traditional and AI-based polls will still be useful. For all the hand-wringing and consternation over the accuracy of US political polling, national issue surveys still tend to be&nbsp;
  <a href="https://www.pewresearch.org/short-reads/2022/09/21/does-public-opinion-polling-about-issues-still-work/">
    accurate
  </a>
  &nbsp;to within a few percentage points. If you&rsquo;re running for a town council seat or in a neck-and-neck national election, or just trying to make the right policy decision within a local government, you might care a lot about those small and localized differences. But if you&rsquo;re looking to track directional changes over time, or differences between demographic groups, or to uncover insights about who responds best to what message, then these imperfect signals are sufficient to help campaigns and policymakers.
</p>
<p>
  Where AI will work best is as an augmentation of more traditional human polls. Over time, AI tools will get better at anticipating human responses, and also at knowing when they will be most wrong or uncertain. They will recognize which issues and human communities are in the most flux, where the model&rsquo;s training data is liable to steer it in the wrong direction. In those cases, AI models can send up a white flag and indicate that they need to engage human respondents to calibrate to real people&rsquo;s perspectives. The AI agents can even be programmed to automate this. They can use existing survey tools&mdash;with all their limitations and latency&mdash;to query for authentic human responses when they need them.
</p>
<p>
  This kind of human&ndash;AI polling chimera lands us, funnily enough, not too distant from where survey research is today. Decades of social science research has led to substantial innovations in statistical methodologies for analyzing survey data. Current polling methods already do substantial modeling and projecting to predictively model properties of a general population based on sparse survey samples. Today, humans fill out the surveys and computers fill in the gaps. In the future, it will be the opposite: AI will fill out the survey and, when the AI isn&rsquo;t sure what box to check, humans will fill the gaps. So if you&rsquo;re not comfortable with the idea that political leaders will turn to a machine to get intelligence about which candidates and policies you want, then you should have about as many misgivings about the present as you will the future.
</p>
<p>
  And while the AI results could improve quickly, they probably won&rsquo;t be seen as credible for some time. Directly asking people what they think feels more reliable than asking a computer what people think. We expect these AI-assisted polls will be initially used internally by campaigns, with news organizations relying on more traditional techniques. It will take a major election where AI is right and humans are wrong to change that.
</p>
