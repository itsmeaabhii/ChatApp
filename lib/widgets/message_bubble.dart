import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../models/chat_model.dart';

class MessageBubble extends StatelessWidget {
  final MessageModel message;

  const MessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                gradient: message.isSent
                    ? AppGradients.messageBubbleGradient
                    : null,
                color: message.isSent
                    ? null
                    : (isDark ? AppColors.darkReceiverBubble : AppColors.receiverBubble),
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(20),
                  topRight: const Radius.circular(20),
                  bottomLeft: message.isSent
                      ? const Radius.circular(20)
                      : const Radius.circular(4),
                  bottomRight: message.isSent
                      ? const Radius.circular(4)
                      : const Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: message.isSent
                        ? AppColors.primaryPurple.withOpacity(0.3)
                        : Colors.black.withOpacity(isDark ? 0.2 : 0.08),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    message.message,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: message.isSent
                              ? AppColors.white
                              : (isDark ? AppColors.textLight : AppColors.textDark),
                        ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        message.time,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: message.isSent
                                  ? AppColors.white.withOpacity(0.8)
                                  : AppColors.textGrey,
                              fontSize: 10,
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
                              ? const Color(0xFF64B5F6)
                              : AppColors.white.withOpacity(0.8),
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
