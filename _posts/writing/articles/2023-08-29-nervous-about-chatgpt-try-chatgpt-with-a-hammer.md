---
title: "Nervous About ChatGPT? Try ChatGPT With a Hammer"
date: 2023-08-29
pin: false
categories: [writing, article]
tags: [ai, wired, agentic]
authors: [nes, bruce]
description: An article for Wired about the then-coming generation of tool-using, agentic AI.
---

*This article was written with [Bruce Schneier](https://www.schneier.com) and originally published at [Wired](https://www.wired.com/story/does-chatgpt-make-you-nervous-try-chatgpt-with-a-hammer/) on 2023-01-01.*


<p>
  Last March, just&nbsp;two weeks after
  <a href="https://www.wired.com/story/gpt-4-openai-will-make-chatgpt-smarter-but-wont-fix-its-flaws/" target="_blank">
      GPT-4 was released
  </a>
    , researchers at Microsoft quietly
  <a href="https://arxiv.org/abs/2303.16434" target="_blank" rel="nofollow noopener">
      announced
  </a>
    a plan to compile millions of APIs&mdash;tools that can do everything from ordering a pizza to solving physics equations to controlling the TV in your living room&mdash;into a compendium that would be made accessible to large language models (LLMs). This was just one milestone in the race across industry and academia to find the
  <a href="https://arxiv.org/abs/2305.11554" target="_blank" rel="nofollow noopener">
      best
  </a>
  <a href="https://arxiv.org/abs/2303.09014" target="_blank" rel="nofollow noopener">
      ways
  </a>
  <a href="https://arxiv.org/abs/2304.08244" target="_blank" rel="nofollow noopener">
      to
  </a>
  <a href="https://arxiv.org/abs/2304.09842" target="_blank" rel="nofollow noopener">
      teach
  </a>
  <a href="https://arxiv.org/pdf/2307.16789.pdf" target="_blank" rel="nofollow noopener">
      LLMs
  </a>
    how to manipulate tools, which would supercharge the potential of AI more than any of the impressive advancements we&rsquo;ve seen to date.
</p>
<p>
  The Microsoft project aims to teach AI how to use any and all digital tools in one fell swoop, a clever and efficient approach. Today, LLMs can do a pretty
  <a href="https://medium.com/vcrsoft/pizza-ordering-using-chatgpt-effe6e29cd58" target="_blank">
      good job
  </a>
    of recommending pizza toppings to you if you describe your dietary preferences and can draft
  <a href="https://medium.com/vcrsoft/chatgpt-simulation-of-pizza-ordering-bot-with-contingency-2nd-try-abae06ceaef0" target="_blank">
      dialog
  </a>
    that you could use when you call the restaurant. But most AI tools can&rsquo;t place the order, not even online. In contrast, Google&rsquo;s seven-year-old
  <a href="https://www.theverge.com/2021/4/14/22382754/google-duplex-web-assistant-online-food-orders-android" target="_blank">
      Assistant
  </a>
    tool can synthesize a voice on the telephone and fill out an online order form, but it can&rsquo;t pick a restaurant or guess your order. By combining these capabilities, though, a tool-using AI could do it all. An LLM with access to your past conversations and tools like calorie calculators, a restaurant menu database, and your digital payment wallet could feasibly judge that you are trying to lose weight and want a low-calorie option, find the nearest restaurant with toppings you like, and place the delivery order. If it has access to your payment history, it could even guess at how generously you usually tip. If it has access to the sensors on your smartwatch or fitness tracker, it might be able to sense when your blood sugar is low and order the pie before you even realize you&rsquo;re hungry.
</p>
<p>
  Perhaps the most compelling potential applications of tool use are those that give AIs the ability to improve themselves. Suppose, for example, you asked a chatbot for help interpreting some facet of ancient Roman law that no one had thought to include examples of in the model&rsquo;s original training. An LLM empowered to search academic databases and trigger its own training process could fine-tune its understanding of Roman law before answering. Access to specialized tools could even help a model like this better explain itself. While LLMs like GPT-4 already do a fairly good job of explaining their reasoning when asked, these explanations emerge from a &ldquo;black box&rdquo; and are vulnerable to errors and
  <a href="https://theconversation.com/both-humans-and-ai-hallucinate-but-not-in-the-same-way-205754" target="_blank" rel="nofollow noopener">
      hallucinations
  </a>
    . But a tool-using LLM could
  <a href="https://openai.com/research/language-models-can-explain-neurons-in-language-models" target="_blank" rel="nofollow noopener">
      dissect
  </a>
    its own internals, offering empirical assessments of its own reasoning and deterministic explanations of why it produced the answer it did.
</p>
<p>
  If given access to tools for soliciting human feedback, a tool-using LLM could even generate specialized knowledge that isn&rsquo;t yet captured on the web. It could post a question to Reddit or Quora or delegate a task to a human on Amazon&rsquo;s Mechanical Turk. It could even seek out data about human preferences by doing survey research, either to provide an answer directly to you or to fine-tune its own training to be able to better answer questions in the future. Over time, tool-using AIs might start to look a lot like tool-using humans. An LLM can generate code much faster than any human programmer, so it can manipulate the systems and services of your computer with ease. It could also use your computer&rsquo;s keyboard and cursor the way a person would, allowing it to use any program you do. And it could improve its own capabilities, using tools to ask questions, conduct research, and write code to incorporate into itself.
</p>
<p>
  It&rsquo;s easy to see how this kind of tool use comes with tremendous risks. Imagine an LLM being able to find someone&rsquo;s phone number, call them and surreptitiously record their voice, guess what bank they use based on the largest providers in their area, impersonate them on a phone call with customer service to reset their password, and liquidate their account to make a donation to a political party. Each of these tasks invokes a simple tool&mdash;an internet search, a voice synthesizer, a bank app&mdash;and the LLM scripts the sequence of actions using the tools.
</p>
<p>
  We don&rsquo;t yet know how successful any of these attempts will be. As remarkably fluent as LLMs are, they weren&rsquo;t built specifically for the purpose of operating tools, and it remains to be seen how their early successes in tool use will translate to future use cases like the ones described here. As such, giving the current generative AI sudden access to millions of APIs&mdash;as Microsoft plans to&mdash;could be a little like letting a toddler loose in a weapons depot.
</p>
<p>
  Companies like Microsoft should be particularly careful about granting AIs access to certain combinations of tools. Access to tools to look up information, make specialized calculations, and examine real-world sensors all carry a modicum of risk. The ability to transmit messages beyond the immediate user of the tool or to use APIs that manipulate physical objects like locks or machines carries much larger risks. Combining these categories of tools amplifies the risks of each.
</p>
<p>
  The operators of the most advanced LLMs, such as OpenAI, should continue to proceed cautiously as they begin enabling tool use should
  <a href="https://www.semafor.com/article/05/17/2023/openai-shut-down-dc-companys-pitch-to-apply-chatgpt-to-politics" target="_blank" rel="nofollow noopener">
      restrict
  </a>
    uses of their products in sensitive domains such as politics, health care, banking, and defense. But it seems clear that these industry leaders have already largely lost their
  <a href="https://www.semianalysis.com/p/google-we-have-no-moat-and-neither" target="_blank" rel="nofollow noopener">
      moat
  </a>
    around LLM technology&mdash;open source is catching up.
  <a href="https://about.fb.com/news/2023/07/llama-2/" target="_blank" rel="nofollow noopener">
      Recognizing
  </a>
    this trend, Meta has taken an &ldquo;If you can&rsquo;t beat &rsquo;em, join &rsquo;em&rdquo; approach and
  <a href="https://spectrum.ieee.org/open-source-llm-not-open" target="_blank" rel="nofollow noopener">
      partially
  </a>
    embraced the role of providing open source LLM platforms.
</p>
<p>
  On the policy front, national&mdash;and regional&mdash;AI prescriptions seem futile.
  <a href="https://www.europarl.europa.eu/news/en/headlines/society/20230601STO93804/eu-ai-act-first-regulation-on-artificial-intelligence" target="_blank">
      Europe
  </a>
    is the only significant jurisdiction that has made meaningful progress on regulating the responsible use of AI, but it&rsquo;s not entirely clear how regulators will
  <a href="https://www.brookings.edu/articles/key-enforcement-issues-of-the-ai-act-should-lead-eu-trilogue-debate/" target="_blank">
      enforce
  </a>
    it. And the US is playing catch-up and seems destined to be much more permissive in allowing even risks deemed &ldquo;
  <a href="https://www.justsecurity.org/87344/the-perils-and-promise-of-ai-regulation/" target="_blank" rel="nofollow noopener">
      unacceptable
  </a>
    &rdquo; by the EU. Meanwhile, no government has invested in a &ldquo;
  <a href="https://foreignpolicy.com/2023/06/12/ai-regulation-technology-us-china-eu-governance/" target="_blank">
      public option
  </a>
    &rdquo; AI model that would offer an alternative to Big Tech that is more responsive and accountable to its citizens.
</p>
<p>
  Regulators should consider what AIs are allowed to do autonomously, like whether they can be assigned property ownership or register a business. Perhaps more sensitive transactions should require a verified human in the loop, even at the cost of some added friction. Our legal system may be imperfect, but we largely know how to hold humans accountable for misdeeds; the trick is not to let them shunt their responsibilities to artificial third parties. We should continue pursuing AI-specific regulatory solutions while also recognizing that they are not sufficient on their own.
</p>
<p>
  <p>
  </p>
</p>
<p>
  We must also prepare for the benign ways that tool-using AI might impact society. In the best-case scenario, such an LLM may rapidly accelerate a field like drug discovery, and the patent office and FDA should prepare for a dramatic increase in the number of legitimate drug candidates. We should reshape how we interact with our governments to take advantage of AI tools that give us all dramatically more potential to have our
  <a href="https://theconversation.com/ai-could-shore-up-democracy-heres-one-way-207278" target="_blank" rel="nofollow noopener">
      voices
  </a>
    heard. And we should make sure that the economic benefits of superintelligent, labor-saving AI are
  <a href="https://jacobin.com/2023/03/ai-artificial-intelligence-art-chatgpt-jobs-capitalism" target="_blank" rel="nofollow noopener">
      equitably
  </a>
    distributed.
</p>
<p>
  We can debate whether LLMs are truly intelligent or conscious, or have agency, but AIs will become increasingly capable tool users either way. Some things are greater than the sum of their parts. An AI with the ability to manipulate and interact with even simple tools will become vastly more powerful than the tools themselves. Let&rsquo;s be sure we&rsquo;re ready for them.
</p>
