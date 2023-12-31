#set text(size:10pt, font: ("simsun"), lang: "zh")
#set page("a4", flipped: true, columns: 2)

// 设置heading的格式
// 在每一个heading后添加一个不可见的段落(par)，这样正文的缩进可以保持2个字符
#show heading: it => {
    if it.level == 1 {
        set align(center)
        set text(font:"Microsoft Yahei UI", size: 30pt)
        it
        par(leading:1.4em)[#text(size:0.5em)[#h(2em)]]
    }
        if it.level == 2 {
        set align(left)
        set text(weight:"black",size: 26pt)
        it
        par(leading:1.4em)[#text(size:0.5em)[#h(2em)]]
    }
}

#set par(first-line-indent: 2em)
#show emph: it => {
  text(font:"楷体",it.body)
}

#set page(
  //height: 100pt,
  //margin: 20pt,
  footer: [
    #set align(center)
    #set text(8pt)
    #counter(page).display(
      "1 / 1",
      both: true,
    )
  ]
)

// 添加一个靠左对齐的 “致书对象”
#let tos(x) = [
    #set par(first-line-indent: 0em)
    #set text(font:"FangSong", size: 18pt)
    #x
]


// 添加一个靠右居中对齐的“姓名，日期”的签名戳
#let nametime(n,t) = [
  #set align(right)
  #block(above: 40pt, below: 120pt)[
      
    #set align(center)
    #set par(first-line-indent: 0em)
    #set text(font:"FangSong")
    #n 
    #parbreak()
    #t
  ]
]


= 缩进测试文章

== 「出师表」全文

#tos[陛下据言：]

先帝创业未半而中道崩殂，今天下三分，益州疲弊，此诚危急存亡之秋也。然侍卫之臣不懈于内，忠志之士忘身于外者，盖追先帝之殊遇，欲报之于陛下也。诚宜开张圣听，以光先帝遗德，恢弘志士之气，不宜妄自菲薄，引喻失义，以塞忠谏之路也。

宫中府中，俱为一体，陟罚臧否，不宜异同。若有作奸犯科及为忠善者，宜付有司论其刑赏，以昭陛下平明之理，不宜偏私，使内外异法也。

侍中、侍郎郭攸之、费祎、董允等，此皆良实，志虑忠纯，是以先帝简拔以遗陛下。愚以为宫中之事，事无大小，悉以咨之，然后施行，必能裨补阙漏，有所广益。

将军向宠，性行淑均，晓畅军事，试用于昔日，先帝称之曰能，是以众议举宠为督。愚以为营中之事，悉以咨之，必能使行阵和睦，优劣得所。

亲贤臣，远小人，此先汉所以兴隆也；亲小人，远贤臣，此后汉所以倾颓也。先帝在时，每与臣论此事，未尝不叹息痛恨于桓、灵也。侍中、尚书、长史、参军，此悉贞良死节之臣，愿陛下亲之信之，则汉室之隆，可计日而待也。

臣本布衣，躬耕于南阳，苟全性命于乱世，不求闻达于诸侯。先帝不以臣卑鄙，猥自枉屈，三顾臣于草庐之中，咨臣以当世之事，由是感激，遂许先帝以驱驰。后值倾覆，受任于败军之际，奉命于危难之间，尔来二十有一年矣。

先帝知臣谨慎，故临崩寄臣以大事也。受命以来，夙夜忧叹，恐托付不效，以伤先帝之明，故五月渡泸，深入不毛。今南方已定，兵甲已足，当奖率三军，北定中原，庶竭驽钝，攘除奸凶，兴复汉室，还于旧都。此臣所以报先帝而忠陛下之职分也。至于斟酌损益，进尽忠言，则攸之、祎、允之任也。

愿陛下托臣以讨贼兴复之效，不效，则治臣之罪，以告先帝之灵。若无兴德之言，则责攸之、祎、允等之慢，以彰其咎；陛下亦宜自谋，以咨诹善道，察纳雅言，深追先帝遗诏，臣不胜受恩感激。

今当远离，临表涕零，不知所言。

