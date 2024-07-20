# 现代Beamer主题——METROPOLIS

[TOC]

# 1	介绍

Beamer 是使用 LaTeX 制作演示文稿的绝佳方式，但它的主题选择却少得令人吃惊。库存主题的美感可能有些杂乱，而少数几个与众不同的自定义主题通常是为特定企业或机构品牌专门设计的。

METROPOLIS 的目标是提供一个适合任何人使用的简单、现代的 Beamer 主题。它尽量减少噪音，为内容留出最大空间；唯一的视觉装饰是在每张幻灯片或章节幻灯片上添加一个进度条（可选）。

默认情况下，METROPOLIS 使用由 Mozilla 委托 Carrois 设计的华丽字体 Fira Sans。为获得最佳效果，您需要安装 Fira 字体，并使用 XELATEX 对幻灯片进行排版。不过，METROPOLIS 也可以与其他字体和 LaTeX​ 构建系统一起使用。

METROPOLIS 的代码库在 GitHub 上维护。如果您有问题、发现手册中的错误或希望帮助改进主题，请与我们联系。完整的贡献者名单已经包含了十几个名字！

# 2	入门

## 2.1	从 CTAN 安装 

对于大多数用户，我们建议从 CTAN 安装 METROPOLIS。如果您的 TEX 发行版是最新的，那么很可能已经安装了 METROPOLIS。如果没有，则需要更新软件包。如果您的发行版是 TEX Live（或 OS X 上的 MacTEX），可使用以下命令更新所有软件包。

```
tlmgr update --all
```

如果出现错误，可能需要以管理权限运行：

```
sudo tlmgr update --all
```

OS X 上的 MacTEX 还为 tlmgr 提供了一个图形界面，名为 TEX Live Utility。对于其他发行版，请参考其文档了解如何更新软件包。要充分利用该主题，您还应安装 Fira 字体。不过，这并不是必须的；大都会也可以使用标准字体。

## 2.2	从 GitHub 安装

如果您想使用最先进的开发版 METROPOLIS，可以手动安装。与其他 LATEX 软件包一样，这需要四个简单的步骤： 

