<?php
/**
 * Created by Joseph Daigle.
 * Date: 7/20/18
 * Time: 11:17 PM
 */

namespace WPDeployer\Command;


use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;


/**
 * DeployWordpress.
 *
 * Console command for deploying the Wordpress install.
 *
 * @package WPDeployer\Command
 */
class DeployWordpress extends Command
{
	protected function configure()
	{
		$this->setName('wordpress:deploy')
		     ->setDescription('Deploy the wordpress install.')
		     ->setHelp('This command allows the server to automatically move the wp-config-template.php and .htaccess files into the directory WordPress will be installed in.');
	}

	protected function execute(InputInterface $input, OutputInterface $output)
	{
		// outputs multiple lines to the console (adding "\n" at the end of each line)
		$output->writeln([
			'Deploying WordPress',
			'============',
		]);
	}
}