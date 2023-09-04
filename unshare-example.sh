#!/bin/bash
echo "Now do:"
echo "sudo unshare --fork --pid --mount-proc zsh"
echo "pidof zsh"
echo "ps"
echo
echo "In another shell:"
echo "pidof zsh"
echo "ps ax"
echo 'cat /proc/$(pidof zsh)/status'
echo 'cat /proc/$(pidof zsh)/status | grep NSpid'
