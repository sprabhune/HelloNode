    node {
        def app
    
        stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }
    
        stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */

        app = docker.build("sprabhune/hellonode")
    }

        stage('Test image') {
        /* Ideally, we would run a test framework against our image.
         * For this example, we're using a Volkswagen-type approach ;-) */

        app.inside {
            sh 'echo "Tests passed"'
                    }
        } 
        stage('Push image') {
        // Finally, we'll push the image with two tags:
         //* First, the incremental build number from Jenkins
        // * Second, the 'latest' tag.
        // * Pushing multiple tags is cheap, as all the layers are reused. 
        docker.withRegistry('https://registry.hub.docker.com', 'fa237aef-56e9-4be2-88e4-e84f3464aa7a') {
            app.push("${env.BUILD_NUMBER}")
            app.push("master")
        }

    }
	    stage('Deploy') {
		echo 'Deploying to Staging'
		bash './deploy.sh'
        sh './deploy.sh'
		}
	
    }
