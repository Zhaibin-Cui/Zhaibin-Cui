<div align="center">

<h1>Hi, I'm Zhaibin 👋</h1>

<p><strong>Understanding language models—from internal mechanisms to real-world value.</strong></p>

<p>
  My current interest is to turn the black-box behavior of LLMs into concrete,
  testable questions about <b>what they learn</b>, <b>where it is represented</b>,
  and <b>how it becomes computation</b>.
</p>

<p>
  <img src="https://img.shields.io/badge/LLM-Mechanisms-6F42C1?style=flat&labelColor=F6F8FA" alt="LLM Mechanisms" />
  <img src="https://img.shields.io/badge/Method-Controlled%20Experiments-0969DA?style=flat&labelColor=F6F8FA" alt="Controlled Experiments" />
  <img src="https://img.shields.io/badge/Goal-Useful%20%26%20Reliable%20AI-1A7F37?style=flat&labelColor=F6F8FA" alt="Useful and Reliable AI" />
</p>

<p>
  <a href="https://scholar.google.com/citations?user=oftkKp4AAAAJ&hl=en">Google Scholar</a>
  &nbsp;·&nbsp;
  <a href="https://orcid.org/0009-0003-9545-5031">ORCID</a>
</p>

</div>

## 🟡 Contribution arcade

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/Zhaibin-Cui/Zhaibin-Cui/output/pacman-contribution-graph-dark.svg?v=4">
  <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/Zhaibin-Cui/Zhaibin-Cui/output/pacman-contribution-graph.svg?v=4">
  <img alt="Pac-Man eating my GitHub contribution graph" src="https://raw.githubusercontent.com/Zhaibin-Cui/Zhaibin-Cui/output/pacman-contribution-graph.svg?v=4" width="100%">
</picture>

<div align="center">
  <sub>🧩 Understand the parts. 🧪 Test the mechanism. 🔭 Explain the behavior.</sub>
</div>

## 🔬 Why I work on language models

LLMs are already useful, but much of their behavior is still explained after the fact. I am uncomfortable treating an impressive output as the end of the investigation. I want to know **what the model has learned, how that information is represented and transformed, why a capability emerges, and under which conditions it breaks**.

My current interest is the internal structure of language models: the interaction among data, representations, reasoning processes, and architecture. I am particularly drawn to research that connects observable behavior to internal computation and produces conclusions that remain meaningful across model scales—not just on one checkpoint or benchmark.

```text
behavior → hypothesis → controlled evidence → mechanism → better models
```

Understanding and usefulness are not competing goals. A clearer account of how models store knowledge, perform hidden reasoning, generalize, and fail can inform better choices in data construction, training, architecture, evaluation, and deployment. I want mechanistic understanding to eventually translate into models that are **more capable, efficient, predictable, and useful in real systems**.

This direction is strongly inspired by [Physics of Language Models](https://physics.allen-zhu.com/home): decompose intelligence into measurable components, isolate causal factors through controlled training environments, and search for principles that generalize beyond a particular model generation. I am especially interested in its studies of [hidden reasoning](https://physics.allen-zhu.com/part-2-grade-school-math/part-2-1), [knowledge storage and extraction](https://physics.allen-zhu.com/part-3-knowledge/part-3-1), and [architecture design](https://physics.allen-zhu.com/part-4-architecture-design/part-4-1).

## 🧭 Technical journey
I am currently a Ph.D. candidate at the Institute for Interdisciplinary Information Sciences (IIIS), Tsinghua University.

My background spans quantum information, experimental physics, programmable hardware, control software, distributed quantum systems, and learning-based visual models. In quantum research, I have developed not only a strong understanding of the underlying physics and information theory, but also the engineering ability to build complete systems across the hardware–software stack, from experimental electronics and real-time control to system software and distributed protocols.

My work on learning-based visual models has further shaped my interest in mechanism-driven algorithm design. Rather than relying primarily on empirical trial and error, I aim to understand how large models represent, process, and integrate information, and then use those insights to design more principled network architectures and learning algorithms. This perspective now guides how I approach large language models: I care both about the mechanisms inside individual components and about how those components can be engineered into an efficient, reliable, and valuable end-to-end system.


- 🧠 **LLM systems · MiniTrainSys** — Building [MiniTrainSys](https://github.com/Zhaibin-Cui/mini-train-sys), a compact, benchmark-first LLM pretraining system that progresses from readable PyTorch baselines to Triton and CUDA kernels, fused operators, distributed training, and reproducible performance analysis. The project also serves as a controlled platform for studying hierarchical structure learning, knowledge acquisition and manipulation, latent reasoning, generalization, and architecture-dependent inductive biases of LLM.
- 👁️ **Vision models · PaGE** — Contributed to [PaGE: Towards Practical Human-level Gaze Target Estimation](https://PaGE-26.github.io), which combines scene-level semantic understanding with precise spatial reasoning and distills a large teacher into practical student models. [Paper](https://arxiv.org/abs/2607.04860)
- 🌐 **Distributed quantum networks** — Worked on architectures and experiments for functional quantum-network nodes, including multiplexed quantum links, long-distance ion–photon interfaces, and programmable quantum memories. [Publications on Google Scholar](https://scholar.google.com/citations?user=oftkKp4AAAAJ&hl=en)
- 🧩 **RISC-V on FPGA** — Contributed to a Turing-complete electronic control-system architecture built around a RISC-V processor on FPGA, supporting programmable low-level timing and control for quantum experiments.
- ⚛️ **Experimental quantum computing** — Built experience across hardware control, experimental workflows, and system-level integration before moving my primary research attention toward language models.

## 🛠️ How I like to work

- **Understand before optimizing.** I prefer explanations grounded in evidence over convenient stories about model behavior. When a result matters, I want to trace it back to the data, representation, optimization process, or architectural choice that produced it.
- **Connect research with impact.** I care about whether an insight changes how we train, evaluate, or deploy models—not only whether it is intellectually satisfying.
- **Think across the stack.** My experience with FPGA control, quantum-network systems, and vision models taught me to move between implementation details and system-level objectives.
- **Build for scrutiny.** I value readable implementations, reproducible measurements, and claims that can survive ablations, scale changes, and failure-case analysis.

I enjoy ambitious problems, but I do not like leaving important behavior at “it seems to work.” The part I find most rewarding is turning that uncertainty into a precise question—and then into an answer that helps build something better.