#nametime[汉丞相征北顺天大将军诸葛亮][公元227年5月14日]


== 「后出师表」全文

先帝深虑#emph[汉、贼不两立，王业不偏安]，故托臣以讨贼也。以先帝之明，量臣之才，固知臣伐贼，才弱敌强也。然不伐贼，王业亦亡。惟坐而待亡，孰与伐之？是故托臣而弗疑也。

臣受命之日，寝不安席，食不甘味。思惟北征。宜先入南。故五月渡泸，深入不毛，并日而食；臣非不自惜也，顾王业不可得偏安于蜀都，故冒危难，以奉先帝之遗意也，而议者谓为非计。今贼适疲于西，又务于东，兵法乘劳，此进趋之时也。谨陈其事如左：

高帝明并日月，谋臣渊深，然涉险被创，危然后安。今陛下未及高帝，谋臣不如良、平，而欲以长策取胜，坐定天下，此臣之未解一也。

刘繇、王朗各据州郡，论安言计，动引圣人，群疑满腹，众难塞胸，今岁不战，明年不征，使孙策坐大，遂并江东，此臣之未解二也。

曹操智计，殊绝于人，其用兵也，仿佛孙、吴，然困于南阳，险于乌巢，危于祁连，逼于黎阳，几败北山，殆死潼关，然后伪定一时耳。况臣才弱，而欲以不危而定之，此臣之未解三也。

曹操五攻昌霸不下，四越巢湖不成，任用李服而李服图之，委任夏侯而夏侯败亡，先帝每称操为能，犹有此失，况臣驽下，何能必胜？此臣之未解四也。

自臣到汉中，中间期年耳，然丧赵云、阳群、马玉、阎芝、丁立、白寿、刘郃、邓铜等及曲长、屯将七十余人，突将、无前、賨叟、青羌、散骑、武骑一千余人。此皆数十年之内所纠合四方之精锐，非一州之所有；若复数年，则损三分之二也，当何以图敌？此臣之未解五也。

今民穷兵疲，而事不可息；事不可息，则住与行劳费正等。而不及今图之，欲以一州之地，与贼持久，此臣之未解六也。

夫难平者，事也。昔先帝败军于楚，当此时，曹操拊手，谓天下已定。然后先帝东连吴越，西取巴蜀，举兵北征，夏侯授首，此操之失计，而汉事将成也。然后吴更违盟，关羽毁败，秭归蹉跌，曹丕称帝。凡事如是，难可逆见。臣鞠躬尽瘁，死而后已。至于成败利钝，非臣之明所能逆睹也。

#nametime[诸葛亮][兴安三十六年十月四日]

== 雪国 \<日文原版 -- 节选>

国境の長いトンネルを抜けると雪国であった。夜の底が白くなった。信号所に汽車が止まった。

内側の座席から娘が立って来て、島村の前のガラス窓を落とした。雪の冷気が流れ込んだ。娘は窓いっぱいに乗り出して、遠くへ叫ぶように、

「駅長さん、駅長さん」

明かりをさげてゆっくり吹きを踏んできた男は、襟巻で鼻の上まで包み、耳に帽子の毛皮を垂れていた。

もうそんな寒さかと島村は外を眺めると鉄道の官舎らしいバラックが山裾に寒々と散らばっているだけで、雪の色はそこまで行かぬうちに闇に飲まれていた。

「駅長さん、私です、御機嫌よろしゅうございます」

「ああ、葉子さんじゃないか。お帰りかい。また寒くなったよ」

「弟が今度こちらに勤めさせていただいておりますのですってね。お世話さまですわ」

「こんなところ、今に寂しくて参るだろうよ。若いのに可哀想だな」

「ほんの子供ですから、駅長さんからよく教えてやっていただいて、よろしくお願いいたしますわ」

「よろしい。元気で働いてるよ。これからいそがしくなる。去年は大雪だったよ。よく雪崩れてね、汽車が立往生するんで、村も炊出しがいそがしかったよ」

「駅長さんずいぶん厚着に見えますわ。弟の手紙には、まだチョッキも着ていないようなことを書いてありましたけれど」

