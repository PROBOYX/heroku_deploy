FROM ULTRA-OP/ULTRA-X:alpine

#clonning repo 
RUN git clone https://github.com/ULTRA-OP/ULTRA-X.git /root/ULTRA
#working directory 
WORKDIR /root/ULTRA

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/ULTRA/bin:$PATH"

CMD ["python3","-m","ULTRA"]
