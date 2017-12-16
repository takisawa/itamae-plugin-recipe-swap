# frozen_string_literal: true

execute 'Setup swap file' do
  command 'fallocate -l 1G /swapfile; chmod 600 /swapfile; mkswap /swapfile; swapon /swapfile'
  not_if 'swapon | grep ^/swapfile'
end

execute 'Add swap record to /etc/fstab' do
  command 'echo "/swapfile none swap sw 0 0" >> /etc/fstab'
  not_if 'grep ^/swapfile /etc/fstab'
end
