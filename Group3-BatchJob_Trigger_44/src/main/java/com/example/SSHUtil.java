package com.example;

import java.io.InputStream;

import com.jcraft.jsch.ChannelExec;

import com.jcraft.jsch.JSch;

import com.jcraft.jsch.Session;

public class SSHUtil {

	public static void executeCommand(String host, String user, String password, String command) throws Exception {

		JSch jsch = new JSch();

		Session session = jsch.getSession(user, host, 22); // 22 is the default SSH port

		session.setPassword(password);

		session.setConfig("StrictHostKeyChecking", "no"); // Disable host key checking for simplicity, but it's
															// recommended to check the host key in a real production
															// scenario.

		session.connect();

		ChannelExec channelExec = (ChannelExec) session.openChannel("exec");

		channelExec.setCommand(command);

		channelExec.setInputStream(null);

		channelExec.setErrStream(System.err);

		InputStream in = channelExec.getInputStream();

		channelExec.connect();

		// Read and process the output if needed

		// For example, you can use a BufferedReader to read the command output line by
		// line.

		channelExec.disconnect();

		session.disconnect();

	}

}
