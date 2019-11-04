# cropEPS

EPSファイルを自動でトリミングするためのシェルスクリプトです。


Windows環境だとパワーポイントで作ったEPSファイルにBounding Boxを指定しても、Texが認識してくれず、図がずれることがあります。
このツールを使うとEPSファイル自体をトリミングします。Cygwin環境で使ってください。
使い方は以下の通りです。

```
./cropEPS.sh all:	crop all eps files
./cropEPS.sh [name]:	crop [name].eps
```
詳細は以下のページにもあります。


[http://suzukitakahiro.sakura.ne.jp/activity/](http://suzukitakahiro.sakura.ne.jp/activity/)
