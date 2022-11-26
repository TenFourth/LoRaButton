# LoRa Button

![LoRa Button写真](img/button-images/button-front.jpg)
このページはテンフォースが販売する、LoRa Buttonのドキュメントやサンプルコードを公開しています。

このリポジトリの全てのファイルは MIT ライセンスです。

## コンテンツ

* [注意](#note)
* [本製品の使い方](#howtouse)
* [LoRaWANで使う](#lorawan)
* [製品仕様](#specification)
* [製品写真](#pictures)

<a id="note"></a>
# 注意

* 本製品は日本国内専用です。海外ではチャンネルや出力など電波の仕様が異なるためご利用になれません
* 直射日光の当たる場所や高温多湿の場所を避けてご利用ください
* 防水ではありませんので、水のかからない場所でご利用ください
* 生命や財産に関わるような重要な用途のご利用では、責任は負えません
* 電池が消耗した時は、早めに取り出してください

<a id="howtouse"></a>
# 本製品の使い方

## 必要な物

LoRa Buttonを使うためには、次の物が必要です

1. パソコン
    * ターミナル操作でLoRa Buttonの設定やプログラムを登録するために必要です
    * 通信モジュールのアップデートではWindowsパソコンが必要になります
2. USBシリアル変換ケーブル
    * パソコンとマイコンを繋ぐUART 3.3Vの一般的なシリアル変換ケーブル。秋月電子などの電子部品を扱うショップで入手可能です。 ([一例](https://akizukidenshi.com/catalog/g/gK-01977/)
3. LoRaWAN サーバー
    * [The Things Network](https://www.thethingsnetwork.org/) や、[LORIOT](https://www.loriot.io/) などのLoRaWANのサービス、もしくは自前で運用するサーバー、LoRaWANサーバー機能内蔵のGateway機器などが別途必要です
4. LoRaWAN Gateway
    * 日本国内の電波仕様に準拠したGateway機器をご用意ください
5. コイン形リチウム電池 CR2032 ×1

## フタの開け方と閉め方

隙間からマイナスドライバー等を差し込んで、爪をずらすように動かすとフタが外れます。

閉める時は、凸部のある向きを合わせ、爪のある方を中に向けて上からカチッと音がするまで押し込みます。

## 電池の入れ方と取り出し方

```
電池の端子がネジの頭や金属部分に触れてショートしないようにご注意ください
```

コイン形電池のマイナスを基板側に向けて、ホルダー部分へスライドして押し込みます。

電池取り出し用治具で「+」の刻印のある付近の隙間から電池を上に押し込んで飛び出させます。電池がホルダーからある程度飛び出したら、指でずらして取り出せます。

## ターミナル

LoRa Buttonのピンとシリアル変換の端子を次のように繋ぎます。(TxとRxは交わるように繋ぎます)

* Tx を Rx へ
* Rx を Tx へ
* GND を GND へ

```
[RESET]ピンはモジュールを再起動したい時に、[GND]ピンと繋ぐことで再起動できます
```

パソコンで [Tera Term](https://ja.osdn.net/projects/ttssh2/) などのターミナルソフトを起動します。

### シリアルの設定

シリアルポートは次の通りに設定します。

| 項目| 値 |
|:---:|:--:|
| ボーレート | 115200bps |
| データ | 8bit |
| パリティ | none |
| ストップビット | 1bit |
| フロー制御 | none |

ターミナルを接続して、LoRa Buttonの電源が入るとプロンプトが表示されます。

```:LRA1プロンプト
i2-ele LRA1
Ver 1.13.h
OK
>
```

* プログラムが書き込まれてて、自動的に実行するようになっている場合はバージョン番号の下の行に `.` が増えていく状態になります。`.` が5つになる前に `Ctrl キー` と `c` を同時に押すとプロンプト `>` (コマンド待ち)の状態になります
* ターミナルに何も表示されない場合は、モジュールがスリープ状態になっている可能性がありますので、[RESET]ピンと[GND]ピンを繋いで再起動させてみてください

ターミナルの使い方やコマンドは、モジュール製造元（[株式会社アイ・ツー](https://i2-ele.co.jp/)）の [ソフトウェアリファレンスマニュアル](https://www.i2-ele.co.jp/LRA1_software.html) をご参照ください。

## プログラムの書込み

TODO:

## LED

赤色のLEDで状態を示します

* ボタンを押して一瞬点灯し、通信に成功した場合は約5秒点灯します
* 通信に失敗した場合は、点滅になります

<a id="lorawan"></a>
# LoRaWANで使う

ここでは、[The Things Network](https://www.thethingsnetwork.org/) を例にしてアプリケーションのノードにLoRa Buttonを登録する手順を紹介します。

## アプリケーションの登録

TODO:

## ペイロードフォーマッタの登録

TODO:

## データの確認

TODO:

<a id="specification"></a>
# 製品仕様

| 項目 | 内容 |
|:---:|:---:|
| 品名 | LoRa Button |
| 本体サイズ | 4.1W x 7.1D x 1.7H cm |
| 重量 | 26g (電池含まず) |
| 電源 | コイン形リチウム電池 CR2032 ×1 |
| 電池寿命 | 約数ヶ月～数年 (送信間隔によります) |
| 通信モジュール | 株式会社アイ・ツー [LRA1](https://i2-ele.co.jp/LoRa.html) |
| 無線準拠規格 | 無線準拠規格国内電波法認証済み |
| 製造 | 日本 |

<a id="pictures"></a>
# 製品写真

* [製品写真のディレクトリ](/img/button-images) に配置しております