私は着物を四枚重ねだ。若い者は寒いと酒ばがり飲んでいるよ。それでごろごろあすこにぶっ倒れてるのさ、風邪を引いてね」

駅長は宿舎の方へ手の明かりを振り向けた。

「弟もお酒をいただきますでしょうか」

「いや」

「駅長さんもうお帰りですの？」

「私は怪我をして、医者に通ってるんだ」

「まあ。いけませんわ」

和服に外套の駅長は寒い立話をさっさと切り上げたいらしく、もう後姿を見せながら、

「それじゃまあ大事にいらっしゃい」

「駅長さん、弟は今出ておりませんの？」と葉子は雪の上を目探しして、

「駅長さん、弟をよく見てやって、お願いです」

悲しいほど美しい声であった。高い響きのまま夜の雪から木魂して来そうだった。

汽車が動き出しても、彼女は窓から胸を入れなかった。そうして線路の下を歩いている駅長に追いつくと、

「駅長さあん、今度の休みの日に家へお帰りって、弟に言ってやって下さあい」

「はあい」と、駅長が声を張り上げた。

葉子は窓をしめて、赤らんだ頬に両手をあてた。

ラッセルを三台備えて雪を待つ、国境の山であった。トンネルの南北から、電力による雪崩れ報知線が通じた。除雪人夫延べ人員五千名に加えて消防組青年団の延人員二千名出動の手配がもう整っていた。

そのような、やがて雪に埋もれる鉄道信号所に葉子という娘の弟がこの冬から勤めているのだと分かると、島村はいっそう彼女に興味を強めた。

しかしここで、「娘」と言うのは、島村にそう見えたからであって、連れの男が彼女の何であるか、むろん島村の知るはずはなかった。二人のしぐさは夫婦じみていたけれども、男は明らかに病人だった。病人相手ではつい男女の隔てがゆるみ、まめまめしく世話すればするほど、夫婦じみて見えるものだ。字際また自分より年上の男をいたわる女の幼い母ぶりは、遠目に夫婦とも思われよう。

島村は彼女一人だけを切り離して、その姿の感じから、自分勝手に娘だろうときめているだけのことだった。でもそれには、彼がその娘を不思議な見方であまりに見つめ過ぎた結果、彼自らの感傷が多分に加わってのことかもしれない。

もう三時間も前のこと、島村は退屈まぎれに左手の人差指をいろいろに動かして眺めては、結局この指だけが、これから会いに行く女をなまなましく覚えている、はっきり思い出そうとあせればあせるほど、つかみどころなくぼやけてふく記憶の頼りなさのうちに、この指だては女の触感で今も濡れていて、自分を遠くの女へ引く寄せるかのようだと、不思議に思いながら、鼻につけて匂いを嗅いでみたりしていたが、ふとその指で窓ガラスに線を引くと、そこに女の片目がはっきり浮き出たのだった。彼は驚いて声をあげそうになった。しかしそれは彼が心を遠く部屋っていたからのことで、気がついてみればなんでもない、向こう側の座席の女が写ったのだった。外は夕闇がおりているし、汽車のなかは明かりがついている。それで窓ガラスが鏡になる。けれども、スチイムの温みでガラスがすっかり水蒸気に濡れているから、指で拭くまでその鏡はなかったのだった。

娘の片目だけはかえって異様に美しかったものの、島村は顔を窓に寄せると、夕景色見たさという風なり旅愁顔を俄かづくりして、掌でガラスをこすった。

娘は胸をこころもち傾けて、前に横わたった男を一心に見下ろしていた。肩に力が入っているところから、少しいかつい眼も瞬きさえしないほどの真剣さのしるしだと知れた。男は窓の方を枕にして、娘の横へ折り曲げた足をあげていた。三等車である。島村の真横ではなく、一つ前の向こう側の座席だったから、横寝している男の顔は耳のあたりまでしか鏡に写らなかった。

