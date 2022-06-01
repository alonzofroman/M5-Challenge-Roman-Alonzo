package com.company.gamestoreinvoicing;

import com.company.gamestoreinvoicing.util.Game;
import org.springframework.stereotype.Service;
import org.springframework.amqp.rabbit.annotation.RabbitListener;

@Service
public class MessageListener {

    @RabbitListener(queues = GamestoreInvoicingApplication.GAME_QUEUE_NAME)
    public void receiveGameMessage(Game msg) {
        System.out.println(msg.toString());
    }
    
}
