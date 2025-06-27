pip install huggingface_hub[cli]
pip install numpy
pip install onnx
pip install onnxruntime-genai-cuda
pip install pillow
pip install requests
mkdir -p phi3-vision-128k-instruct/pytorch
cd phi3-vision-128k-instruct/pytorch
huggingface-cli download microsoft/Phi-3-vision-128k-instruct --local-dir .
cd ..
huggingface-cli download microsoft/Phi-3-vision-128k-instruct-onnx --include onnx/* --local-dir .
rm pytorch/config.json
mv onnx/config.json pytorch/

rm pytorch/modeling_phi3_v.py
mv onnx/modeling_phi3_v.py pytorch/

mv onnx/image_embedding_phi3_v_for_onnx.py pytorch/

mv onnx/builder.py .

rm -rf onnx/
