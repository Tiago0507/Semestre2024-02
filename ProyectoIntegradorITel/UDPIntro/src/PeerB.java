import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;

public class PeerB {
    public static void main(String[] args) throws IOException {
        var socket = new DatagramSocket(6002);
        // Envío
        var message = "Error de capa 8";
        var datagram = new DatagramPacket(
                message.getBytes(),
                message.getBytes().length,
                InetAddress.getByName("192.168.130.64"),
                6001
        );
        socket.send(datagram);
    }
}
