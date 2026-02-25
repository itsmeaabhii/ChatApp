import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../models/chat_model.dart';

class MessageBubble extends StatelessWidget {
  final MessageModel message;

  const MessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment:
            message.isSent ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (message.isSent) const Spacer(flex: 1),
          Flexible(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: message.isSent
                    ? AppColors.senderBubble
                    : AppColors.receiverBubble,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(16),
                  topRight: const Radius.circular(16),
                  bottomLeft: message.isSent
                      ? const Radius.circular(16)
                      : const Radius.circular(4),
                  bottomRight: message.isSent
                      ? const Radius.circular(4)
                      : const Radius.circular(16),
                ),
                boxShadow: message.isSent
                    ? null
                    : [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 5,
                          offset: const Offset(0, 2),
                        ),
                      ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    message.message,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.textDark,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        message.time,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: AppColors.textGrey,
                              fontSize: 11,
                            ),
                      ),
                      if (message.isSent) ...[
                        const SizedBox(width: 4),
                        Icon(
                          message.isRead
                              ? Icons.done_all
                              : message.isDelivered
                                  ? Icons.done_all
                                  : Icons.done,
                          size: 14,
                          color: message.isRead
                              ? Colors.blue
                              : AppColors.textGrey,
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ),
          if (!message.isSent) const Spacer(flex: 1),
        ],
      ),
    );
  }
}