娘は島村とちょうど斜めに向かい合っていることになるので、じかにだって見られるのだが、彼女等が汽車に乗り込んだ時、なにか涼しく刺すような娘の美しさに驚いて見を伏せるとたん、娘の手を固くつかんだ男の青黄色い手が見えたものだから、島村は二度とそっちを向いては悪いような気がしていたのだった。

鏡の中の男の顔色はただもう娘の胸のあたりを見ているゆえに安らかだという風に落ちついていた。弱い体力が弱いながらに甘い調和を漂わせていた。襟巻を枕に敷き、それを鼻の下にひっかけて口をぴったり覆い、それからまた上になった頬を包んで、一種の頬かむりのような工会だが、ゆるんで来たり、鼻にかぶさって来たりする。男が目を動かすか動かさぬうちに、娘はやさしい手つきで直してやっていた。見ている島村がいらっ立て来るほど幾度もその同じことを、二人は無心に繰り返していた。また、男の足をつつんだ外套の裾が時々開いて垂れ下がる。それも娘はすぐ気がついて直してやっていた。これらがまことに自然であった。このようにして距離というものを忘れながら、二人は果しなく遠くへ行くものの姿のように思われたほどだった。それゆえ島村は悲しみをみているというつらさはなくて、夢のからくりを眺めているような思いだった。不思議な鏡のなかのことだったからでもあろう。

鏡の底には夕景色が流れていて、つまり写るものと写す鏡とが、映画の二重写しのように動くのだった。登場人物と背景とはなんのかかわりもないのだった。しかも人物は透明のはかなさで、風景は夕闇のおぼろな流れで、その二つが融け合いながらこの世ならぬ象徴の世界を描いていた。殊に娘の顔のただなかに野山のともし火がともった時には、島村はなんともいえぬ美しさに胸がふるえたほどだった。

遥かの山の空はまだ夕焼の名残の色がほのかだったから、窓ガラス越しに見る風景は遠くの方までものの形が消えてはいなかった。しかし色はもう失われてしまっていて、どこまで行っても平凡な野山の姿がなもさら平凡に見え、なにものも際立って注意を惹きようがないゆえに、かえってなにかぼうっと大きい感情の流れであった。むろんそれは娘の顔をそのなかに浮べでいたからである。姿が写る部分だけは窓の外が見えないけれども、娘の輪郭のまわりを絶えず夕景色が動いているので、娘の顔も透明のように感じられた。しかしほんとうに透明かどうかは、顔の裏を流れてやまぬ夕景色が顔の表を通るかのように錯覚されて、見極める時がつかめないのだった。

汽車のなかもさほど明るくはなし、ほんとうの鏡のように強くはなかった。反射がなかった。だから、島村は見入っているうちに、鏡のあることをだんだん忘れてしまって、夕景色の流れのなかに娘が浮かんでいるように思われて来た。

そういう時彼女の顔のなかにともし火がともったのだった。この鏡の映像は窓の外のともし火を消す強さはなかった。ともし火も映像を消しはしなかった。そうしてともし火は彼女の顔のなかを流れて通るのだった。しかし彼女の顔を光り輝かせるようなことはしなかった。冷たく遠い光であった。小さい瞳のまわりをぼうっと明るくしながら、つまり娘の眼と火とあ重なった瞬間、彼女の眼は夕闇の波間の浮ぶ、妖しく美しい夜光虫であった。

こんな風に見られていることを、葉子は気づくはずがなかった。彼女はただ病人に心を奪われていたが、たとえ島村の方へ振り向いたところで、窓ガラスに写る自分の姿は見えず、窓の外を眺める男など見に止まらなかっただろう。

島村が葉子を長い間盗み見しながら彼女に悪いということを忘れていたのは、夕景色の鏡の非現実な力にとらえられていたからだったろう。

だから、彼女が駅長に呼びかけて、ここでもなにか真剣過ぎるものを見せた時にも、物語めいた興味が先に立ったのかもしれない。

ところがそれから半時間ばかり後に、思いがけなく葉子達も島村と同じ駅に下りたので、彼はまたなにか起るかと自分にかかわりがあるかのように振り返ったが、プラット・フォウムの寒さに触れると、急に汽車のなかの非礼が恥しくなって、後も見ずに機関車の前を渡った。

