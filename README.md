# `factorio-localization-hub`

`factorio-localization-hub`は、Factorioの日本語化MODを集中管理するためのリポジトリです。

このリポジトリに含まれる`Makefile`は、テストを行うために`mods`ディレクトリにMODを配置するコマンドを提供します。

```bash
> make examples 
このMakefileを使用した`make`コマンドの使用例:

1. デフォルトのzipコマンドを使用してデプロイする場合:
   make deploy MODNAME=<modname>

2. 7zzコマンドを使用してデプロイする場合:
   make deploy ZIPCMD=7zz MODNAME=<modname>
```

`mods`ディレクトリのパスは私の環境に合わせて設定されています。他の環境で使用する場合は、`Makefile`を適切に修正してください。
