.class public final Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BigDataLoggingService.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "action  :  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BigDataLoggingService"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "ACTION_BOOT_COMPLETED"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->-$$Nest$mreceive_boot_completed_intent(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V

    return-void

    :cond_0
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "ACTION_SCREEN_ON"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->-$$Nest$mreceive_screen_on_intent(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V

    return-void

    :cond_1
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "ACTION_SCREEN_OFF"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->-$$Nest$mreceive_screen_off_intent(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V

    return-void

    :cond_2
    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "ACTION_USER_PRESENT"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->-$$Nest$mreceive_user_present_intent(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V

    :cond_3
    return-void
.end method
