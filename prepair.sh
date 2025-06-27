pip install huggingface_hub[cli]
pip install numpy
pip install onnx
pip install onnxruntime-genai-cuda
pip install pillow
pip install requests
mkdir -p phi3-vision-128k-instruct/pytorch
cd phi3-vision-128k-instruct/pytorch
huggingface-cli download microsoft/Phi-3-vision-128k-instruct --local-dir .
