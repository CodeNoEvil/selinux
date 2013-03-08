��|�           ��|�   SE Linux Module   
                MysqlNfs_local   1.0.4@                         
                    tcp_socket      name_connect                    dir      rmdir   
   create   	   write      ioctl      remove_name      getattr      add_name      read      search      lock      open                    blk_file      ioctl      read      open                    chr_file      getattr      read                    process      siginh
      noatsecure	      rlimitinh                    file      append      create      write   	   link   
   unlink      ioctl      getattr      setattr      read      rename      lock      open
                    udp_socket      listen                object_r@           @           @                                     @           proc_kcore_t                @           logrotate_t                @           file_t   	             @           console_device_t
                @           corosync_t                @           mysqld_safe_t                @           tty_device_t   
             @           fenced_t                @           mysqld_t                @           fixed_disk_device_t                @           nfsd_t                @           rpcd_t                @           mysqld_port_t                                                           @   @                 @               @   @                 @                               @   @                 @               @   @                 @                     @         @   @                 @               @   @                 @                     o         @   @                 @               @   @                  @                               @   @                 @               @   @          @       @                              @   @                 @               @           @                              @   @                 @               @           @                               @   @          �       @               @   @                 @                               @   @                 @               @   @                 @                               @   @                 @               @   @                 @                               @   @                 @               @   @                 @                     �         @   @                 @               @   @                 @                     �         @   @                 @               @   @                 @                     �         @   @                 @               @   @                 @                     �          @   @                 @               @   @                 @                               @   @                 @               @   @                 @                                    @           @   @                 @           @   @          �      @           @           @           @              @   @                 @   @                 @   @                 @   @                 @   @          �      @   @          �      @   @                 @           @           @           @           @           @           @           @                                                                                      
   tcp_socket            dir            blk_file            chr_file            process            file         
   udp_socket               object_r               proc_kcore_t            logrotate_t            file_t            console_device_t         
   corosync_t            mysqld_safe_t            tty_device_t            fenced_t            mysqld_t            fixed_disk_device_t            nfsd_t            rpcd_t            mysqld_port_t                             ��|�




















































































#
# Directory patterns (dir)
#
# Parameters:
# 1. domain type
# 2. container (directory) type
# 3. directory type
#




























#
# Regular file patterns (file)
#
# Parameters:
# 1. domain type
# 2. container (directory) type
# 3. file type
#






























#
# Symbolic link patterns (lnk_file)
#
# Parameters:
# 1. domain type
# 2. container (directory) type
# 3. file type
#


























#
# (Un)named Pipes/FIFO patterns (fifo_file)
#
# Parameters:
# 1. domain type
# 2. container (directory) type
# 3. file type
#


























#
# (Un)named sockets patterns (sock_file)
#
# Parameters:
# 1. domain type
# 2. container (directory) type
# 3. file type
#
























#
# Block device node patterns (blk_file)
#
# Parameters:
# 1. domain type
# 2. container (directory) type
# 3. file type
#


























#
# Character device node patterns (chr_file)
#
# Parameters:
# 1. domain type
# 2. container (directory) type
# 3. file type
#


























#
# File type_transition patterns
#
# pattern(domain,dirtype,newtype,class(es))
#





#
# unix domain socket patterns
#



########################################
#
# Macros for switching between source policy
# and loadable policy module support
#

##############################
#
# For adding the module statement
#


##############################
#
# For use in interfaces, to optionally insert a require block
#


# helper function, since m4 wont expand macros
# if a line is a comment (#):

##############################
#
# In the future interfaces should be in loadable modules
#
# template(name,rules)
#


##############################
#
# In the future interfaces should be in loadable modules
#
# interface(name,rules)
#




##############################
#
# Optional policy handling
#


##############################
#
# Determine if we should use the default
# tunable value as specified by the policy
# or if the override value should be used
#


##############################
#
# Extract booleans out of an expression.
# This needs to be reworked so expressions
# with parentheses can work.



##############################
#
# Tunable declaration
#


##############################
#
# Tunable policy handling
#


########################################
#
# Helper macros
#

#
# shiftn(num,list...)
#
# shift the list num times
#


#
# ifndef(expr,true_block,false_block)
#
# m4 does not have this.
#


#
# __endline__
#
# dummy macro to insert a newline.  used for 
# errprint, so the close parentheses can be
# indented correctly.
#


########################################
#
# refpolwarn(message)
#
# print a warning message
#


########################################
#
# refpolerr(message)
#
# print an error message.  does not
# make anything fail.
#


########################################
#
# gen_user(username, prefix, role_set, mls_defaultlevel, mls_range, [mcs_categories])
#


########################################
#
# gen_context(context,mls_sensitivity,[mcs_categories])
#

########################################
#
# can_exec(domain,executable)
#


########################################
#
# gen_bool(name,default_value)
#

#
# Specified domain transition patterns
#


# compatibility:




#
# Automatic domain transition patterns
#


# compatibility:




#
# Other process permissions
#



########################################
#
# gen_cats(N)
#
# declares categores c0 to c(N-1)
#




########################################
#
# gen_sens(N)
#
# declares sensitivites s0 to s(N-1) with dominance
# in increasing numeric order with s0 lowest, s(N-1) highest
#






########################################
#
# gen_levels(N,M)
#
# levels from s0 to (N-1) with categories c0 to (M-1)
#




########################################
#
# Basic level names for system low and high
#





########################################
# 
# Support macros for sets of object classes and permissions
#
# This file should only have object class and permission set macros - they
# can only reference object classes and/or permissions.

#
# All directory and file classes
#


#
# All non-directory file classes.
#


#
# Non-device file classes.
#


#
# Device file classes.
#


#
# All socket classes.
#



#
# Datagram socket classes.
# 


#
# Stream socket classes.
#


#
# Unprivileged socket classes (exclude rawip, netlink, packet).
#


#
# Netlink socket classed
#


########################################
# 
# Macros for sets of permissions
#

# 
# Permissions for getting file attributes.
#


# 
# Permissions for executing files.
#


# 
# Permissions for reading files and their attributes.
#


# 
# Permissions for reading and executing files.
#


# 
# Permissions for reading and appending to files.
#


#
# Permissions for linking, unlinking and renaming files.
# 


#
# Permissions for creating lnk_files.
#


# 
# Permissions for reading directories and their attributes.
#


# 
# Permissions for reading and adding names to directories.
#



#
# Permissions to mount and unmount file systems.
#


#
# Permissions for using sockets.
# 


#
# Permissions for creating and using sockets.
# 


#
# Permissions for using stream sockets.
# 


#
# Permissions for creating and using stream sockets.
# 


#
# Permissions for creating and using sockets.
# 


#
# Permissions for creating and using sockets.
# 



#
# Permissions for creating and using netlink sockets.
# 


#
# Permissions for using netlink sockets for operations that modify state.
# 


#
# Permissions for using netlink sockets for operations that observe state.
# 


#
# Permissions for sending all signals.
#


#
# Permissions for sending and receiving network packets.
#


#
# Permissions for using System V IPC
#










########################################
#
# New permission sets
#

#
# Directory (dir)
#















#
# Regular file (file)
#


















#
# Symbolic link (lnk_file)
#














#
# (Un)named Pipes/FIFOs (fifo_file)
#















#
# (Un)named Sockets (sock_file)
#














#
# Block device nodes (blk_file)
#















#
# Character device nodes (chr_file)
#















########################################
#
# Special permission sets
#

#
# Use (read and write) terminals
#



#
# Sockets
#



#
# Keys
#


#
# All 
#






