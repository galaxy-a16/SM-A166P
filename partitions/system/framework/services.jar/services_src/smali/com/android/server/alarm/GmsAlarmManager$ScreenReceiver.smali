.class public Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GmsAlarmManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;-><init>(Lcom/android/server/alarm/GmsAlarmManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputmScreenOn(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmScreenOffChange(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mcancelAlarm(Lcom/android/server/alarm/GmsAlarmManager;)V

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    const-wide/16 v0, 0x2710

    invoke-static {p1, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msendCheckNetWorkDelay(Lcom/android/server/alarm/GmsAlarmManager;J)V

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0, p2}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputmScreenOffChange(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    move-result-object p0

    const-wide/32 p1, 0x36ee80

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p1, p2}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputmScreenOn(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0, p2}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$fputmScreenOffChange(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    :cond_3
    :goto_0
    return-void
.end method
