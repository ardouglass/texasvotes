# Texas Votes

Don't know where to vote? Don't know when to vote? Didn't even know there was an election coming up? We're trying to solve these problems. Official websites like [harrisvotes.com](http://www.harrisvotes.com/) provide valuable information to voters, but in many cases they're confusing to navigate and lots of information is stuck in PDF hell. We think we can improve the experience (and if you work on one of these sites, we'd love your help and feedback).

## Contributing and Assisting

Thank you for considering contributing. There are many ways you can help.

  * **Development**: feel free to look at the issues list for things to tackle. For now, most core development will be done as part of the [Sketch City Meetup in Houston](http://www.meetup.com/sketchcity/).
  * **UX/UI**: pitch any useful changes you can think up that could help us make this as accessible and informative as possible.
  * **Community Leadership**: Are you a member of your local League of Women Voters, county party, or even a member of the local election commission? We would love your feedback and also your assistance in identifying and adding upcoming election information to the site.
  * **Translations**: Okay, we aren't really ready for this yet. But let us know if you're willing and able to help translate into languages like Spanish, Vietnamese, Chinese, or Arabic, because here in Texas, [a lot of people speak them](https://www.texastribune.org/2015/11/26/languages-spoken-texas-homes/).
  * **Tell Your Friends**: Want to help, but not like a lot? Just let people know about us so they know when and where to vote.

## Developers

Want to contribute? This will get you going locally. You can either set up your own environment, or just use Vagrant to make it super easy. If you've already used Vagrant and/or Laravel before, you can skip ahead a bit.

### Meta Setup

  1.  If you don't have Vagrant already installed, go get it here: [vagrantup.com/docs/installation](https://www.vagrantup.com/docs/installation/)

  1. Don't have VirtualBox? Go install VirtualBox also: [virtualbox.org](https://www.virtualbox.org/)

### Scary Terminal Commands

  1. Download the Homestead vagrant box.

  ```bash
  vagrant box add laravel/homestead
  ```

  1. Change directories to wherever you want to download this project and run it from.

  1. Clone the project.

  ```bash
  git clone git@github.com:ardouglass/texasvotes.git texasvotes

  # The rest of the commands are run in the project directory
  cd texasvotes/
  ```

  1. Install dependencies.

  ```bash
  composer install
  ```

  1. Generate your ```Homestead.yaml``` file.

  ```bash
  php vendor/bin/homestead make
  ```

  1. Create your ```.env``` file.

  ```bash
  cp .env.example .env
  php artisan key:generate
  ```

  1. Edit your ```/etc/hosts``` file to make this easy to work on. This will let you browse to [texasvotes.dev](http://texasvotes.dev) in your browser to view the project.

  ```bash
  sudo vi /etc/hosts
  ```

  If you don't know what's going on, Type a capital ```G``` and then a lowercase ```o```. This should move your cursor to the end of the file and then append a new line below the bottom line.

  Look at your ```Homestead.yaml``` file, and grab the ip. By default, it will be ```192.168.10.10``` unless you changed it.

  Create a line that looks like ```192.168.10.10 texasvotes.dev``` and then hit ```esc```. Now type ```:x``` and hit enter to save the file out.

  1. Boot up your virtual machine with Vagrant.

  ```bash
  vagrant up
  ```

  1. A couple handy Vagrant commands to show you now. They all require you to be in the same directory you ran ```vagrant up``` in.

  ```bash
  # SSH into the machine
  vagrant ssh

  # Shut down and delete the VM
  vagrant destroy

  # Just pause the VM, but don't delete data
  vagrant halt
  ```

  1. You should be up and running now! Try [texasvotes.dev](http://texasvotes.dev) in your web browser and see if it loads.

## License

Interested in setting this up in your own state, county, city, or whatever? This web application is open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT), so you can do that! If you do, let us know and please feel free to contribute back.