1. 从 METROPOLIS 仓库的 `git clone` 或最新开发版本的 zip 压缩包中下载源代码。
2. 在下载目录下运行 `make sty`，编译样式文件。(或直接在 `source/METROPOLIStheme.ins` 上运行 LATEX。）
3. 将生成的 `*.sty` 文件移到包含演示文稿的文件夹中。要在多个演示文稿中使用 METROPOLIS，可运行 `make install` 或将 `*.sty` 文件移至 TEX 路径下的文件夹。
4. 在 Beamer 文档的前言中声明 `\usetheme{METROPOLIS}` ，在演示文稿中使用该主题。

METROPOLIS使用Make构建系统为高级用户提供以下安装选项：

1. `make sty` 构建主题样式文件。
2. `make doc` 构建本文档手册。
3. `make demo` 构建演示文稿以测试METROPOLIS的功能。
4. `make all` 构建主题和手册。
5. `make clean` 删除make all生成的文件。
6. `make install` 将主题安装到本地的 `texmf` 文件夹中。
7. `make uninstall` 从本地的 `texmf` 文件夹中删除主题。

## 2.3	一个最简单的例子

下面的代码展示了一个使用 METROPOLIS 进行 Beamer 演示的最小示例。

```latex
\documentclass{beamer}
\usetheme{METROPOLIS} % 使用 METROPOLIS 主题
\title{A minimal example}
\date{\today}
\author{Matthias Vogelgesang}
\institute{Centre for Modern Beamer Themes}
\begin{document}
	\maketitle
	\section{First Section}
	\begin{frame}{First Frame}
	Hello, world!
	\end{frame}
\end{document}
```

## 2.4	依赖关系

METROPOLIS 依赖于 beamer 类和以下标准软件包： 

tikz, pgfopts, etoolbox, calc, ifxetex, ifluatex

为获得最佳效果，我们建议安装 Fira Sans 和 Fira Mono 字体，并使用 XELATE X 或 LuaTEX 与 METROPOLIS 一起编译。这些都是可选的依赖项；METROPOLIS 与（例如）pdfLATE X 兼容，如果没有安装 Fira Sans 或 Fira Mono，则会退回到标准字体。在某些 Linux 发行版中，Fira Sans 的打包名称是 Fira Sans OT；METROPOLIS 会自动处理这种情况。

## 2.5	Pandoc

要在基于 Pandoc 的演示文稿中使用该主题，可以运行以下命令

```
$ pandoc -t beamer --latex-engine=xelatex -V theme: METROPOLIS -o output.pdf input.md 
```

# 3	定制

## 3.1	软件包选项

主题提供了许多选项，这些选项可以通过 key=value 接口进行设置。设置选项的主要方法是在加载大都会时，在前言中提供一个逗号分隔的选项值对列表：

```
\usetheme[option1=value1, option2=value2, ...]{METROPOLIS}
```

可以随时更改选项，甚至可以在演示过程中更改！——使用 \metroset 宏。

```
\metroset{option1=newvalue1, option2=newvalue2, ...}
```

选项列表的结构如下例所示。

1. 选择键
2. 可能值列表
3. 默认
4. 该选项的简短说明

### 3.1.1	主题

#### titleformat

1. titleformat
2. regular, smallcaps, allsmallcaps, allcaps
3. regular
4. 更改标题、字幕、章节标题、帧标题和突出帧上文本的格式。可用选项可生成常规、小写、全小写或 ALLCAPS 标题。有关这些选项的已知问题，请参阅第 6.1 节。

#### titleformat plain

1. titleformat plain
2. regular, smallcaps, allsmallcaps, allcaps
3. regular
4. 更改突出帧的格式（见上文 **titleformat**）。

### 3.1.2	内在主题

#### sectionpage

1. sectionpage
2. none, simple, progressbar
3. progressbar
4. 在每个部分的开始添加一个幻灯片（**simple**），并在部分标题（**progressbar**）下方添加一个可选的细进度条。**none** 选项将禁用章节页面。

#### subsectionpage

1. subsectionpage
2. none, simple, progressbar
3. none
4. 可选择在每个分节的开头添加一个幻灯片。如果使用 **simple** 或 **progressbar** 选项启用，**subsectionpage** 的样式将更新为与 **sectionpage** 的样式一致。请注意，如果同时启用小节幻灯片和分节幻灯片，它们可以连续出现；根据演示文稿的小节结构，您可能需要将此选项与 `sectionpage=none` 一起使用。

### 3.1.3	外在主题

#### numbering

1. numbering
2. none, counter, fraction
3. counter
4. 控制每张幻灯片右下方的帧数是省略（**none**）、显示（**counter**）还是显示为总帧数的一部分（**fraction**）。

#### progressbar

1. progressbar
2. none, head, frametitle, foot
3. none
4. 可选择在每个帧的顶部（**head**）、底部（**foot**）或帧标题（**frametitle**）的正下方添加进度条。

### 3.1.4	颜色主题

#### block

1. block
2. transparent, fill
3. transparent
4. 可为 **theorem** 和 **example** 等区块环境添加浅灰色背景。

#### background

1. background
2. dark, light
3. light
4. 提供深色背景和浅色前景的选项，而不是相反。

### 3.1.5	字体主题

#### titleformat title

1. titleformat title, titleformat subtitle, titleformat section, titleformat frame
2. regular, smallcaps, allsmallcaps, allcaps
3. regular
4. 单独控制标题、字幕、节标题和帧标题的格式（见上文 **titleformat**）。

## 3.2	颜色定制

默认情况下使用的是附带的大都会颜色主题，但也可以根据自己的喜好轻松更改颜色。该主题的所有样式都是根据三种光束颜色定义的：

1. 正常文本（深色字体、浅色字体）
2. 提示文本（彩色字体，在深色或浅色环境中均应可见）
3. 示例文本（彩色字体，在深色或浅色环境中均应可见） 

自定义主题的简单方法是使用

```latex
\setbeamercolor{ ... }{ fg= ... , bg= ... }
```

来重新定义这些颜色。为了更好地定制，您还可以重新定义其他任何光束颜色。除了常规颜色外，该主题还定义了一些 METROPOLIS 特有的颜色，您也可以根据自己的喜好重新定义这些颜色。

```latex
\setbeamercolor{progress bar}{ ... }
\setbeamercolor{title separator}{ ... }
\setbeamercolor{progress bar in head/foot}{ ... }
\setbeamercolor{progress bar in section page}{ ... }
```

### 3.3	字体定制

METROPOLIS 的默认字体是 Fira。使用 fontspec 软件包中的标准字体选择命令，可以轻松更改默认字体。因此，如果你更喜欢 Ubuntu 字体系列，只需在加载 METROPOLIS 主题后添加以下两条命令即可。

```latex
\setsansfont{Ubuntu}
\setmonofont{Ubuntu Mono}
```

如果你希望在一个大房间里演示，或者使用功率不足的投影仪，你可能需要将字体更改为较重的 Fira 字体，以最大限度地提高可读性。

```latex
\setsansfont[BoldFont={Fira Sans SemiBold}]{Fira Sans Book}
```

### 3.3.1	旧式数字

改变字形外观的常规 fontspec 机制也适用于该主题。如果您想在正文中使用旧式数字，但在数学中使用常规的衬线数字，您可以在序言中添加以下内容： 

```latex
\usefonttheme{professionalfonts} % required for mathspec
\usepackage{mathspec}
\setsansfont[BoldFont={Fira Sans},Numbers={OldStyle}]{Fira Sans Light}
\setmathsfont(Digits)[Numbers={Lining, Proportional}]{Fira Sans Light}
```

## 3.4	命令

### 3.4.1	突出帧

METROPOLIS 内在主题采用自定义帧格式，文字居中，背景倒置，非常适合将注意力集中在单句或图片上。要使用它，请将关键突出部分添加到帧中： 

```latex
\begin{frame}[standout]
	Thank you!
\end{frame}
```

# 4	pgfplots集成

METROPOLIS 附带一套预定义的 pgfplots 风格和基于  Paul Tol 配色方案的色彩主题。

## 4.1	风格

向轴环境传递以下样式键，以获得相应的效果：

**mlineplot**：绘制常规折线图时，可减少坐标轴框架，减少图例和网格的干扰。

**mbarplot**：绘制垂直条形图的方法与 **mlineplot** 相似，但减少了网格的使用。

**horizontal mbarplot**：绘制水平条形图。

**disable thousands separator**：移除千位分隔符的辅助样式。

## 4.2	Paul Tol 配色

好的演示文稿所使用的颜色应尽可能与黑白两色区分开来，在不同的光线和显示环境下，色盲观众也能分辨出不同的颜色，同时又能很好地搭配在一起。

Paul Tol 在 SRON 的一份技术说明中提出了一种能满足这些限制条件的调色板。子软件包 pgfplotsthemetol 基于 Tol 的工作为 pgfplots 图表定义了调色板。

# 5	技巧与窍门

## 5.1	备份幻灯片

演讲者通常会在演讲结束时加入额外的幻灯片，以便在听众提问时参考。一个简单的方法是在前言中加入 appendixnumberbeamer 包，并在备份幻灯片前调用 `\appendix`。

METROPOLIS 会自动关闭附录中幻灯片的编号和进度条。

# 6	 已知问题

## 6.1	标题格式

请注意，并非每种字体都支持小大写字母，因此如果您使用的字体不是 Fira Sans，小大写字母或全小写字母选项可能不起作用。特别是在使用 pdfLATEX 编译 METROPOLIS 时使用的 Computer Modern 无衬线字体，没有小大写字母变体。

从美学角度来看，标题格式选项 allsmallcaps 和 allcaps 非常不错，但它们对 \MakeLowercase 和 \MakeUppercase 的使用可能会导致意想不到的问题。

（这里有三个例子，没有翻译）

如果标题只包含字母字符，且不需要扩展任何宏，则可以放心使用 allsmallcaps 和 allcaps 选项。

## 6.2	与其他色彩主题的互动

METROPOLIS 可以与任何其他 Beamer 色彩主题（如 **crane** 或 **seahorse**）一起使用。如果您想这样做，通常最好单独包含 METROPOLIS 子软件包，这样就不会加载 METROPOLIS 色彩主题。这样可以避免大都会颜色主题与您偏好的主题发生冲突。

例如，如下覆盖色彩主题可能无法达到预期效果，因为 `\usetheme{METROPOLIS}`会加载大都会色彩主题，而大都会色彩主题定义了帧标题背景与主题主调色板之间的关系。由于 `seahorse` 在调色板之间假设了不同的关系，因此结果是灰色而不是长春花色的帧标题背景。

```latex
\usetheme{METROPOLIS}
\usecolortheme{seahorse}
```

如果分别加载 METROPOLIS 的外部、内部和字体主题，则会选择正确的颜色：

```latex
\useoutertheme{METROPOLIS}
\useinnertheme{METROPOLIS}
\usefonttheme{METROPOLIS}
\usecolortheme{seahorse} % 或者你更喜欢的主题色
```

请注意，METROPOLIS 可能不会使用您喜欢的 Beamer 色彩主题中定义的所有颜色。特别是，METROPOLIS 不会为标题设置背景色；这会在使用 **whale** 等颜色主题时产生问题，因为这些主题会为标题设置白色前景。

## 6.3	第二个屏幕上的注释

如果使用 Beamer 内置的 `[show notes on second screen] ` 选项并与 XELATEX 一起编译，第一节幻灯片之后的幻灯片上的文本可能会显示为白色，而不是常规颜色。这是 Beamer 或 XELATEX 本身的错误造成的。您可以使用 LuaTEX 进行编译，或在序言中添加以下代码来重置每张幻灯片上的文字颜色，从而解决这一问题。

```latex
\makeatletter
\def\beamer@framenotesbegin{% at beginning of slide
\usebeamercolor[fg]{normal text}
\gdef\beamer@noteitems{}%
\gdef\beamer@notes{}%
}
\makeatother
```

## 6.4	带标签的突出帧

## 6.5	使用 Pandoc 的突出帧

# 7	许可证

METROPOLIS 采用知识共享 署名-相同方式共享 4.0 国际许可协议进行许可。这意味着，如果您更改主题并重新发布，您必须保留版权声明标题，并按照相同的 CC-BY-SA 许可进行授权。这不会影响您使用该主题创建的任何演示文稿。

