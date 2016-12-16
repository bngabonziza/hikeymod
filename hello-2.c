
/*  
 *  hello-2.c - Demonstrating the module_init() and module_exit() macros.
 *  This is preferred over using init_module() and cleanup_module().
 */
#include <linux/module.h>	/* Needed by all modules */
#include <linux/kernel.h>	/* Needed for KERN_INFO */
#include <linux/init.h>		/* Needed for the macros */
#include <linux/sched.h>


static int __init hello_2_init(void)
{
	printk(KERN_INFO "Hello, world 2\n");
	
	printk(KERN_INFO "offset comm: %d\n", offsetof(struct task_struct, comm));

	printk(KERN_INFO "offset next_task:%d\n",offsetof(struct task_struct, tasks));
	return 0;
}

static void __exit hello_2_exit(void)
{
	printk(KERN_INFO "Goodbye, world 2\n");
}

module_init(hello_2_init);
module_exit(hello_2_exit);
