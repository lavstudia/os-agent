#!/bin/bash
systemctl daemon-reload
systemctl enable saos-agent
systemctl start saos-agent
