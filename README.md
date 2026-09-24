# GestureCar AI 🚗🖐️

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