男が葉子の肩につかまって線路へ下りようとした時に、こちらから駅員が手を上げて止めた。やがて闇から現れて来た長い貨物列車が二人の姿を隠した。

宿屋の客引きの番頭はちょうど火事場の消防のようにものものしい雪装束だった。耳をつつみ、ゴムの長靴をはいていた。待合室の窓から線路の方を眺めて立っている女も、青いマントを着て、その頭巾をかぶっていた。

島村は汽車のなかのぬくみがさめなくて、そとのほんとうの寒さをまだ感じなかったけれども、雪国の冬は初めてだから、土地の人のいでたちにまずおびやかされた。

「そんな格好をするほど寒いのかね」

「へい、もうすっかり冬支度です。雪の後でお天気になる前の晩は、特別冷えます。今夜はこれでも氷点を下っておりますでしょうね」

「これが氷点以下かね」と、島村は軒端の可愛い氷柱を眺めながら、宿の番頭と自動車に乗った。雪の色が家々の低い屋根をいっそう低く見せて、村はしいんと底に沈んでいるようだった。

「なるほどなににさわっても冷たさがちがうよ」

「去年は氷点下二十何度といるのが一番でした」

「雪は？」

「さあ、普通七、八尺ですけれど、多い時は一丈を二、三尺超えてますでしょうね」

「これからだね」

「これからですよ。この雪はこの間一尺ばかり降ったのが、だいぶ解けてきたところです」

「解けることもあるのかね」

「もういつ大雪になるか分かりません」

「十二月の初めであった。

島村はしつっこい風心地でつもっていた鼻が、頭のしんまですっといちどきに通って、よごれものが洗い落とされるように、水洟がしきりと落ちて来た。

「お師匠さんとこの娘はまだいるかい」

「へえ、おりますおります。駅におりましたが、御覧になりませんでした、濃い青のマントを着て」

「あれがそうだったの？――後で呼べるだろう」

「今夜ですか」

「今夜だ」

「今の終列車でお師匠さんの息子が帰るとか言って、迎えに出ていましたよ」

夕景色のなかで菓子にいたわられていた病人は、島村が合いに来た女の家の息子だったのだ。

そうと知ると、自分の胸のなかをなにかが通り過ぎたように感じたけれども、このめぐりあわせを、彼はさほど不思議と思うことはなかった。不思議と思わぬ自分を不思議と思ったくらいのものであった。

指で覚えている女と眼にともし火をつけていた女との間に、何ががあるのかなにが起きるのか、島村はなぜかそれが心のどこかで見えるような気持ちもする。まだ夕景色の鏡から醒め切らぬせいだろうか。あの夕景色の流れは、さては時の流れの象徴であったかと、彼はほとそんなことを呟いた。

スキイの季節前の温泉宿は最も客の少ない時で、島村が内湯から上がって来ると、もう全く寝静まっていた。古びた廊下は彼の踏むたびにガラス戸を微かに鳴らした。その長いはずれの帳場の曲り角に、裾を冷え冷えと黒光りの板の上へ広げて、女が高く立っていた。

とうとう芸者に出たのであろうかと、その裾を見てはっとしたけれども、こちらへ歩いて来るでもない、体のどこかを崩して迎えるしなを作るでもない、じっと動かぬその立ち姿から、彼は遠目にも真面目なものを受け取って、急いた行ったが、女の傍に立っても黙っていた。女も濃い白粉の顔で微笑もうとすると、かえって泣き面になったので、何も言わずに二人は部屋の方へ歩き出した。

あんなことがあったのに、手紙も出さず、合いにも来ず、踊りの型の本など送るという約束も果さず、女からすれば笑って忘れられたとしか思えないだろうから、まず島村の詫びかいいわけを言わぬばならない順序だったが、顔を見ないで歩いているうちにも、彼女は彼を責めるどころか、体いっぱいになつかしさを感じていることが知れるので、彼はなおさら、どんなことを行ったにしても、その言葉は自分の方が不真面目だという響きしか持たぬだろうと思って、なにか彼女に気おされる甘い喜びにつつまれていたが、階段の下まで来ると、

