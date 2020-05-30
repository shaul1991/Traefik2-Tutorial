#Traefik v2 Tutorial

본 저장소는 개인 학습용도로 활용되고 있습니다.

## 설명
- `*.docker.localhost` 인증서가 적용되어 있습니다.
- `*.docker.localhost:80`으로 접속시 `*.docker.localhost:443`으로 `redirection` 됩니다.
- 네트워크 `traefik-proxy` 사용하여 `Traefik`과 `Whoami`가 연동됩니다.

## 시작하기

### Traefik && Whoami 실행
```
$ make start
```

### Traefik && Whoami 종료
```
$ make erase
```

### Traefik Dashboard 확인
```
localhost:8080 으로 접속
```

### Whoami 확인
```
whoami.docker.localhost 으로 접속
```

