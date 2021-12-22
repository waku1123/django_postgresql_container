# django-postgresql-container
python3 + django + postgresqlのdockerコンテナを使用するプロジェクトの雛形

## プロジェクトのセットアップ
1. Djangoプロジェクトの開始
```shell
cd django-postgres-container
docker-compose run web django-admin.py startproject {projectname} .
```

2. DB設定を変更する
```python
# {projectname}/settings.py
DATABASE = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'postgres',
        'USER': 'root',
        'PASSWORD': 'password',
        'HOST': 'db',
        'PORT': 5432,
    }
}
```

3. (任意)appを作成する場合は以下を実行
```shell
docker-compose exec web python manage.py startapp {appname}
```

## コンテナの実行
- コンテナの構築・起動
```shell
docker-compose up -d
```

- コンテナの停止
```shell
docker-compose stop
```

- コンテナの再起動
```shell
docker-compose restart
```
