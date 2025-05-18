---
title: "Can We Build Trustworthy AI?"
date: 2023-05-04
pin: false
categories: [writing, article]
tags: [ai, trust, chatgpt, gizmodo]
description: An article for Gizmodo about how to live in a world with untrustworthy AI.
authors: [bruce, nes]
---

*This article was written with [Bruce Schneier](https://www.schneier.com) and originally published at [Gizmodo](https://gizmodo.com/ai-chatgpt-can-we-build-trustworthy-ai-1850405280?rev=1683225902283) on 2023-05-04.*

<p>
	We will all soon get into the habit of using AI tools for help with everyday problems and tasks. We should get in the habit of questioning the motives, incentives, and capabilities behind them, too.
</p>
<p>
	Imagine you&rsquo;re using an AI chatbot to plan a vacation. Did it suggest a particular resort because it knows your preferences, or because the company is getting a&nbsp;
	<a href="https://www.theverge.com/2023/3/29/23662476/microsoft-bing-chatbot-ads-revenue-sharing">
		kickback
	</a>
	&nbsp;from the hotel chain? Later, when you&rsquo;re using another AI chatbot to learn about a complex economic issue, is the chatbot reflecting your politics or the politics of the company that trained it?
</p>
<p>
	For AI to truly be our assistant, it needs to be trustworthy. For it to be trustworthy, it must be under our control; it can&rsquo;t be working behind the scenes for some tech monopoly. This means, at a minimum, the technology needs to be transparent. And we all need to understand how it works, at least a little bit.
</p>
<p>
	Amid the myriad warnings about&nbsp;
	<a href="https://www.nytimes.com/2023/02/16/technology/bing-chatbot-microsoft-chatgpt.html">
		creepy
	</a>
	&nbsp;risks to well-being, threats to&nbsp;
	<a href="https://www.nytimes.com/2023/01/15/opinion/ai-chatgpt-lobbying-democracy.html">
		democracy
	</a>
	, and even&nbsp;
	<a href="https://nickbostrom.com/papers/vulnerable.pdf">
		existential
	</a>
	&nbsp;doom that have accompanied stunning recent developments in artificial intelligence (AI)&mdash;and large language models (LLMs) like&nbsp;
	<a href="https://gizmodo.com/chat-gpt-openai-ai-finance-ai-everything-we-know-1850018307">
		ChatGPT
	</a>
	&nbsp;and&nbsp;
	<a href="https://gizmodo.com/chatbot-gpt4-open-ai-ai-bing-microsoft-1850229989">
		GPT-4
	</a>
	&mdash;one optimistic vision is abundantly clear: this technology is useful. It can help you find information, express your thoughts, correct errors in your writing, and much more. If we can navigate the pitfalls, its assistive benefit to humanity could be epoch-defining. But we&rsquo;re not there yet.
</p>
<p>
	Let&rsquo;s pause for a moment and imagine the possibilities of a trusted AI assistant. It could write the first draft of anything: e-mails, reports, essays, even&nbsp;
	<a href="https://www.cnn.com/2023/04/12/tech/chatgpt-wedding-vows/index.html">
		wedding vows
	</a>
	. You would have to give it background information and edit its output, of course, but that draft would be written by a model trained on your personal beliefs, knowledge, and style. It could act as your tutor, answering questions interactively on topics you want to learn about&mdash;in the manner that suits you best and taking into account what you already know. It could assist you in planning, organizing, and communicating: again, based on your personal preferences. It could advocate on your behalf with third parties: either other humans or other bots. And it could moderate conversations on social media for you, flagging misinformation, removing hate or trolling, translating for speakers of different languages, and keeping discussions on topic; or even mediate conversations in physical spaces, interacting through speech recognition and synthesis capabilities.
</p>
<p>
	Today&rsquo;s AIs aren&rsquo;t up for the task. The problem isn&rsquo;t the technology&mdash;that&rsquo;s advancing faster than even the&nbsp;
	<a href="https://arxiv.org/pdf/2206.04132.pdf">
		experts had guessed
	</a>
	&mdash;it&rsquo;s who owns it. Today&rsquo;s AIs are primarily created and run by large technology companies, for their benefit and profit. Sometimes we are permitted to interact with the chatbots, but they&rsquo;re never truly ours. That&rsquo;s a conflict of interest, and one that destroys trust.
</p>
<p>
	The transition from awe and eager utilization to suspicion to disillusionment is a well worn one in the technology sector. Twenty years ago, Google&rsquo;s search engine&nbsp;
	<a href="https://www.fool.com/investing/general/2013/05/20/google-stock-buy-it-and-hold-it-for-life.aspx">
		rapidly
	</a>
	&nbsp;rose to monopolistic dominance because of its transformative information retrieval capability. Over time, the company&rsquo;s dependence on revenue from search advertising led them to&nbsp;
	<a href="https://theconversation.com/is-google-getting-worse-increased-advertising-and-algorithm-changes-may-make-it-harder-to-find-what-youre-looking-for-166966">
		degrade
	</a>
	&nbsp;that capability. Today, many observers&nbsp;
	<a href="https://www.technologyreview.com/2021/05/14/1024918/language-models-gpt3-search-engine-google/">
		look forward
	</a>
	&nbsp;to the death of the search paradigm entirely. Amazon has walked the same path, from honest marketplace to one riddled with&nbsp;
	<a href="https://www.msn.com/en-us/news/technology/it-e2-80-99s-not-your-imagination-shopping-on-amazon-has-gotten-worse/ar-AA14sg4o">
		lousy products
	</a>
	&nbsp;whose vendors have&nbsp;
	<a href="https://www.vox.com/recode/2022/11/10/23450349/amazon-advertising-everywhere-prime-sponsored-products">
		paid
	</a>
	&nbsp;to have the company show them to you. We can do better than this. If each of us are going to have an AI assistant helping us with essential activities daily and even advocating on our behalf, we each need to know that it has our interests in mind. Building trustworthy AI will require systemic change.
</p>
<p>
	First, a trustworthy AI system must be controllable by the user. That means that the model should be able to run on a user&rsquo;s owned electronic devices (perhaps in a&nbsp;
	<a href="https://github.com/mlc-ai/web-llm">
		simplified
	</a>
	&nbsp;form) or within a cloud service that they control. It should show the user how it responds to them, such as when it makes queries to search the web or external services, when it directs other software to do things like sending an email on a user&rsquo;s behalf, or modifies the user&rsquo;s&nbsp;
	<a href="https://simonwillison.net/2023/Apr/14/worst-that-can-happen/">
		prompt
	</a>
	s to better express what the company that made it thinks the user wants. It should be able to explain its reasoning to users and cite its sources. These requirements are all well within the technical capabilities of AI systems.
</p>
<p>
	Furthermore, users should be in control of the data used to train and fine-tune the AI system. When modern LLMs are built, they are first trained on massive,&nbsp;
	<a href="https://www.washingtonpost.com/technology/interactive/2023/ai-chatbot-learning/?itid=hp-top-table-main_p001_f004">
		generic corpora
	</a>
	&nbsp;of textual data typically sourced from across the Internet. Many systems go a step further by&nbsp;
	<a href="https://platform.openai.com/docs/guides/fine-tuning">
		fine-tuning
	</a>
	&nbsp;on more specific datasets purpose built for a narrow application, such as speaking in the language of a&nbsp;
	<a href="https://arxiv.org/abs/2303.14070">
		medical doctor
	</a>
	, or&nbsp;
	<a href="https://www.sfchronicle.com/projects/2021/jessica-simulation-artificial-intelligence/">
		mimicking
	</a>
	&nbsp;the manner and style of their individual user. In the near future, corporate AIs will be routinely fed your data, probably without your awareness or your consent. Any trustworthy AI system should transparently allow users to control what data it uses.
</p>
<p>
	Many of us would welcome an AI-assisted writing application fine tuned with knowledge of which edits we have accepted in the past and which we did not. We would be more skeptical of a chatbot knowledgeable about which of their search results led to purchases and which did not.
</p>
<p>
	You should also be informed of what an AI system can do on your behalf. Can it access other apps on your phone, and the data stored with them? Can it retrieve information from external sources, mixing your inputs with details from other places you may or may not trust? Can it send a message in your name (hopefully based on your input)? Weighing these types of risks and benefits will become an inherent part of our daily lives as AI-assistive tools become integrated with everything we do.
</p>
<p>
	Realistically, we should all be preparing for a world where AI is not trustworthy. Because AI tools can be so incredibly useful, they will increasingly pervade our lives, whether we trust them or not. Being a digital citizen of the next quarter of the twenty-first century will require learning the basic ins and outs of LLMs so that you can assess their risks and limitations for a given use case. This will better prepare you to take advantage of AI tools, rather than be taken advantage by them.
</p>
<p>
	In the world&rsquo;s first few months of widespread use of models like ChatGPT, we&rsquo;ve learned a lot about how AI creates risks for users. Everyone has heard by now that LLMs &ldquo;hallucinate,&rdquo; meaning that they make up &ldquo;facts&rdquo; in their outputs, because their predictive text generation systems are not constrained to fact check their own emanations. Many users&nbsp;
	<a href="https://www.engadget.com/chatgpt-briefly-went-offline-after-a-bug-revealed-user-chat-histories-115632504.html">
		learned
	</a>
	&nbsp;in March that information they submit as prompts to systems like ChatGPT may not be kept private after a bug revealed users&rsquo; chats. Your chat histories are stored in systems that may be insecure.
</p>
<p>
	Researchers have found&nbsp;
	<a href="https://arxiv.org/abs/2302.12173">
		numerous
	</a>
	&nbsp;
	<a href="https://www.lesswrong.com/posts/bNCDexejSZpkuu3yz/you-can-use-gpt-4-to-create-prompt-injections-against-gpt-4">
		clever
	</a>
	&nbsp;
	<a href="https://www.wired.com/story/chatgpt-jailbreak-generative-ai-hacking/">
		ways
	</a>
	&nbsp;to trick chatbots into breaking their safety controls; these work largely because many of the &ldquo;rules&rdquo; applied to these systems are soft, like&nbsp;
	<a href="https://www.theverge.com/23599441/microsoft-bing-ai-sydney-secret-rules">
		instructions
	</a>
	&nbsp;given to a person, rather than hard, like coded limitations on a product&rsquo;s functions. It&rsquo;s as if we are trying to keep AI safe by asking it nicely to drive carefully, a hopeful instruction, rather than taking away its keys and placing definite constraints on its abilities.
</p>
<p>
	These risks will grow as companies grant chatbot systems more capabilities. OpenAI is providing developers wide&nbsp;
	<a href="https://openai.com/blog/chatgpt-plugins">
		access
	</a>
	&nbsp;to build tools on top of GPT: tools that give their AI systems access to your email, to your personal account information on websites, and to computer code. While OpenAI is applying safety protocols to these integrations, it&rsquo;s not hard to imagine those being relaxed in a drive to make the tools more useful. It seems likewise inevitable that other companies will come along with less bashful strategies for securing AI market share.
</p>
<p>
	Just like with any human, building trust with an AI will be hard won through interaction over time. We will need to test these systems in different contexts, observe their behavior, and build a mental model for how they will respond to our actions. Building trust in that way is only possible if these systems are transparent about their capabilities, what inputs they use and when they will share them, and whose interests they are evolving to represent.&nbsp;
</p>
