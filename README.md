# Plant-Disease-Predictor

git clone https://github.com/asifmustafa87/Plant-Disease-Predictor.git
cd Plant-Disease-Predictor
docker build -t streamlit_web_app .
docker run -p 8501:8501 -t -i streamlit_web_app:latest

http://localhost:8501/
