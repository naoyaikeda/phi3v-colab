rm pytorch/config.json
mv onnx/config.json pytorch/

rm pytorch/modeling_phi3_v.py
mv onnx/modeling_phi3_v.py pytorch/

mv onnx/image_embedding_phi3_v_for_onnx.py pytorch/

mv onnx/builder.py .

rm -rf onnx/

python3 builder.py --input ./pytorch --output ./cuda --precision fp16 --execution_provider cuda