「こいつが一番よく君を覚えていたよ」と、人差指だけ伸ばした左手の握り拳を、いきなり女の目の前に突きつけた。

「すう？」と、女は彼の指を握るとそのまま離さないで手をひくように階段を上って行った。

火燵の前で手を離すと、彼女はさっと首まで赤くなって、それをごまかすためにあわててまた彼の手を拾いながら、

「これが覚えていてくれたの？」

「右じゃない、こっちだよ」と、女の掌の間から右手を抜いて火燵に入れると、改めて左の握り拳を出した。彼女はすました顔で、

「ええ、分かってるわ」

ふふと含み笑いしながら、島村の掌を拡げて、その上に顔を押しあてた。

「これが覚えていてくれたの？」

「ほう冷たい。こんな冷たい髪の毛初めてだ」

「東京はまだ雪が降らないの？」

「君はあの時、ああ言ってたけれども、あれはやっぱり嘘だよ。そうでなければ、誰が年の暮にこんな寒いところへ来るものか」

あの時は――雪崩の危険期が過ぎて、新緑の登山季節に入った頃だった。

あけびの新芽も間もなく食膳に見られなくなる。

無為徒食の島村は自然と自身に対する真面目さも失いがちなので、それを呼び戻すには山がいいと、よく一人で山歩きをするが、その夜も国境の山々から七日ぶりで温泉場へ下りて来ると、芸者を呼んでくれと言った。ところがその日は道路普請の落成祝いで、村の繭倉兼芝居小屋を宴会場に使ったほどの賑やかさだから、十二、三人の芸者では手が足りなくて、とうてい貰えないだろが、師匠の家の娘なら宴会を手伝いに行ったにしろ、踊を二つ三つ見せただけで帰るから、もしかしたら来てくれるかもしれないとのことだった。島村が聞き返すと、三味線と踊の師匠の家にいる娘は芸者というわけではないが、大きい宴会などには時たま頼まれて行くこともある、半玉がなく、立って踊りたがらない年増が多いから、娘は重宝がられている、宿屋の客の座敷へなどめったに一人で出ないけれども、全くの素人とも言えない、ざっとこんな風な女中の説明だった。

女の印象は不思議なくらい清潔であった。足指の裏の窪みまできれいであろうと思われた。山々の初夏を見た自分の眼のせいかと、島村は疑ったほどだった。

着つけにどこか芸者風なところがあったが、むろん裾はひずっていないし、やわらかい単衣をむしこきちんと着ている方であった。帯だけは不似合に高価なものらしく、それがかえってなにかいたましく見えた。

山の話などはじめたのをしおに、女中が立って行ったけれども、女はこの村から眺められる山々の名もろくに知らず、島村は酒を飲む気にもなれないでいると、女はやはり生まれはこの雪国、東京でお酌をしているうちに受け出され、ゆくすえ日本踊の師匠として身を立てさせてもらうつもりでいたところ、一年半ばかれで旦那が死んだと、思いのほか素直に話した。しかしその人に死別れてから今日までのことが、おそらく彼女のほんとうの身の上話かもしれないが、それは急に打ち明けそうもなかった。十九だと言った。嘘でないなら、この十九が二十一、二に見えることに島村ははじめてくつろぎを見つけ出して、歌舞伎の話などしかけると、女は彼よりも俳優の芸風や消息精通していた。そういう話相手に飢えていてか、夢中でしゃべっているうち、根が花柳界出の女らしいうちこけようを示してきた。男の気心を一通り知っているようでもあった。それにしてもかれは頭から相手を素人ときめているし、一週間ばかり人間とろくに口をきいたこともない後だから、人なつかしさが温かく溢れて、女にまず友情のようなものを感じた。山の感傷が女の上にまで尾をひいて来た。

女は翌日の午後、お湯道具を廊下の外に置いて、彼の部屋へ遊びに寄った。

彼女が坐るか坐らないうちに、彼は突然芸者を世話してくれと言った。

#nametime[川端康成][公元1984年5月17日]
