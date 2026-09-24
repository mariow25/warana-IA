# warana IA 🖐️
Colheita do Guaraná de Maués

Jogo educativo sobre a cultura, produção e colheita do guaraná no município de Maués, Amazonas.

O projeto apresenta, de forma interativa e lúdica, algumas etapas relacionadas ao cultivo e à colheita do guaraná, valorizando a cultura local e aproximando tecnologia, educação e conhecimento sobre a produção agrícola do município.

🎮 Categoria: Jogo educativo
🌱 Tema: Guaraná de Maués
📍 Local: Maués, Amazonas, Brasil
🤖 Tecnologia: Godot Engine
🎯 Público: Crianças, adolescentes, estudantes e visitantes
📚 Objetivo: Educação, cultura e valorização da produção local

📖 Sobre o projeto

O Colheita do Guaraná de Maués é um jogo educativo desenvolvido para apresentar aos jogadores elementos relacionados à cultura do guaraná e ao trabalho realizado durante sua produção.

Durante o jogo, o jogador participa de atividades relacionadas ao cultivo e à colheita, explorando cenários inspirados no ambiente amazônico.

A proposta é transformar informações sobre o guaraná em uma experiência interativa, permitindo que o jogador aprenda enquanto joga.

🎯 Objetivos

O projeto possui alguns objetivos principais:

Valorizar a cultura do município de Maués.
Apresentar o guaraná como elemento importante da identidade local.
Demonstrar etapas relacionadas à produção e à colheita.
Criar uma experiência educativa utilizando tecnologia.
Estimular o interesse de crianças e jovens pela cultura amazônica.
Utilizar jogos digitais como ferramenta de aprendizagem.
Desenvolver habilidades de programação, design e desenvolvimento de jogos.
🌱 O Guaraná de Maués

Maués é conhecido nacionalmente pela produção de guaraná e possui uma forte relação cultural e econômica com esse fruto.

O guaranazeiro é uma planta típica da Amazônia. Seus frutos apresentam uma característica bastante conhecida: quando maduros, a casca se abre e deixa aparecer a semente, criando uma aparência que lembra um pequeno olho.

No jogo, esse elemento visual pode ser utilizado para representar a identidade do guaraná e criar uma conexão entre a experiência digital e a cultura regional.
Jogo educativo de visão computacional: controle de um carro por gestos das mãos.

## O que já funciona
- Webcam em tempo real com OpenCV.
- Detecção da mão e 21 landmarks com MediaPipe.
- Reconhecimento didático de gestos: ACELERAR, ESQUERDA, DIREITA, PARAR e FREAR.
- Carro virtual controlado pelos gestos.
- Interface com câmera, gesto detectado, confiança, velocidade, tempo, volta e estatísticas.
- Controle alternativo pelo teclado para testar sem webcam.
- Estrutura preparada para substituir o reconhecedor heurístico por uma CNN treinada.

## Requisitos
Python 3.10 ou 3.11 recomendado.

```bash
pip install -r requirements.txt
python app.py
```

## Controles
- Gestos: mão aberta = parar; punho = frear; mão inclinada/movimento para esquerda/direita = direção; gesto de apontar para cima = acelerar.
- Teclado: W/↑ acelera, A/← esquerda, D/→ direita, S/↓ freia, Espaço para parar, P pausa, ESC sai.

## CNN
A pasta `ai/` contém o pipeline inicial para uma CNN de classificação de imagens. O jogo usa o reconhecedor de landmarks por padrão para funcionar sem um modelo treinado. Depois de coletar imagens em `dataset/`, o modelo CNN pode ser treinado e conectado ao jogo.

## Estrutura
- `app.py`: ponto de entrada.
- `camera/`: webcam.
- `vision/`: detecção e reconhecimento de gestos.
- `ai/`: treinamento/inferência CNN.
- `game/`: física simples, pista e HUD.
- `dataset/`: classes para coleta de imagens.
- `models/`: modelos treinados.
