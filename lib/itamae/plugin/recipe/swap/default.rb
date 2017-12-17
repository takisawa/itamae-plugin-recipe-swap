# frozen_string_literal: true

node.reverse_merge!(
  swap: {
    path: '/swapfile',
    size: '512M'
  },
)

swap_path = node[:swap][:path]
swap_size = node[:swap][:size]

execute 'Setup swap file' do
  command "fallocate -l #{swap_size} #{swap_path} && chmod 600 #{swap_path} && mkswap /swapfile; swapon #{swap_path}"
  not_if 'swapon | grep ^/swapfile'
end

execute 'Add swap record to /etc/fstab' do
  command "echo '#{swap_path} none swap sw 0 0' >> /etc/fstab"
  not_if "grep ^#{swap_path} /etc/fstab"
end
