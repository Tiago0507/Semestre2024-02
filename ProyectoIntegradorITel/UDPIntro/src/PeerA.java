import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.security.spec.RSAOtherPrimeInfo;
import java.util.Scanner;

public class PeerA {
    public static void main(String[] args) throws IOException {
        var socket = new DatagramSocket(6001);
        new Thread(()->{
            try{
                // Recepción
                while(true){
                    var buffer = new byte[1024];
                    var datagram = new DatagramPacket(buffer, buffer.length);
                    System.out.println("Esperando datagrama");
                    socket.receive(datagram); // Línea bloqueante
                    var message = new String(datagram.getData()).trim();
                    System.out.println(message);
                }
            }catch (IOException ex){
                ex.printStackTrace();
            }
        }).start();

        // Envío
        Scanner scanner = new Scanner(System.in);
        while(true){
            var message = scanner.nextLine(); // mensaje::192.168.130.5
            var metadata = message.split("::");
            var datagram = new DatagramPacket(
                    metadata[0].getBytes(),
                    metadata[0].getBytes().length,
                    InetAddress.getByName(metadata[1]),
                    6001
            );
            socket.send(datagram);
        }


    }
}
