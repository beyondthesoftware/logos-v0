const adapterData = {
  Codex: {
    copy: "Run the Codex installer from the repo root. Logos appears as four skills: core plus three overlays.",
    code: ".\\adapters\\codex\\install.ps1"
  },
  ChatGPT: {
    copy: "Load the core instruction and the ChatGPT adapter into custom instructions or a GPT configuration.",
    code: "core/SKILL.md + adapters/chatgpt/CHATGPT.md"
  },
  "Custom GPT": {
    copy: "Copy the link, paste into your browser, start chatting. Yep, it's that simple.",
    code: "https://chatgpt.com/g/g-6a3411f523c88191a40133cdf16132e1-logos"
  },
  "Claude Code": {
    copy: "Copy the Claude adapter into a project as CLAUDE.md so Claude starts with Logos before it works.",
    code: "adapters/claude-code/CLAUDE.md"
  },
  OpenClaw: {
    copy: "Point the OpenClaw installer at your skills directory and install the core plus overlays.",
    code: ".\\adapters\\openclaw\\install.ps1 -OpenClawSkillsPath \"...\""
  }
};

const adapterButtons = document.querySelectorAll("[data-adapter]");
const adapterTitle = document.querySelector("[data-adapter-title]");
const adapterCopy = document.querySelector("[data-adapter-copy]");
const adapterCode = document.querySelector("[data-adapter-code]");

adapterButtons.forEach((button) => {
  button.addEventListener("click", () => {
    const name = button.dataset.adapter;
    const data = adapterData[name];

    adapterButtons.forEach((item) => item.classList.remove("is-active"));
    button.classList.add("is-active");

    adapterTitle.textContent = name;
    adapterCopy.textContent = data.copy;
    adapterCode.textContent = data.code;
  });
});

const stage = document.querySelector("[data-loop-stage]");

if (stage && !window.matchMedia("(prefers-reduced-motion: reduce)").matches) {
  stage.addEventListener("pointermove", (event) => {
    const rect = stage.getBoundingClientRect();
    const x = ((event.clientX - rect.left) / rect.width - 0.5) * 8;
    const y = ((event.clientY - rect.top) / rect.height - 0.5) * 8;
    stage.style.transform = `perspective(900px) rotateX(${-y}deg) rotateY(${x}deg)`;
  });

  stage.addEventListener("pointerleave", () => {
    stage.style.transform = "perspective(900px) rotateX(0deg) rotateY(0deg)";
  });
}
