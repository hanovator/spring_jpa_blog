# spring_jpa_blog
jpa blog project

- 스프링 부트 
- JPA
- 스프링 시큐리티
- JWT, OAuth2.0 (구글, 페이스북 로그인)
- CI/CD

구현 및 구현예정



## SASRec

conda env
- conda env create --file environment.yaml
- conda activate sasrec

inference
- python main.py --inference_only=true --state_dict_path=./data_total_default/SASRec.epoch=50.lr=0.001.layer=2.head=1.hidden=64.maxlen=20.pth

training
- python main.py

refer
>https://github.com/pmixer/SASRec.pytorch
