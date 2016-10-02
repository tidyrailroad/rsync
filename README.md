
An rsync client

# Recommended Usage

1. Mount a volume (read only) in `/root/.ssh` containing your ssh private keys and configuration
2. Mount volume(s) (read only) containing the data you want to send.  It does not really matter where you put them, but `/source` is as good as anything.
3. Append appropriate rsync commands to the `docker run`.

`docker run --interactive --rm --volume /home/me/.ssh:/root/.ssh:ro --volume /home/me/virginia:/source/virginia:ro --volume /home/me/maryland:/source/maryland:ro emorymerryman/rsync:1.0.0 --archive --verbose --delete --progress /source backupserver:/$(date)`

