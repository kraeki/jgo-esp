gen_dir=./generated

all:
	rm -rf ${gen_dir}
	mkdir -p ${gen_dir}

	# Copy alexa
	cp ./jgo-alexa-master.* ${gen_dir}/
	cp ./jgo-alexa-remote.* ${gen_dir}/

	# Copy and replace alexa -> gloria
	sed 's/alexa/gloria/g' ./jgo-alexa-master.script > ${gen_dir}/jgo-gloria.master.script
	sed 's/alexa/gloria/g' ./jgo-alexa-master.config > ${gen_dir}/jgo-gloria.master.config
	sed 's/alexa/gloria/g' ./jgo-alexa-remote.script > ${gen_dir}/jgo-gloria.remote.script
	sed 's/alexa/gloria/g' ./jgo-alexa-remote.config > ${gen_dir}/jgo-gloria.remote.config

	# Copy and replace alexa -> selma
	sed 's/alexa/selma/g' ./jgo-alexa-master.script > ${gen_dir}/jgo-selma.master.script
	sed 's/alexa/selma/g' ./jgo-alexa-master.config > ${gen_dir}/jgo-selma.master.config
	sed 's/alexa/selma/g' ./jgo-alexa-remote.script > ${gen_dir}/jgo-selma.remote.script
	sed 's/alexa/selma/g' ./jgo-alexa-remote.config > ${gen_dir}/jgo-selma.remote.config