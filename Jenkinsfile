node('linux')
{
    stage('Clone_Source_Code'){

        git branch: 'main', url: 'https://github.com/babaknasrollahy/project2_nginxapp.git'

    }

    stage('Build_Image'){

            sh "docker build -t babaknasrolahy/nginxapp:latest ."
            sh "echo babak1380 | sudo -S chmod +x pusher.sh"
            sh "./pusher.sh"
            stash "COPY"
            input message:"would you like to continue??"
    }
}

node('master')
{
    stage('Deploy_nginx_Applicaton'){
        unstash "COPY"
        sh "echo babak13830 | sudo -S su -c 'kubectl create -f nginx-deployment.yaml' babak"
    }


}